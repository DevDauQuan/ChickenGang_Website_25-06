USE [master]
GO
/****** Object:  Database [Web_QuanLyBanHang]    Script Date: 11/06/2022 12:06:42 ******/
CREATE DATABASE [Web_QuanLyBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Web_QuanLyBanHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Web_QuanLyBanHang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Web_QuanLyBanHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Web_QuanLyBanHang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Web_QuanLyBanHang] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Web_QuanLyBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Web_QuanLyBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Web_QuanLyBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Web_QuanLyBanHang] SET QUERY_STORE = OFF
GO
USE [Web_QuanLyBanHang]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Web_QuanLyBanHang]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 11/06/2022 12:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](max) NULL,
	[MaThanhVien] [int] NULL,
	[MaSP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonDat]    Script Date: 11/06/2022 12:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonDat](
	[MaChiTietDonDat] [int] IDENTITY(1,1) NOT NULL,
	[MaDDH] [int] NULL,
	[MaSP] [int] NULL,
	[TenSP] [nvarchar](255) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietDonDat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 11/06/2022 12:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaChiTiet] [int] IDENTITY(1,1) NOT NULL,
	[MaPN] [int] NULL,
	[MaSP] [int] NULL,
	[DonGiaNhap] [decimal](18, 0) NULL,
	[SoLuongNhap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 11/06/2022 12:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDDH] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [datetime] NULL,
	[TinhTrangGiaoHang] [bit] NULL,
	[NgayGiao] [datetime] NULL,
	[DaThanhToan] [bit] NULL,
	[MaKH] [int] NULL,
	[UuDai] [int] NULL,
	[DiaChiGiaoHang] [nvarchar](max) NULL,
	[Sdt] [varchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/06/2022 12:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Email] [nvarchar](255) NULL,
	[SoDienThoai] [varchar](11) NULL,
	[MaThanhVien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 11/06/2022 12:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
	[Icon] [nvarchar](max) NULL,
	[BiDanh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThanhVien]    Script Date: 11/06/2022 12:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien](
	[MaLoaiTV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[UuDai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 11/06/2022 12:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[SoDienThoai] [varchar](11) NULL,
	[Fax] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 11/06/2022 12:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](100) NULL,
	[ThongTin] [nvarchar](255) NULL,
	[Logo] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 11/06/2022 12:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [int] NULL,
	[NgayNhap] [datetime] NULL,
	[DaXoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/06/2022 12:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](255) NULL,
	[DonGia] [decimal](18, 0) NULL,
	[NgayCapNhat] [datetime] NULL,
	[Mota] [nvarchar](max) NULL,
	[Mota2] [nvarchar](max) NULL,
	[Mota3] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[SoLuongTon] [int] NULL,
	[LuotXem] [int] NULL,
	[LuotBinhChon] [int] NULL,
	[LuotBinhLuan] [int] NULL,
	[SoLanMua] [int] NULL,
	[Moi] [int] NULL,
	[MaNCC] [int] NULL,
	[MaNSX] [int] NULL,
	[MaLoaiSP] [int] NULL,
	[DaXoa] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 11/06/2022 12:06:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaThanhVien] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](100) NULL,
	[MatKhau] [nvarchar](100) NULL,
	[HoTen] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[Email] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](11) NULL,
	[CauHoi] [nvarchar](max) NULL,
	[CauTraLoi] [nvarchar](max) NULL,
	[MaLoaiTV] [int] NULL,
	[LoaiAccount] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonDat] ON 

INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1, 2, 67, NULL, 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (2, 3, 67, NULL, 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (3, 3, 68, NULL, 1, CAST(68000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (4, 4, 66, NULL, 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (5, 4, 67, N'Combo Gà Rán', 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (6, 5, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (7, 5, 67, N'Combo Gà Quay', 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (8, 6, 67, N'Combo Gà Quay', 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (9, 6, 68, N'Combo Mì Ý', 1, CAST(68000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (10, 7, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (11, 7, 67, N'Combo Gà Quay', 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (12, 8, 66, NULL, 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1023, 1018, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1024, 1019, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1025, 1020, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1026, 1021, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1027, 1022, 69, N'Combo Cơm Gà Rán', 1, CAST(53000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1028, 1023, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1029, 1024, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1030, 1025, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1031, 1026, 66, N'Combo Gà Rán', 2, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1032, 1027, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1033, 1028, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1034, 1029, 69, NULL, 1, CAST(53000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1035, 1030, 66, NULL, 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1036, 1031, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1037, 1031, 67, N'Combo Gà Quay', 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1038, 1032, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1039, 1033, 67, NULL, 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1040, 1034, 66, NULL, 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1041, 1035, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1042, 1037, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1043, 1038, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1044, 1039, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1045, 1040, 67, N'Combo Gà Quay', 2, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1046, 1041, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1047, 1042, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1048, 1043, 67, N'Combo Gà Quay', 2, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1049, 1044, 69, N'Combo Cơm Gà Rán', 1, CAST(53000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1050, 1045, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1051, 1046, 67, N'Combo Gà Quay', 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1052, 1047, 67, N'Combo Gà Quay', 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1053, 1048, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1054, 1049, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1055, 1050, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1056, 1051, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1057, 1052, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1058, 1053, 68, N'Combo Mì Ý', 1, CAST(68000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1059, 1054, 70, N'Combo Burger', 1, CAST(72000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1060, 1055, 71, N'Combo Nhóm 1', 1, CAST(132000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1061, 1056, 68, N'Combo Mì Ý', 1, CAST(68000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1062, 1057, 70, N'Combo Burger', 1, CAST(72000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1063, 1058, 68, N'Combo Mì Ý', 1, CAST(68000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1064, 1059, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1065, 1060, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1066, 1060, 67, N'Combo Gà Quay', 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1067, 1061, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1068, 1062, 67, N'Combo Gà Quay', 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1069, 1063, 67, N'Combo Gà Quay', 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1070, 1064, 67, N'Combo Gà Quay', 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1071, 1065, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1072, 1066, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1073, 1067, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1074, 1068, 67, N'Combo Gà Quay', 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1075, 1069, 71, N'Combo Nhóm 1', 1, CAST(132000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1076, 1070, 68, N'Combo Mì Ý', 1, CAST(68000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1077, 1071, 71, N'Combo Nhóm 1', 1, CAST(132000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1078, 1072, 71, N'Combo Nhóm 1', 1, CAST(132000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1079, 1073, 71, N'Combo Nhóm 1', 1, CAST(132000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1080, 1074, 66, N'Combo Gà Rán', 1, CAST(63000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1081, 1075, 67, N'Combo Gà Quay', 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1082, 1076, 67, N'Combo Gà Quay', 1, CAST(75000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1083, 1077, 70, N'Combo Burger', 1, CAST(72000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDat] ([MaChiTietDonDat], [MaDDH], [MaSP], [TenSP], [SoLuong], [DonGia]) VALUES (1084, 1078, 70, N'Combo Burger', 1, CAST(72000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ChiTietDonDat] OFF
GO
SET IDENTITY_INSERT [dbo].[DonDatHang] ON 

INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (2, CAST(N'2022-04-03T16:46:45.787' AS DateTime), 0, CAST(N'2022-04-10T00:00:00.000' AS DateTime), 0, 1016, NULL, N'123 phạm văn đồng', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (3, CAST(N'2022-04-03T16:53:51.650' AS DateTime), 0, CAST(N'2022-04-10T00:00:00.000' AS DateTime), 0, 1011, NULL, N'123 phạm văn đồng', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (4, CAST(N'2022-04-03T16:57:13.503' AS DateTime), 0, CAST(N'2022-04-12T00:00:00.000' AS DateTime), 0, 1011, NULL, N'123 phạm văn đồng', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (5, CAST(N'2022-04-03T17:01:16.000' AS DateTime), 0, CAST(N'2022-04-09T00:00:00.000' AS DateTime), 0, 1011, NULL, N'123 phạm văn đồng', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (6, CAST(N'2022-04-03T17:03:01.723' AS DateTime), 0, CAST(N'2022-04-10T00:00:00.000' AS DateTime), 0, 5, NULL, N'123 phạm văn đồng', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (7, CAST(N'2022-04-04T12:39:16.353' AS DateTime), 0, CAST(N'2022-04-12T00:00:00.000' AS DateTime), 0, 6, NULL, N'123 phạm văn đồng', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (8, CAST(N'2022-04-04T12:54:13.933' AS DateTime), 0, CAST(N'2022-04-11T00:00:00.000' AS DateTime), 0, 1016, NULL, N'123 phạm văn đồng', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1018, CAST(N'2022-04-12T09:03:12.340' AS DateTime), 0, CAST(N'2022-04-13T00:00:00.000' AS DateTime), 0, 1017, NULL, N'Quận 9', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1019, CAST(N'2022-04-12T12:00:36.907' AS DateTime), 0, CAST(N'2022-04-13T00:00:00.000' AS DateTime), 0, 1018, NULL, N'Đồng Tháp', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1020, CAST(N'2022-04-12T12:48:31.703' AS DateTime), 0, CAST(N'2022-04-13T00:00:00.000' AS DateTime), 0, 1027, NULL, N'ĐT', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1021, CAST(N'2022-04-12T12:50:55.287' AS DateTime), 0, CAST(N'2022-04-13T00:00:00.000' AS DateTime), 0, 1029, NULL, N'ĐT', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1022, CAST(N'2022-04-12T12:54:22.060' AS DateTime), 0, CAST(N'2022-04-13T00:00:00.000' AS DateTime), 0, 1030, NULL, N'ĐT', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1023, CAST(N'2022-04-12T13:01:47.453' AS DateTime), 0, CAST(N'2022-04-13T00:00:00.000' AS DateTime), 0, 1031, NULL, N'ĐT', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1024, CAST(N'2022-04-12T13:03:45.420' AS DateTime), 0, CAST(N'2022-04-13T00:00:00.000' AS DateTime), 0, 1032, NULL, N'ĐT', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1025, CAST(N'2022-04-12T13:05:55.563' AS DateTime), 0, CAST(N'2022-04-13T00:00:00.000' AS DateTime), 0, 1034, NULL, N'ĐT', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1026, CAST(N'2022-04-12T13:09:56.890' AS DateTime), 0, CAST(N'2022-04-13T00:00:00.000' AS DateTime), 0, 1035, NULL, N'ĐT 13:10', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1027, CAST(N'2022-04-12T13:12:15.273' AS DateTime), 0, CAST(N'2022-04-13T00:00:00.000' AS DateTime), 0, 1036, NULL, N'ĐT 13:12', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1028, CAST(N'2022-04-12T13:18:13.307' AS DateTime), 0, CAST(N'2022-04-13T00:00:00.000' AS DateTime), 0, 1037, NULL, N'ĐT 13:18', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1029, CAST(N'2022-04-12T13:21:04.597' AS DateTime), 0, CAST(N'2022-04-13T00:00:00.000' AS DateTime), 0, NULL, NULL, N'PVĐ', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1030, CAST(N'2022-04-12T13:25:59.517' AS DateTime), 0, CAST(N'2022-04-13T00:00:00.000' AS DateTime), 0, NULL, NULL, N'PVĐ', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1031, CAST(N'2022-04-12T13:46:18.780' AS DateTime), 0, CAST(N'2022-04-13T00:00:00.000' AS DateTime), 0, 1043, NULL, N'Thành phố Thủ Đức', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1032, CAST(N'2022-04-12T14:05:40.087' AS DateTime), 0, CAST(N'2022-04-13T00:00:00.000' AS DateTime), 0, 1044, NULL, N'Thủ Đức', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1033, CAST(N'2022-04-12T14:20:42.997' AS DateTime), 0, NULL, 0, NULL, NULL, N'PVĐ', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1034, CAST(N'2022-04-12T14:35:45.920' AS DateTime), 0, CAST(N'2022-04-13T00:00:00.000' AS DateTime), 0, NULL, NULL, N'PVĐ', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1035, CAST(N'2022-04-12T14:43:52.690' AS DateTime), 0, NULL, 0, 1047, NULL, N'Lai Vung, Đồng Tháp', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1037, CAST(N'2022-04-12T14:50:25.560' AS DateTime), 0, CAST(N'2022-04-13T00:00:00.000' AS DateTime), 0, 1048, NULL, N'PVĐ', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1038, CAST(N'2022-04-12T14:56:56.360' AS DateTime), 0, CAST(N'2022-04-13T00:00:00.000' AS DateTime), 0, 1049, NULL, N'PVĐ2', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1039, CAST(N'2022-04-12T15:04:08.857' AS DateTime), 0, CAST(N'2022-04-13T00:00:00.000' AS DateTime), 0, 1050, NULL, N'PVĐ2', N'0999999999')
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1040, CAST(N'2022-04-12T20:54:12.907' AS DateTime), 0, CAST(N'2022-04-13T00:00:00.000' AS DateTime), 0, 1051, NULL, N'PVĐ', N'0949783948')
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1041, CAST(N'2022-04-12T21:30:24.800' AS DateTime), 0, CAST(N'2022-04-13T00:00:00.000' AS DateTime), 0, 1052, NULL, N'PVĐ', N'099999998')
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1042, CAST(N'2022-04-13T09:30:03.903' AS DateTime), 0, CAST(N'2022-04-14T00:00:00.000' AS DateTime), 0, 1053, NULL, N'PVĐ', N'099999998')
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1043, CAST(N'2022-05-30T15:13:12.083' AS DateTime), 0, CAST(N'2022-05-31T00:00:00.000' AS DateTime), 1, 1054, NULL, N'PVĐ', N'0949783948')
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1044, CAST(N'2022-06-08T16:06:58.107' AS DateTime), 0, CAST(N'2022-06-09T00:00:00.000' AS DateTime), 0, 1055, NULL, N'PVĐ', N'099999999')
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1045, CAST(N'2022-06-08T16:10:06.793' AS DateTime), 0, CAST(N'2022-06-09T00:00:00.000' AS DateTime), 0, 1056, NULL, N'PVĐ', N'099999999')
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1046, CAST(N'2022-06-08T19:41:04.840' AS DateTime), 0, CAST(N'2022-06-10T00:00:00.000' AS DateTime), 0, 1057, NULL, N'PVĐ', N'099999999')
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1047, CAST(N'2022-06-08T20:00:58.103' AS DateTime), 0, CAST(N'2022-06-09T00:00:00.000' AS DateTime), 0, 1058, NULL, N'1', N'099999999')
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1048, CAST(N'2022-06-08T20:40:43.307' AS DateTime), 0, CAST(N'2022-06-09T00:00:00.000' AS DateTime), 0, 1059, NULL, N'1', N'099999999')
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1049, CAST(N'2022-06-08T20:41:58.100' AS DateTime), 0, CAST(N'2022-06-09T00:00:00.000' AS DateTime), 0, 1060, NULL, N'1', N'0949783948')
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1050, CAST(N'2022-06-09T20:58:23.980' AS DateTime), 0, CAST(N'2022-06-10T00:00:00.000' AS DateTime), 0, 1061, NULL, N'1', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1051, CAST(N'2022-06-10T12:19:53.030' AS DateTime), 0, CAST(N'2022-06-12T00:00:00.000' AS DateTime), 0, 1062, NULL, N'D20', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1052, CAST(N'2022-06-10T12:45:07.750' AS DateTime), 0, CAST(N'2022-06-12T00:00:00.000' AS DateTime), 0, 1064, NULL, N'D20/534', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1053, CAST(N'2022-06-10T12:52:56.493' AS DateTime), 0, CAST(N'2022-06-11T00:00:00.000' AS DateTime), 0, 1065, NULL, N'1', N'0949783948')
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1054, CAST(N'2022-06-10T13:16:16.883' AS DateTime), 0, CAST(N'2022-06-11T00:00:00.000' AS DateTime), 0, 1066, NULL, N'1', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1055, CAST(N'2022-06-10T13:30:53.637' AS DateTime), 0, CAST(N'2022-06-11T00:00:00.000' AS DateTime), 0, 1067, NULL, N'1', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1056, CAST(N'2022-06-10T13:32:44.457' AS DateTime), 0, CAST(N'2022-06-11T00:00:00.000' AS DateTime), 0, 1068, NULL, N'1', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1057, CAST(N'2022-06-10T13:36:00.790' AS DateTime), 0, CAST(N'2022-06-11T00:00:00.000' AS DateTime), 0, 1069, NULL, N'1', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1058, CAST(N'2022-06-10T13:37:50.837' AS DateTime), 0, CAST(N'2022-06-11T00:00:00.000' AS DateTime), 0, 1070, NULL, N'1', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1059, CAST(N'2022-06-10T13:50:45.923' AS DateTime), 0, CAST(N'2022-06-17T00:00:00.000' AS DateTime), 0, 1071, NULL, N'D20', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1060, CAST(N'2022-06-10T13:59:21.037' AS DateTime), 0, CAST(N'2022-06-25T00:00:00.000' AS DateTime), 0, 1072, NULL, N'D200', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1061, CAST(N'2022-06-10T14:09:41.453' AS DateTime), 0, CAST(N'2022-06-30T00:00:00.000' AS DateTime), 0, 1073, NULL, N'D2000', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1062, CAST(N'2022-06-10T14:14:22.357' AS DateTime), 0, CAST(N'2022-06-24T00:00:00.000' AS DateTime), 0, 1074, NULL, N'D213', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1063, CAST(N'2022-06-10T14:19:32.713' AS DateTime), 0, CAST(N'2022-06-15T00:00:00.000' AS DateTime), 0, 1075, NULL, N'D2sd', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1064, CAST(N'2022-06-10T14:20:19.950' AS DateTime), 0, CAST(N'2022-06-15T00:00:00.000' AS DateTime), 0, 1076, NULL, N'D2sd', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1065, CAST(N'2022-06-10T14:32:02.737' AS DateTime), 0, CAST(N'2022-06-24T00:00:00.000' AS DateTime), 0, 1077, NULL, N'Dsla', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1066, CAST(N'2022-06-10T14:42:36.633' AS DateTime), 0, CAST(N'2022-06-29T00:00:00.000' AS DateTime), 0, 1078, NULL, N'D200', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1067, CAST(N'2022-06-10T15:15:32.430' AS DateTime), 0, CAST(N'2022-06-22T00:00:00.000' AS DateTime), 0, 1079, NULL, N'D200', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1068, CAST(N'2022-06-10T15:48:23.147' AS DateTime), 0, CAST(N'2022-06-11T00:00:00.000' AS DateTime), 0, 1080, NULL, N'1', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1069, CAST(N'2022-06-10T15:54:22.617' AS DateTime), 0, CAST(N'2022-06-11T00:00:00.000' AS DateTime), 0, 1081, NULL, N'1', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1070, CAST(N'2022-06-10T15:56:51.163' AS DateTime), 0, CAST(N'2022-06-11T00:00:00.000' AS DateTime), 0, 1082, NULL, N'1', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1071, CAST(N'2022-06-10T15:59:02.407' AS DateTime), 0, CAST(N'2022-06-11T00:00:00.000' AS DateTime), 0, 1083, NULL, N'1', N'0949783948')
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1072, CAST(N'2022-06-10T16:02:39.027' AS DateTime), 0, CAST(N'2022-06-11T00:00:00.000' AS DateTime), 0, 1084, NULL, N'abc', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1073, CAST(N'2022-06-10T16:06:11.320' AS DateTime), 0, CAST(N'2022-06-11T00:00:00.000' AS DateTime), 0, 1085, NULL, N'1', N'0949783948')
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1074, CAST(N'2022-06-10T16:08:07.783' AS DateTime), 0, CAST(N'2022-06-17T00:00:00.000' AS DateTime), 0, 1086, NULL, N'D23', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1075, CAST(N'2022-06-10T16:13:15.620' AS DateTime), 0, CAST(N'2022-06-24T00:00:00.000' AS DateTime), 0, 1087, NULL, N'D2031', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1076, CAST(N'2022-06-11T11:22:11.473' AS DateTime), 0, CAST(N'2022-06-12T00:00:00.000' AS DateTime), 0, 1088, NULL, N'1', N'0949783948')
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1077, CAST(N'2022-06-11T11:44:15.897' AS DateTime), 0, CAST(N'2022-06-12T00:00:00.000' AS DateTime), 1, 1089, NULL, N'1', N'0949783948')
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DiaChiGiaoHang], [Sdt]) VALUES (1078, CAST(N'2022-06-11T11:57:06.007' AS DateTime), 0, CAST(N'2022-06-12T00:00:00.000' AS DateTime), 0, 1090, NULL, N'1', N'0949783948')
SET IDENTITY_INSERT [dbo].[DonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1, N'phat', N'123 phạm văn đồng', N'khanhtuannguyen2001@gmail.com', N'1234567890', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (2, N'phat1', N'123 phạm văn đồng', N'khanhtuannguyen2001@gmail.com', N'1234567890', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (3, N'phat12', N'123 phạm văn đồng', N'khanhtuannguyen2001@gmail.com', N'1234567890', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (4, N'phat123', N'123 phạm văn đồng', N'khanhtuannguyen2001@gmail.com', N'1234567890', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (5, N'Trần Văn Tiến Phát', N'123 phạm văn đồng', N'khanhtuannguyen2001@gmail.com', N'1234567890', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (6, N'Trần Văn Tiến Phát', N'123 phạm văn đồng', N'khanhtuannguyen2001@gmail.com', N'1234567890', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (7, N'tuan', N'hcm', N'kk', N'12345678', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1007, N'niên', N'123 phạm văn đồng', N'khanhtuannguyen2001@gmail.com', N'1234567890', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1008, N'tuan', N'hcm', N'kk', N'12345678', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1009, N'niên', N'123 phạm văn đồng', N'khanhtuannguyen2001@gmail.com', N'1234567890', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1010, N'tuan', N'hcm', N'kk', N'12345678', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1011, N'Niên', N'Đt', N'ngdnien@gmail.com', N'0933644058', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1012, N'tuan', N'hcm', N'kk', N'12345678', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1014, N'Tuấn', N'PVĐ', N'khanhtuannguyen2001@gmaill.com', N'1234', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1015, N'Tuấn', N'PVĐ', N'khanhtuannguyen2001@gmail.com', N'123', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1016, N'Nguyễn Khánh Tuấn', N'PVĐ', N'khanhtuannguyen2001@gmail.com', N'0999999999', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1017, N'Duy Niên', N'Quận 9', N'ngdnien@gmail.com', N'0949783949', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1018, N'Duy Niên', N'Đồng Tháp', N'ngdnien@gmail.com', N'0949783948', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1019, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1020, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1021, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1022, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1023, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1024, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1025, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1026, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1027, N'Niên', N'ĐT', N'ngdnien@gmail.com', N'11111111', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1029, N'Niên', N'ĐT', N'ngdnien@gmail.com', N'123', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1030, N'Niên', N'ĐT', N'ngdnien@gmail.com', N'123', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1031, N'Niên', N'ĐT', N'ngdnien@gmail.com', N'123456789', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1032, N'Niên', N'ĐT', N'ngdnien@gmail.com', N'0949783948', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1034, N'Niên', N'ĐT', N'ngdnien@gmail.com', N'0949783948', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1035, N'Niên', N'ĐT 13:10', N'ngdnien@gmail.com', N'0949783948', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1036, N'Niên', N'ĐT 13:12', N'ngdnien@gmail.com', N'0949783948', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1037, N'Niên', N'ĐT 13:18', N'ngdnien@gmail.com', N'0949783948', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1038, N'Nguyễn Khánh Tuấn', N'TP.HCM', N'khanhtuannguyen20013@gmail.com', N'0999999999', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1039, N'Nguyễn Khánh Tuấn', N'TP.HCM', N'khanhtuannguyen20013@gmail.com', N'0999999999', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1043, N'Nguyễn Duy Niên', N'Thành phố Thủ Đức', N'ngdnien@gmail.com', N'0949783948', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1044, N'Duy Niên', N'Thủ Đức', N'ngdnien@gmail.com', N'0949783949', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1045, N'Nguyễn Khánh Tuấn', N'TP.HCM', N'khanhtuannguyen20013@gmail.com', N'0999999999', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1046, N'Nguyễn Khánh Tuấn', N'TP.HCM', N'khanhtuannguyen20013@gmail.com', N'0999999999', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1047, N'Niên', N'Lai Vung, Đồng Tháp', N'ngdnien@gmail.com', N'0949783948', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1048, N'Nguyễn Khánh Tuấn', N'TP.HCM', N'khanhtuannguyen20013@gmail.com', N'0999999999', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1049, N'Nguyễn Khánh Tuấn', N'TP.HCM', N'khanhtuannguyen20013@gmail.com', N'0999999999', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1050, N'Nguyễn Khánh Tuấn', N'TP.HCM', N'khanhtuannguyen20013@gmail.com', N'0999999999', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1051, N'Nguyễn Duy Niên', N'Quận 9, Thành phố Hồ Chí Minh', N'ngdnien@gmail.com', N'0949783948', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1052, N'Nguyễn Khánh Tuấn', N'Gò Vấp, TP.HCM', N'khanhtuannguyen2001@gmail.com', N'099999998', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1053, N'Nguyễn Khánh Tuấn', N'Gò Vấp, TP.HCM', N'khanhtuannguyen2001@gmail.com', N'099999998', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1054, N'Nguyễn Duy Niên', N'Quận 9, Thành phố Hồ Chí Minh 2', N'ngdnien@gmail.com', N'0949783948', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1055, N'Nguyễn Khánh Tuấn', N'Gò Vấp, TP.HCM', N'khanhtuannguyen2001@gmail.com', N'099999999', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1056, N'Nguyễn Khánh Tuấn', N'Gò Vấp, TP.HCM', N'khanhtuannguyen2001@gmail.com', N'099999999', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1057, N'Nguyễn Khánh Tuấn', N'Gò Vấp, TP.HCM', N'khanhtuannguyen2001@gmail.com', N'099999999', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1058, N'Nguyễn Khánh Tuấn', N'Gò Vấp, TP.HCM', N'khanhtuannguyen2001@gmail.com', N'099999999', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1059, N'Nguyễn Khánh Tuấn', N'Gò Vấp, TP.HCM', N'khanhtuannguyen2001@gmail.com', N'099999999', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1060, N'Nguyễn Duy Niên', N'Quận 9, Thành phố Hồ Chí Minh 2', N'ngdnien@gmail.com', N'0949783948', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1061, N'Niên  Duy', NULL, N'ngdnien@gmail.com', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1062, N'Tien Phat', N'D20', N'phat1452vn@gmail.com', N'0969620321', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1063, N'Tien Phat', N'D20', N'phat1452vn@gmail.com', N'0969620321', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1064, N'Phat', N'D20/534', N'phat1452vn@gmail.com', N'0969620321', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1065, N'Nguyễn Duy Niên', N'Quận 9, Thành phố Hồ Chí Minh 2', N'ngdnien@gmail.com', N'0949783948', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1066, N'Niên  Duy', NULL, N'ngdnien@gmail.com', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1067, N'Niên  Duy', NULL, N'ngdnien@gmail.com', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1068, N'Niên  Duy', NULL, N'ngdnien@gmail.com', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1069, N'Niên  Duy', NULL, N'ngdnien@gmail.com', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1070, N'Niên  Duy', NULL, N'ngdnien@gmail.com', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1071, N'Phat', N'D20', N'phat1452vn@gmail.com', N'0969620321', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1072, N'Nien', N'D200', N'phat1452vn@gmail.com', N'096920321', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1073, N'Dat', N'D2000', N'phat1452vn@gmail.com', N'093284132', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1074, N'Dat', N'D213', N'phat1452vn@gmail.com', N'0942453256', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1075, N'Tri', N'D2sd', N'phat1452vn@gmail.com', N'0492523423', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1076, N'Tri', N'D2sd', N'phat1452vn@gmail.com', N'0492523423', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1077, N'DD', N'Dsla', N'phat1452vn@gmail.com', N'0932134532', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1078, N'Đ', N'D200', N'phat1452vn@gmail.com', N'093421934', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1079, N'nguthatsu', N'D200', N'phat1452vn@gmail.com', N'0213969623', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1080, N'Niên  Duy', NULL, N'ngdnien@gmail.com', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1081, N'Niên  Duy', NULL, N'ngdnien@gmail.com', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1082, N'7311_Nguyễn Duy Niên', NULL, N'ngdnien@gmail.com', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1083, N'Nguyễn Duy Niên', N'Quận 9, Thành phố Hồ Chí Minh 2', N'ngdnien@gmail.com', N'0949783948', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1084, N'Phatngu', N'abc', N'ngdnien@gmail.côm', N'0917355550', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1085, N'Nguyễn Duy Niên', N'Quận 9, Thành phố Hồ Chí Minh 2', N'ngdnien@gmail.com', N'0949783948', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1086, N'Niengua', N'D23', N'phat1452vn@gmail.com', N'096013231', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1087, N'Datngao', N'D2031', N'phat1452vn@gmail.com', N'0969620321', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1088, N'Nguyễn Duy Niên', N'Quận 9, Thành phố Hồ Chí Minh 2', N'ngdnien@gmail.com', N'0949783948', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1089, N'Nguyễn Duy Niên', N'Quận 9, Thành phố Hồ Chí Minh 2', N'ngdnien@gmail.com', N'0949783948', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1090, N'Nguyễn Duy Niên', N'Quận 9, Thành phố Hồ Chí Minh 2', N'ngdnien@gmail.com', N'0949783948', NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (1, N'Combo 1 Người', NULL, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (2, N'Combo Nhóm', NULL, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (3, N'Gà Rán - Quay', NULL, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (4, N'Cơm - Burger - Mì Ý', NULL, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (5, N'Thức Ăn Nhẹ - Món Thêm', NULL, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (6, N'Tráng Miệng - Thức Uống', NULL, NULL)
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiThanhVien] ON 

INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (1, N'vip', NULL)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (2, N'thuong', NULL)
SET IDENTITY_INSERT [dbo].[LoaiThanhVien] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (1, N'tuan', N'hcm', NULL, NULL, NULL)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (2, N'nien', N'hcm', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (1, N'tuan', NULL, NULL)
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (66, N'Combo Gà Rán', CAST(63000 AS Decimal(18, 0)), NULL, N'2 Miếng Gà Giòn Cay / 2 Miếng Gà Giòn Không Cay / 2 Miếng Gà Truyền', N'1 Pepsi Lon', NULL, N'Content/images/KFC/garan1.png', 20, 2, 10, 10, 12, 0, 1, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (67, N'Combo Gà Quay', CAST(75000 AS Decimal(18, 0)), NULL, N'1 Miếng Đùi Gà Quay Giấy Bạc / 1 Miếng Đùi Gà Quay Tiêu', N'1 Cơm Trắng', N'1 Pepsi Lon', N'Content/images/KFC/gaquay1.png', 19, 2, 10, 10, 12, 0, 1, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (68, N'Combo Mì Ý', CAST(68000 AS Decimal(18, 0)), NULL, N'1 Mì Ý Xốt Cà Gà Viên', N'1 Miếng Gà Giòn Cay / 1 Miếng Gà Giòn Không Cay / 1 Miếng Gà Truyền Thống / 2 Xiên Gà Tenderods', N'1 Pepsi Lon', N'Content/images/KFC/miy1.png', 14, 2, 10, 10, 12, 0, 1, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (69, N'Combo Cơm Gà Rán', CAST(53000 AS Decimal(18, 0)), NULL, N'1 Cơm Gà Giòn Cay / 1 Cơm Gà Giòn Không Cay / 1 Cơm Gà Truyền', N'1 Súp Rong Biển', N'1 Pepsi Lon', N'Content/images//KFC/comga1.png', 17, 2, 10, 10, 10, 0, 1, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (70, N'Combo Burger', CAST(72000 AS Decimal(18, 0)), NULL, N'1 Burger Zinger / 1 Burger Tôm / 1 Burger Gà Quay Flava', N'1 Miếng Gà Giòn Cay / 1 Miếng Gà Giòn Không Cay / 1 Miếng Gà Truyền Thống', N'1 Pepsi Lon', N'Content/images/KFC/burger1.png', 16, 2, 10, 10, 10, 0, 1, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (71, N'Combo Nhóm 1', CAST(132000 AS Decimal(18, 0)), NULL, N'3 Miếng Gà Giòn Cay / 3 Miếng Gà Giòn Không Cay / 3 Miếng Gà Truyền Thống', N'1 Burger Zinger / 1 Burger Tôm / 1 Burger Gà Quay Flava', N'2 Pepsi Lon', N'Content/images/KFC/combo1.png', 15, 2, 10, 10, 10, 0, 1, 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (72, N'Combo Nhóm 2', CAST(146000 AS Decimal(18, 0)), NULL, N'4 Miếng Gà Giòn Cay / 4 Miếng Gà Giòn Không Cay / 4 Miếng Gà Truyền thống', N'2 Thanh Bí Phô-mai', N'2 Pepsi Lon', N'Content/images/KFC/combo2.png', 20, 2, 10, 10, 10, 0, 1, 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (73, N'Combo Nhóm 3', CAST(175000 AS Decimal(18, 0)), NULL, N'5 Miếng Gà Giòn Cay / 5 Miếng Gà Giòn Không Cay / 5 Miếng Gà Truyền Thống', N'1 Popcorn (Vừa) / 2 Xiên Gà Tenderods', N'3 Pepsi Lon', N'Content/images/KFC/combo3.png', 20, 2, 10, 10, 10, 0, 1, 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (74, N'Combo Gia Đình', CAST(272000 AS Decimal(18, 0)), NULL, N'5 Miếng Gà Giòn Cay / 5 Miếng Gà Giòn Không Cay / 5 Miếng Gà Truyền Thống', N'2 Burger Zinger / 2 Burger Tôm / 1 Mì Ý Xốt Cà Gà Viên', N'4 Pepsi Lon', N'Content/images/KFC/combogiadinh.png', 20, 2, 10, 10, 10, 0, 1, 1, 2, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (75, N'Gà Rán ( 1 Miếng )', CAST(35000 AS Decimal(18, 0)), NULL, N'1 Miếng Gà Giòn Cay / 1 Miếng Gà Giòn Không Cay / 1 Miếng Gà Truyền Thống', NULL, NULL, N'Content/images/KFC/le_ga1mieng.png', 20, 2, 10, 10, 10, 0, 1, 1, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (76, N'Gà Rán ( 2 Miếng )', CAST(68000 AS Decimal(18, 0)), NULL, N'2 Miếng Gà Giòn Cay / 2 Miếng Gà Giòn Không Cay / 2 Miếng Gà Truyền thống', NULL, NULL, N'Content/images/KFC/le_ga2mieng.png', 20, 2, 10, 10, 10, 0, 1, 1, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (77, N'Gà Rán ( 3 Miếng )', CAST(101000 AS Decimal(18, 0)), NULL, N'3 Miếng Gà Giòn Cay / 3 Miếng Gà Truyền Thống / 3 Miếng Gà Giòn Không Cay', NULL, NULL, N'Content/images/KFC/le_ga3mieng.png', 20, 2, 10, 10, 10, 0, 1, 1, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (78, N'Gà Rán ( 6 Miếng )', CAST(195000 AS Decimal(18, 0)), NULL, N'6 Miếng Gà Giòn Cay / 6 Miếng Gà Truyền thống / 6 Miếng Gà Giòn Không Cay', NULL, NULL, N'Content/images/KFC/le_ga6mieng.png', 20, 2, 10, 10, 10, 0, 1, 1, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (79, N'Đùi Gà Quay ( 1 Miếng )', CAST(67000 AS Decimal(18, 0)), NULL, N'1 Miếng Đùi Gà Quay Giấy Bạc / 1 Miếng Đùi Gà Quay Tiêu', NULL, NULL, N'Content/images/KFC/le_gaquay1mieng.png', 20, 2, 10, 10, 10, 0, 1, 1, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (80, N'Phi-lê Gà Quay ( 1 Miếng )', CAST(35000 AS Decimal(18, 0)), NULL, N'1 Miếng Phi-lê Gà Quay Flava / 1 Miếng Phi-lê Gà Quay Tiêu', NULL, NULL, N'Content/images/KFC/le_philegaquay1mieng.png', 20, 2, 10, 10, 10, 0, 1, 1, 3, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (81, N'Cơm Gà Rán ( 1 Phần )', CAST(42000 AS Decimal(18, 0)), NULL, N'Cơm Gà Giòn Cay (1 Phần) / Cơm Gà Giòn Không Cay (1 Phần) / Cơm Gà Truyền Thống (1 Phần)', NULL, NULL, N'Content/images/KFC/le_comga1phan.png', 20, 2, 10, 110, 10, 0, 1, 1, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (82, N'Cơm Gà Bít-tết ( 1 Phần )', CAST(42000 AS Decimal(18, 0)), NULL, N'Cơm Gà Bít-tết (1 Phần)', NULL, NULL, N'Content/images/KFC/le_comgabittet.png', 20, 2, 10, 10, 10, 0, 1, 1, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (83, N'Gà Bít-tết với Khoai tây chiên', CAST(42000 AS Decimal(18, 0)), NULL, N'Gà Bít-tết với Khoai tây chiên (1 Phần)', NULL, NULL, N'Content/images/KFC/le_gabitet_khoaitaychien.png', 20, 2, 21, 10, 10, 0, 1, 1, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (84, N'Cơm Phi Lê Gà Quay ( 1 Phần )', CAST(42000 AS Decimal(18, 0)), NULL, N'Cơm Phi Lê Gà Quay Flava (1 Phần) / Cơm Phi Lê Gà Quay Tiêu (1 Phần)', NULL, NULL, N'Content/images/KFC/le_comphilegaquay.png', 20, 2, 10, 10, 10, 0, 1, 1, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (85, N'Cơm Phi Lê Gà Giòn ( 1 Phần )', CAST(42000 AS Decimal(18, 0)), NULL, N'Cơm Phi Lê Gà Giòn (1 Phần)', NULL, NULL, N'Content/images/KFC/le_comphilegagion.png', 20, 2, 10, 10, 10, 0, 1, 1, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (86, N'Cơm Gà Xiên Que (1 Phần)', CAST(42000 AS Decimal(18, 0)), NULL, N'Cơm Gà Xiên Que (1 Phần)', NULL, NULL, N'Content/images/KFC/le_comxienqua.png', 20, 2, 10, 10, 10, 0, 1, 1, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (87, N'Burger Tôm (1 Phần)', CAST(41000 AS Decimal(18, 0)), NULL, N'Burger Tôm (1 Phần)', NULL, NULL, N'Content/images/KFC/le_burgertom.png', 20, 2, 10, 10, 10, 0, 1, 1, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (88, N'Burger Gà Quay Flava (1 Phần)', CAST(47000 AS Decimal(18, 0)), NULL, N'Burger Gà Quay Flava (1 Phần)', NULL, NULL, N'Content/images/KFC/le_burgergaquay.png', 20, 2, 10, 10, 10, 0, 1, 1, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (89, N'Burger Zinger (1 Phần)', CAST(50000 AS Decimal(18, 0)), NULL, N'Burger Zinger (1 Phần)', NULL, NULL, N'Content/images/KFC/le_burgerzinger.png', 20, 2, 10, 10, 10, 0, 1, 1, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (90, N'Mì Ý Xốt Cà Gà Viên (1 Phần)', CAST(37000 AS Decimal(18, 0)), NULL, N'Mì Ý Xốt Cà Gà Viên (1 Phần)', NULL, NULL, N'Content/images/KFC/le_miysotca.png', 20, 2, 10, 10, 10, 0, 1, 1, 4, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (91, N'Hot Wings (3 Miếng)', CAST(48000 AS Decimal(18, 0)), NULL, N'Cánh Gà Chiên Giòn 3 miếng Siêu to', NULL, NULL, N'Content/images/KFC/le_hotwings3.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (92, N'Hot Wings (5 Miếng)', CAST(75000 AS Decimal(18, 0)), NULL, N'Cánh Gà Chiên Giòn 5 miếng Siêu to', NULL, NULL, N'Content/images/KFC/le_hotwings5.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (93, N'Gà Popcorn (Vừa) (1 phần)', CAST(36000 AS Decimal(18, 0)), NULL, N'Sụn Gà Chiên Giòn Đặc Biệt Đã (Size Vừa)', NULL, NULL, N'Content/images/KFC/le_gapopcornM.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (94, N'Gà Popcorn (Lớn) (1 Phần)', CAST(58000 AS Decimal(18, 0)), NULL, N'Sụn Gà Chiên Giòn Đặc Biệt Đã (Size Lớn)', NULL, NULL, N'Content/images/KFC/le_gapopcornL.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (95, N'Phô mai viên (4 viên)', CAST(30000 AS Decimal(18, 0)), NULL, N'Phô Mai 4 Viên Béo Ngậy Giòn Tan', NULL, NULL, N'Content/images/KFC/le_phomaivien4.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (96, N'Phô mai viên (6 viên)', CAST(41000 AS Decimal(18, 0)), NULL, N'Phô Mai 6 Viên Béo Ngậy Giòn Tan', NULL, NULL, N'Content/images/KFC/le_phomaivien6.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (97, N'Cá Thanh (3 Thanh)', CAST(40000 AS Decimal(18, 0)), NULL, N'Cá Thanh 3 Miếng Chiên Giòn', NULL, NULL, N'Content/images/KFC/le_cathanh3.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (98, N'Gà Xiên Que (2 Thanh)', CAST(33000 AS Decimal(18, 0)), NULL, N'Gà Xiên Que 2 Thanh Siêu Cay', NULL, NULL, N'Content/images/KFC/le_gaxienque2.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (99, N'Khoai Tây Chiên (Vừa)', CAST(17000 AS Decimal(18, 0)), NULL, N'Khoai Tây Chiên Size Vừa', NULL, NULL, N'Content/images/KFC/le_khoaitaychienM.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (100, N'Khoai Tây Chiên (Lớn)', CAST(28000 AS Decimal(18, 0)), NULL, N'Khoai Tây Chiên Size  Lớn', NULL, NULL, N'Content/images/KFC/le_khoaitaychienL.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (101, N'Khoai Tây Chiên (Đại)', CAST(38000 AS Decimal(18, 0)), NULL, N'Khoai Tây Chiên Size Siêu To Khổng Lồ', NULL, NULL, N'Content/images/KFC/le_khoaitaychienXL.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (102, N'Bắp cải trộn (Vừa)', CAST(12000 AS Decimal(18, 0)), NULL, N'Bắp Cải Trộn Size Vừa', NULL, NULL, N'Content/images/KFC/le_bapcaitronM.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (103, N'Bắp cải trộn (Lớn)', CAST(22000 AS Decimal(18, 0)), NULL, N'Bắp Cải Trộn Size Lớn', NULL, NULL, N'Content/images/KFC/bapcaitronL.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (104, N'Bắp Cải Trộn (Đại)', CAST(31000 AS Decimal(18, 0)), NULL, N'Bắp Cải Trộn Size Siêu To Khổng Lồ', NULL, NULL, N'Content/images/KFC/bapcaitronXL.png', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (105, N'Cơm Trắng', CAST(10000 AS Decimal(18, 0)), NULL, N'Cơm Trắng ( Suất Thêm )', NULL, NULL, N'Content/images/KFC/le_comtrang.jpg', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (106, N'Súp rong biển (1 phần)', CAST(14000 AS Decimal(18, 0)), NULL, N'Súp Rong Biển Cá Viên', NULL, NULL, N'Content/images/KFC/le_suprongbien.jpg', 20, 2, 10, 10, 10, 0, 1, 1, 5, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (107, N'Bánh Trứng (1 cái)', CAST(17000 AS Decimal(18, 0)), NULL, N'Bánh Trứng Siêu Ngon Siêu Bổ Dưỡng', N'1 Cái', NULL, N'Content/images/KFC/bonus_banhtrung1.png', 20, 2, 10, 10, 10, 1, 1, 1, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (108, N'Bánh Trứng (4 Cái)', CAST(54000 AS Decimal(18, 0)), NULL, N'Bánh Trứng Siêu Ngon Siêu Bổ Dưỡng', N'4 Cái', NULL, N'Content/images/KFC/bonus_banhtrung4.png', 20, 2, 10, 10, 10, 1, 1, 1, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (109, N'Thanh Bí Phô-mai (2 Thanh)', CAST(26000 AS Decimal(18, 0)), NULL, N'Thanh Bí Phô-Mai Chiên Giòn', N'2 Thanh', NULL, N'Content/images/KFC/bonus_thanhbi2.png', 20, 2, 10, 10, 10, 1, 1, 1, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (110, N'Thanh Bí Phô-mai (3 Thanh)', CAST(35000 AS Decimal(18, 0)), NULL, N'Thanh Bí Phô-Mai Chiên Giòn', N'3 Thanh', NULL, N'Content/images/KFC/bonus_thanhbi3.png', 20, 2, 10, 10, 10, 1, 1, 1, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (111, N'Thanh Bí Phô-mai (5 Thanh)', CAST(55000 AS Decimal(18, 0)), NULL, N'Thanh Bí Phô-Mai Chiên Giòn', N'5 Thanh', NULL, N'Content/images/KFC/bonus_thanhbi5.png', 20, 2, 10, 10, 10, 1, 1, 1, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (112, N'Pepsi Vị Chanh Không Calo Lon', CAST(17000 AS Decimal(18, 0)), NULL, N'Pepsi Vị Chanh Không Calo Lon', NULL, NULL, N'Content/images/KFC/le_pepsivichanh.png', 20, 2, 10, 10, 10, 1, 1, 1, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (113, N'Pepsi Lon', CAST(17000 AS Decimal(18, 0)), NULL, N'Pepsi Lon Thường', NULL, NULL, N'Content/images/KFC/le_pepsilon.png', 20, 2, 10, 10, 10, 0, 1, 1, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (114, N'7Up Lon', CAST(17000 AS Decimal(18, 0)), NULL, N'SevenUp Lon Thường', NULL, NULL, N'Content/images/KFC/le_7uplon.png', 210, 2, 10, 10, 10, 0, 1, 1, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (115, N'Aquafina', CAST(15000 AS Decimal(18, 0)), NULL, N'Nước Suối Aquafina', NULL, NULL, N'Content/images/KFC/le_aquafina.png', 20, 2, 10, 10, 10, 0, 1, 1, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (116, N'Trà đào', CAST(24000 AS Decimal(18, 0)), NULL, N'Trà Đào Siêu Tươi Mát', NULL, NULL, N'Content/images/KFC/le_tradao.png', 20, 2, 10, 10, 10, 0, 1, 1, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (117, N'BÁNH TRỨNG SÔ-CÔ-LA HẠNH NHÂN (1 CÁI)', CAST(19000 AS Decimal(18, 0)), NULL, N'1 Bánh Trứng Sô-Cô-La Hạnh Nhân', NULL, NULL, N'Content/images/KFC/monmoi1.jpg', 20, 2, 10, 10, 10, 1, 1, 1, 6, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [Mota], [Mota2], [Mota3], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (118, N'BÁNH TRỨNG SÔ-CÔ-LA HẠNH NHÂN (4 CÁI)', CAST(61000 AS Decimal(18, 0)), NULL, N'4 Bánh Trứng Sô-Cô-La Hạnh Nhân', NULL, NULL, N'Content/images/KFC/monmoi2.jpg', 20, 2, 10, 10, 10, 1, 1, 1, 6, NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[ThanhVien] ON 

INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV], [LoaiAccount]) VALUES (3, N'admin', N'c4ca4238a0b923820dcc509a6f75849b', N'Admin', NULL, N'ChickenGang651@gmail.com', NULL, NULL, NULL, NULL, N'1')
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV], [LoaiAccount]) VALUES (9, N'khanhtuan1233', N'592cc9d4921c385b6c0764b80e86ad0b', N'Nguyễn Khánh Tuấn', N'Gò Vấp, TP.HCM', N'khanhtuannguyen2001@gmail.com', N'099999999', N'Không có', N'Không có', 1, NULL)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV], [LoaiAccount]) VALUES (11, N'tvpt2001', N'f0830d5f8d0867415a52a8c3648d616b', N'Trần Văn Tiến Phát', N'Bình Chánh, Tp. HCM', N'phat1452vn@gmail.com', N'0999999999', N'Không có', N'Không có', 1, NULL)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV], [LoaiAccount]) VALUES (13, N'ngdnien', N'fed127bc1bca854619c1858a93993da1', N'Nguyễn Duy Niên', N'Quận 9, Thành phố Hồ Chí Minh 2', N'ngdnien@gmail.com', N'0949783948', N'Không có', N'Không có', 1, NULL)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV], [LoaiAccount]) VALUES (14, N'ngdnien@gmail.com', NULL, N'Niên  Duy', N'', N'ngdnien@gmail.com', N'', N'', N'', 1, N'1')
SET IDENTITY_INSERT [dbo].[ThanhVien] OFF
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDonDat]  WITH CHECK ADD FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DonDatHang] ([MaDDH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDonDat]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[ThanhVien]  WITH CHECK ADD FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LoaiThanhVien] ([MaLoaiTV])
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [Web_QuanLyBanHang] SET  READ_WRITE 
GO
