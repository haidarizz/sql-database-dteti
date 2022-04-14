-- Muhammad Haidar Izzuddin
-- 20/460554/TK/51143
-- Physical Normalized Database

-- create table
CREATE TABLE Departemen (
    ID_Dept INTEGER PRIMARY KEY,
    NamaDept VARCHAR(100) NOT NULL
);

CREATE TABLE Tendik (
    NIP INTEGER PRIMARY KEY,
    Nama VARCHAR(100) NOT NULL,
    Alamat VARCHAR(200) NOT NULL,
    NoTelepon VARCHAR(15) NOT NULL,
    ID_Dept INTEGER NOT NULL,
    FOREIGN KEY (ID_Dept) REFERENCES Departemen(ID_Dept)
);

CREATE TABLE Dosen (
    NIP INTEGER PRIMARY KEY,
    Nama VARCHAR(100) NOT NULL,
    Alamat VARCHAR(200) NOT NULL,
    NoTelepon VARCHAR(15) NOT NULL,
    ID_Dept INTEGER NOT NULL,
    FOREIGN KEY (ID_Dept) REFERENCES Departemen(ID_Dept)
);

CREATE TABLE Mahasiswa (
    NIM VARCHAR(20) PRIMARY KEY,
    Nama VARCHAR(100) NOT NULL,
    TempatLahir VARCHAR(100) NOT NULL,
    TanggalLahir DATE NOT NULL,
    Alamat VARCHAR(200) NOT NULL,
    NoTelepon VARCHAR(15) NOT NULL,
    Prodi VARCHAR(50) NOT NULL,
    NIP INTEGER NOT NULL,
    FOREIGN KEY (NIP) REFERENCES Dosen(NIP)
);

CREATE TABLE MataKuliah (
    KodeMatkul VARCHAR(20) PRIMARY KEY,
    NamaMatkul VARCHAR(50) NOT NULL,
    Nilai CHAR NOT NULL,
    SKS INTEGER NOT NULL,
    Prasyarat VARCHAR(200) NOT NULL,
    NIP INTEGER NOT NULL,
    NIM VARCHAR(20) NOT NULL,
    ID_Dept INTEGER NOT NULL,
    FOREIGN KEY (NIP) REFERENCES Dosen(NIP),
    FOREIGN KEY (NIM) REFERENCES Mahasiswa(NIM),
    FOREIGN KEY (ID_Dept) REFERENCES Departemen(ID_Dept)
);

-- insert some values
INSERT INTO Departemen VALUES (1, 'DTETI');

INSERT INTO Tendik VALUES (1, 'Sugeng Efendi', 'Jalan Kaliurang', '081234567890', 1);
INSERT INTO Tendik VALUES (2, 'Budi Hartanto', 'Jalan Gejayan', '081345678902', 1);

INSERT INTO Dosen VALUES(1, 'Anita Maheswari', 'Tangerang Selatan', '0814298329908', 1);
INSERT INTO Dosen VALUES(2, 'Sri Budi Utami', 'Jakarta Selatan', '0815228426918', 1);
INSERT INTO Dosen VALUES(3, 'Muhammad Tahir', 'Maguwoharjo', '0825238566918', 1);
INSERT INTO Dosen VALUES(4, 'Kristian Aditya Soekarnoputra', 'Banguntapan', '081523542118', 1);

INSERT INTO Mahasiswa VALUES('20/460554/TK/51143', 'Muhammad Haidar Izzuddin', 'Boyolali', 2003-10-01, 'Boyolali', '081452034898', 'Teknologi Informasi', 1);
INSERT INTO Mahasiswa VALUES('20/460555/TK/51144', 'Muhammad Iqbal Masykuri', 'Sragen', 2002-11-30, 'Sragen', '081422356818', 'Teknologi Informasi', 2);
INSERT INTO Mahasiswa VALUES('20/463592/TK/51584', 'Ananta Pridya Yudha', 'Bungo', 2002-08-20, 'Sragen', '081220345818', 'Teknologi Informasi', 3);

INSERT INTO MataKuliah VALUES('TKU1234', 'Aljabar Linear', 'A', 3, 'Persamaan Diferensial', 1, '20/460554/TK/51143', 1);
INSERT INTO MataKuliah VALUES('TKU2345', 'Teori Vektor dan Matriks', 'A', 3, 'Persamaan Diferensial', 3, '20/460555/TK/51144', 1);

-- show table
SELECT * FROM Departemen;
SELECT * FROM Tendik;
SELECT * FROM Dosen;
SELECT * FROM Mahasiswa;
SELECT * FROM MataKuliah;