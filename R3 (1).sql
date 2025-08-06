create database BMYC
use BMYC
CREATE TABLE Giaovien (
    Magiaovien CHAR(10) PRIMARY KEY Not Null ,
    TenGiaovien VARCHAR(50) NOT NULL,
    Ngaysinh DATE NOT NULL,
	Diachi varchar (50) not null,
    Email VARCHAR(50) UNIQUE NOT NULL,
    Sdt CHAR(10) NOT NULL,
);
CREATE TABLE Lophoc (
    Malophoc CHAR(10) PRIMARY KEY Not Null ,
    Tenlophoc VARCHAR(30) NOT NULL,
    Khunggioday TIME NOT NULL,
	Magiaovien CHAR(10) Not Null ,
    FOREIGN KEY (Magiaovien) REFERENCES Giaovien(Magiaovien),
);
CREATE TABLE Khoahoc (
    Makhoahoc CHAR(10) PRIMARY KEY Not Null,
    Tenkhoahoc VARCHAR(50) NOT NULL,
	Thoigianbatdau Date Not Null, 
	Thoigiankethuc Date Not Null,
	Magiaovien CHAR(10) Not Null ,
    FOREIGN KEY (Magiaovien) REFERENCES Giaovien(Magiaovien)
);
CREATE TABLE Lichday (
    Madangkilichday CHAR(10) PRIMARY KEY Not Null,
	Thoigiandangki date not null ,
	Khunggiohoc datetime not null,
	Magiaovien CHAR(10) Not Null  ,
    Makhoahoc CHAR(10) Not Null,
    Malophoc CHAR(10) Not Null ,
    FOREIGN KEY (Makhoahoc) REFERENCES Khoahoc(Makhoahoc),
    FOREIGN KEY (Malophoc) REFERENCES Lophoc(Malophoc),
	FOREIGN KEY (Magiaovien) REFERENCES Giaovien(Magiaovien)
);
CREATE TABLE Phieuxinnghi (
    Maphieuxinnghi CHAR(10) PRIMARY KEY Not Null,
    Magiaovien CHAR(10) Not Null ,
    Lydoxinnghi Varchar(100) NOT NULL,
	Thoigiannghi date not null ,
	Malophoc char(10) not null, 
	FOREIGN KEY (Malophoc ) REFERENCES Lophoc(Malophoc),
	FOREIGN KEY (Magiaovien) REFERENCES Giaovien(Magiaovien)
);
CREATE TABLE Luong (
    Maluong CHAR(10) PRIMARY KEY Not Null ,
    Magiaovien CHAR(10) Not Null,
    Luongcoban Varchar(20) NOT NULL,
    Motaluong Varchar(50) NOT NULL,
	Hesoluong decimal (10,2) Not Null ,
    FOREIGN KEY (Magiaovien) REFERENCES Giaovien(Magiaovien),
);
CREATE TABLE Taikhoan (
    Mataikhoan CHAR(10) PRIMARY KEY Not Null,
    Tentaikhoan VARCHAR(50) NOT NULL,
    Matkhau VARCHAR(30) NOT NULL,
	Magiaovien char (10) not null,
	FOREIGN KEY (Magiaovien) REFERENCES Giaovien(Magiaovien)
);
CREATE TABLE Bangcap (
    Mabangcap CHAR(10) PRIMARY KEY Not Null ,
    Tenbangcap VARCHAR(50) NOT NULL,
	Magiaovien CHAR (10) not null,
	Ngaycap Date Not Null , 
	FOREIGN KEY (Magiaovien) REFERENCES Giaovien(Magiaovien)
);

