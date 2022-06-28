CREATE DATABASE SinhVien
GO
CREATE TABLE SV(
	MaSV nvarchar(10) PRIMARY KEY,
	TenSV nvarchar(30) NOT NULL,
	Que nvarchar(50) NOT NULL
)

CREATE TABLE Mon(
	MaMH nvarchar(10) PRIMARY KEY,
	TenMH nvarchar(30) NOT NULL,
	SoTC int NOT NULL CHECK(SoTC >= 2 AND SoTC <= 5)
)
CREATE TABLE KQ(
	MaSV nvarchar(10) NOT NULL,
	MaMH nvarchar(20) NOT NULL,
	Diem decimal(3,2) NOT NULL CHECK(Diem >= 0 AND Diem <= 10),
	CONSTRAINT pk_KQ PRIMARY KEY (MaSV, MaMH)
)
INSERT INTO SV VALUES('MSV01', 'Tran Van A', 'Ninh Binh')
INSERT INTO SV VALUES('MSV02', 'Tran Van B', 'Ha Noi')
INSERT INTO SV VALUES('MSV03', 'Tran Van C', 'Ha Nam')

INSERT INTO Mon VALUES('MH01', 'Mon hoc 1', 3)
INSERT INTO Mon VALUES('MH02', 'Mon hoc 2', 4)
INSERT INTO Mon VALUES('MH03', 'Mon hoc 3', 5)

INSERT INTO KQ VALUES('MSV01', 'MH01', 5.0)
INSERT INTO KQ VALUES('MSV02', 'MH02', 6.0)
INSERT INTO KQ VALUES('MSV03', 'MH03', 7.0)
INSERT INTO KQ VALUES('MSV04', 'MH04', 8.0)
INSERT INTO KQ VALUES('MSV05', 'MH05', 9.0)
INSERT INTO KQ VALUES('MSV06', 'MH06', 3.0)

SELECT * FROM SV

SELECT * FROM Mon

SELECT * FROM KQ