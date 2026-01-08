
CREATE DATABASE WDFBanKinhMat
USE WDFBanKinhMat

/****** Object:  Table [dbo].[ChatLieu] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatLieu](
	[MaCL] [int] NOT NULL,
	[TenCL] [nvarchar](20) NOT NULL,
 CONSTRAINT [pk_ChatLieu] PRIMARY KEY CLUSTERED 
(
	[MaCL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HinhDangMat]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhDangMat](
	[MaDangMat] [int] NOT NULL,
	[TenDangMat] [nvarchar](20) NOT NULL,
 CONSTRAINT [pk_HinhDangMat] PRIMARY KEY CLUSTERED 
(
	[MaDangMat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiKinh] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoai] [int] NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[ChiTietHDB]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDB](
	[SoHDB] [nvarchar](30) NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
	[GiamGia] [int] NULL,
 CONSTRAINT [pk_ChiTietHDB] PRIMARY KEY CLUSTERED 
(
	[SoHDB] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietHDN]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDN](
	[SoHDN] [nvarchar](30) NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [money] NULL,
	[GiamGia] [int] NULL,
 CONSTRAINT [pk_ChiTietHDN] PRIMARY KEY CLUSTERED 
(
	[SoHDN] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CongViec]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongViec](
	[MaCV] [int] NOT NULL,
	[TenCV] [nvarchar](30) NULL,
 CONSTRAINT [pk_CongViec] PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDonBan]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonBan](
	[SoHDB] [nvarchar](30) NOT NULL,
	[MaNV] [int] NULL,
	[MaKH] [int] NULL,
	[NgayBan] [date] NULL,
	[TongTien] [money] NULL,
 CONSTRAINT [pk_HoaDonBan] PRIMARY KEY CLUSTERED 
(
	[SoHDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDonNhap]    Script Date: 2022-12-04 10:13:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhap](
	[SoHDN] [nvarchar](30) NOT NULL,
	[MaNV] [int] NULL,
	[MaNCC] [nvarchar](5) NULL,
	[NgayNhap] [date] NULL,
	[TongTien] [money] NULL,
 CONSTRAINT [pk_HoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[SoHDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](15) NULL,
	[Email] [nvarchar](30) NULL,
 CONSTRAINT [pk_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mau]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mau](
	[MaMau] [int] NOT NULL,
	[TenMau] [nvarchar](20) NOT NULL,
 CONSTRAINT [pk_Mau] PRIMARY KEY CLUSTERED 
(
	[MaMau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaCungCap]    *****/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nvarchar](5) NOT NULL,
	[TenNCC] [nvarchar](250) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[DienThoai] [nvarchar](15) NULL,
 CONSTRAINT [pk_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]   *****/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[NgaySinh] [nvarchar](15) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](15) NULL,
	[MaCV] [int] NULL,
 CONSTRAINT [pk_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 2022-12-04 10:13:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[MaLoai] [int] NULL,
	[MaCL] [int] NULL,
	[MaMau] [int] NULL,
	[MaDangMat] [int] NULL,
	[SoLuong] [int] NULL,
	[Anh] [nvarchar](50) NULL,
	[DonGiaNhap] [money] NULL,
	[DonGiaBan] [money] NULL,
 CONSTRAINT [pk_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTK] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
	[MaNV] [int] NOT NULL,
	[Quyen] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [pk_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[MaSanPhamMoi](
	MaSP [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_MaSanPhamMoi] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]



GO
INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (1, N'Kim Loại')
INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (2, N'Nhựa')
INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (3, N'Policarbone')

INSERT [dbo].[Mau] ([MaMau], [TenMau]) VALUES (1, N'Nâu')
INSERT [dbo].[Mau] ([MaMau], [TenMau]) VALUES (2, N'Vàng')
INSERT [dbo].[Mau] ([MaMau], [TenMau]) VALUES (3, N'Đen')
INSERT [dbo].[Mau] ([MaMau], [TenMau]) VALUES (4, N'Hồng')
INSERT [dbo].[Mau] ([MaMau], [TenMau]) VALUES (5, N'Trắng')
INSERT [dbo].[Mau] ([MaMau], [TenMau]) VALUES (6, N'Tím')
INSERT [dbo].[Mau] ([MaMau], [TenMau]) VALUES (7, N'Xám')

INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (1, N'Kính cận')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (2, N'Kính thời trang')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (3, N'Tròng mắt')

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC1', N'EyeGlasses', N'290 Kim Mã - Ba Đình - Hà Nội', N'0999.123.456')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC2', N'Luxury', N'144 Vương Thừa Vũ - Cầu Giấy - Hà Nội', N'0988.879.978')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC3', N'Dior', N'537 La Tinh - Hoài Đức - Hà Nội', N'0972.546.473')


INSERT [dbo].[CongViec] ([MaCV], [TenCV]) VALUES (1, N'Bán hàng')
INSERT [dbo].[CongViec] ([MaCV], [TenCV]) VALUES (2, N'Kế toán')

INSERT [dbo].[HinhDangMat] ([MaDangMat], [TenDangMat]) VALUES (1, N'Tròn')
INSERT [dbo].[HinhDangMat] ([MaDangMat], [TenDangMat]) VALUES (2, N'Oval')
INSERT [dbo].[HinhDangMat] ([MaDangMat], [TenDangMat]) VALUES (3, N'Chữ nhật')


INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01012023_115523', 23, 2, CAST(296000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01012023_115523', 26, 1, CAST(265000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01012023_115523', 32, 2, CAST(160000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01012023_120240', 10, 1, CAST(295000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01012023_120240', 11, 2, CAST(250000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01012023_120240', 12, 1, CAST(300000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01012023_120240', 44, 1, CAST(200000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01012023_120240', 45, 1, CAST(500000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01022022_115836', 27, 2, CAST(140000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01022022_115836', 28, 1, CAST(165000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01022022_115836', 30, 2, CAST(140000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01022022_120507', 13, 1, CAST(177000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01022022_120507', 24, 2, CAST(190000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01022022_120507', 34, 1, CAST(225000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01022022_120507', 37, 2, CAST(165000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01022022_120507', 38, 2, CAST(190000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01022022_120641', 36, 2, CAST(399000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01022022_120641', 37, 1, CAST(165000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01022022_120641', 48, 1, CAST(230000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01022022_120641', 49, 1, CAST(170000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01022022_120641', 52, 1, CAST(130000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01022022_121049', 50, 2, CAST(180000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01022022_121049', 51, 2, CAST(100000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'01022022_121049', 52, 2, CAST(130000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'06102022_104132', 1, 2, CAST(980000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'06102022_104132', 4, 2, CAST(1085000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'06102022_104132', 5, 2, CAST(950000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'06102022_104132', 6, 2, CAST(950000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'06102022_104328', 2, 2, CAST(1170000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'06102022_104328', 3, 2, CAST(250000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'06102022_104328', 6, 2, CAST(950000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'06102022_104328', 8, 2, CAST(850000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'06102022_104328', 45, 8, CAST(500000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'06102022_104328', 50, 3, CAST(400000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'10112022_082148', 1, 1, CAST(980000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'10112022_082148', 2, 1, CAST(1170000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'10112022_082148', 3, 1, CAST(250000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'12022022_091427', 50, 3, CAST(180000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'12022022_091427', 51, 3, CAST(100000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'12022022_091427', 53, 3, CAST(100000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'12022022_091427', 54, 2, CAST(80000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'12022022_093029', 13, 2, CAST(177000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'12022022_093029', 14, 2, CAST(250000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'12022022_093029', 25, 4, CAST(192000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'12022022_093029', 39, 2, CAST(165000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'12022022_093029', 40, 2, CAST(385000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'12022022_093029', 50, 2, CAST(230000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'12122022_104607', 20, 4, CAST(490000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'12122022_104607', 34, 2, CAST(225000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'12122022_104607', 36, 3, CAST(399000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'12122022_104607', 41, 3, CAST(400000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'12122022_104607', 42, 2, CAST(500000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'12122022_104607', 43, 2, CAST(1200000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'12122022_104607', 50, 2, CAST(350000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'13032022_121341', 30, 1, CAST(140000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'13032022_121341', 44, 1, CAST(200000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'13032022_121341', 45, 1, CAST(500000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'13032022_121341', 50, 2, CAST(180000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'13032022_121540', 11, 2, CAST(250000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'13032022_121540', 12, 3, CAST(300000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'13032022_121720', 13, 3, CAST(177000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'13032022_121720', 25, 1, CAST(192000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'13032022_121720', 26, 1, CAST(265000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'13042022_121908', 25, 1, CAST(192000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'13042022_121908', 38, 1, CAST(190000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'13042022_121908', 40, 2, CAST(385000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'13042022_121908', 48, 1, CAST(230000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'13042022_121908', 49, 1, CAST(170000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'13342022_122126', 15, 2, CAST(305000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'13342022_122126', 16, 1, CAST(580000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'13342022_122126', 19, 1, CAST(450000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'16072022_093946', 22, 1, CAST(200000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'16072022_093946', 42, 1, CAST(500000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'16072022_093946', 43, 1, CAST(1200000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'16072022_093946', 50, 1, CAST(350000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'16072022_094546', 10, 2, CAST(295000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'16072022_094546', 45, 2, CAST(500000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'16072022_094546', 50, 1, CAST(180000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'16072022_094546', 52, 2, CAST(130000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'16072022_094546', 53, 1, CAST(100000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'16072022_094546', 54, 1, CAST(80000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'16072022_094546', 55, 1, CAST(200000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'16092022_103602', 43, 1, CAST(1200000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'16092022_103602', 50, 2, CAST(350000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'18062022_095607', 30, 2, CAST(140000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'19012022_091200', 13, 2, CAST(177000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'19012022_091200', 14, 4, CAST(250000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'19012022_091200', 25, 4, CAST(192000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'19012022_091200', 39, 12, CAST(165000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'19012022_091200', 40, 3, CAST(385000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'19012022_091200', 50, 2, CAST(230000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'19112022_124910', 42, 2, CAST(500000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'22112022_053133', 48, 3, CAST(230000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24062022_102550', 10, 4, CAST(295000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24062022_102550', 11, 4, CAST(250000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24062022_102550', 12, 5, CAST(300000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24062022_102550', 45, 2, CAST(500000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24062022_102707', 28, 2, CAST(165000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24062022_102707', 30, 3, CAST(140000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24062022_102835', 40, 2, CAST(385000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24062022_102859', 34, 2, CAST(225000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24062022_102859', 36, 2, CAST(399000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24062022_102859', 38, 3, CAST(190000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24062022_102859', 50, 2, CAST(230000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24062022_103051', 10, 2, CAST(295000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24062022_103051', 11, 3, CAST(250000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24062022_103051', 29, 3, CAST(150000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24062022_103051', 31, 2, CAST(140000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24082022_094957', 45, 1, CAST(500000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24082022_094957', 46, 1, CAST(470000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24082022_094957', 50, 1, CAST(180000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24082022_094957', 51, 1, CAST(100000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24082022_094957', 52, 1, CAST(130000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24082022_094957', 53, 2, CAST(100000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24082022_094957', 54, 2, CAST(80000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24082022_094957', 55, 1, CAST(200000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24082022_095229', 13, 1, CAST(177000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24082022_095229', 39, 1, CAST(165000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24082022_095229', 40, 1, CAST(385000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24082022_095229', 48, 1, CAST(230000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24082022_095229', 55, 1, CAST(200000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24082022_095229', 42, 2, CAST(210000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'24082022_095229', 45, 1, CAST(170000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_042435', 23, 1, CAST(296000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_042435', 40, 2, CAST(385000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_042435', 26, 1, CAST(210000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_042435', 10, 3, CAST(230000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_042916', 10, 1, CAST(295000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_042916', 12, 1, CAST(300000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_042916', 23, 1, CAST(100000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_043148', 10, 1, CAST(295000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_043148', 12, 2, CAST(300000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_043148', 27, 1, CAST(140000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_043148', 29, 1, CAST(150000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_043148', 30, 1, CAST(140000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_043148', 31, 2, CAST(140000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_043148', 45, 2, CAST(500000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_043148', 50, 1, CAST(400000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_043148', 53, 1, CAST(500000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_043402', 13, 2, CAST(177000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_043402', 24, 3, CAST(190000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_043402', 26, 2, CAST(265000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_043402', 32, 3, CAST(160000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_043402', 34, 3, CAST(225000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_043402', 40, 2, CAST(385000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_043402', 20, 5, CAST(230000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_043934', 16, 2, CAST(580000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_043934', 17, 1, CAST(495000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_043934', 33, 1, CAST(450000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_043934', 47, 1, CAST(470000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_044032', 15, 1, CAST(305000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_044032', 37, 1, CAST(360000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_044107', 18, 3, CAST(460000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_044107', 19, 1, CAST(450000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_044143', 17, 1, CAST(495000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_044143', 12, 3, CAST(400000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25052023_044143', 15, 1, CAST(200000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25112022_100259', 14, 1, CAST(250000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25112022_100259', 25, 1, CAST(192000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25112022_100259', 32, 1, CAST(160000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25112022_100259', 48, 1, CAST(230000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25112022_100259', 1, 1, CAST(150000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25112022_100259', 7, 2, CAST(230000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25112022_100520', 13, 1, CAST(177000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25112022_100520', 7, 1, CAST(165000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'25112022_034703', 6, 1, CAST(190000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'27112022_093743', 1, 1, CAST(980000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'27112022_093743', 5, 2, CAST(950000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'27112022_093743', 8, 1, CAST(850000 AS Decimal(18, 0)), 0)
INSERT [dbo].[ChiTietHDB] ([SoHDB], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'30112022_025247', 5, 2, CAST(950000 AS Decimal(18, 0)), 0)

INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000245', 1, 2, 800000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000245', 2, 2, 500000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000245', 3, 2, 250000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000245', 5, 2, 785000.0000, 5)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000245', 8, 2, 650000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000273', 20, 2, 360000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000273', 43, 2, 700000.0000, 5)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000332', 9, 2, 250000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000332', 14, 2, 180000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000332', 23, 2, 180000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000332', 25, 2, 100000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000332', 27, 2, 80000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000332', 29, 2, 100000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000332', 31, 2, 800000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000332', 32, 2, 900000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000365', 15, 2, 265000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000365', 16, 2, 395000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000365', 17, 2, 380000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000365', 18, 2, 375000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000365', 19, 2, 350000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000365', 33, 2, 300000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000422', 47, 2, 100000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000422', 48, 2, 120000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000422', 49, 2, 100000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000422', 50, 2, 110000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000422', 51, 2, 100000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000422', 52, 2, 60000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000489', 38, 2, 105000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000489', 39, 2, 100000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000489', 44, 2, 150000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000489', 45, 2, 500000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000489', 46, 2, 250000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000539', 19, 2, 350000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000539', 9, 2, 120000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000539', 2, 2, 240000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000539', 3, 2, 210000.0000, 0)
INSERT [dbo].[ChiTietHDN] ([SoHDN], [MaSP], [SoLuong], [DonGia], [GiamGia]) VALUES (N'0000539', 7, 2, 300000.0000, 0)



INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'01012023_115523', 1, 10003, CAST(N'2023-01-01' AS Date), 1177000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'01012023_120240', 3, 10001, CAST(N'2023-01-01' AS Date), 1795000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'01022022_115836', 2, 10001, CAST(N'2022-02-01' AS Date), 725000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'01022022_120507', 2, 10005, CAST(N'2022-02-01' AS Date), 1492000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'01022022_120641', 3, 10008, CAST(N'2022-02-01' AS Date), 1493000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'01022022_121049', 1, 10007, CAST(N'2022-02-01' AS Date), 820000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'06102022_104132', 1, 10010, CAST(N'2022-10-17' AS Date), 7930000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'06102022_104328', 1, 10007, CAST(N'2022-10-22' AS Date), 12740000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'10112022_082148', 1, 10002, CAST(N'2022-11-10' AS Date), 2400000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'12022022_091427', 2, 10013, CAST(N'2022-02-12' AS Date), 1300000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'12022022_093029', 1, 10000, CAST(N'2022-02-12' AS Date), 3182000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'12122022_104607', 3, 10015, CAST(N'2022-12-12' AS Date), 11307000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'13032022_121341', 3, 10012, CAST(N'2022-03-13' AS Date), 1365000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'13032022_121540', 3, 10006, CAST(N'2022-03-13' AS Date), 1400000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'13032022_121720', 3, 10009, CAST(N'2022-03-13' AS Date), 988000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'13042022_121908', 3, 10011, CAST(N'2022-04-13' AS Date), 1552000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'13342022_122126', 3, 10017, CAST(N'2022-04-13' AS Date), 1640000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'16072022_093946', 2, 10018, CAST(N'2022-07-16' AS Date), 5850000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'16072022_094546', 3, 10020, CAST(N'2022-07-16' AS Date), 4710000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'16092022_103602', 1, 10011, CAST(N'2022-09-16' AS Date), 6826000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'18062022_095607', 3, 10010, CAST(N'2022-06-18' AS Date), 910000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'19012022_084213', 2, 10021, CAST(N'2022-01-19' AS Date), 1380000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'19012022_091200', 3, 10005, CAST(N'2022-01-19' AS Date), 5519000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'19112022_124910', 3, 10000, CAST(N'2022-11-19' AS Date), 1000000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'20102022_210940', 1, 10003, CAST(N'2022-10-20' AS Date), 690000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'22112022_053133', 3, 10003, CAST(N'2022-11-22' AS Date), 4530000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'24062022_102550', 2, 10020, CAST(N'2022-06-24' AS Date), 750000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'24062022_102707', 3, 10008, CAST(N'2022-06-24' AS Date), 770000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'24062022_102835', 2, 10009, CAST(N'2022-06-24' AS Date), 2278000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'24062022_102859', 2, 10004, CAST(N'2022-06-24' AS Date), 2070000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'24062022_103051', 3, 10006, CAST(N'2022-06-24' AS Date), 1940000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'24082022_094957', 2, 10020, CAST(N'2022-08-24' AS Date), 2127000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'24082022_095229', 3, 10008, CAST(N'2022-08-24' AS Date), 5431000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'25052023_042435', 2, 10018, CAST(N'2023-05-25' AS Date), 1775000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'25052023_042916', 3, 10007, CAST(N'2023-05-25' AS Date), 3505000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'25052023_043148', 2, 10013, CAST(N'2023-05-25' AS Date), 4414000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'25052023_043402', 3, 10009, CAST(N'2023-05-25' AS Date), 2575000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'25052023_043934', 2, 10002, CAST(N'2023-05-25' AS Date), 665000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'25052023_044032', 2, 10001, CAST(N'2023-05-25' AS Date), 1830000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'25052023_044107', 3, 10001, CAST(N'2023-05-25' AS Date), 1895000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'25052023_044143', 3, 10017, CAST(N'2023-05-25' AS Date), 1442000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'25112022_100259', 3, 10000, CAST(N'2022-11-25' AS Date), 842000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'25112022_100520', 3, 10005, CAST(N'2022-11-25' AS Date), 1620000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'25112022_034703', 2, 10000, CAST(N'2022-11-25' AS Date), 1895000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'27112022_093743', 2, 10019, CAST(N'2022-11-27' AS Date), 6650000.0000)
INSERT [dbo].[HoaDonBan] ([SoHDB], [MaNV], [MaKH], [NgayBan], [TongTien]) VALUES (N'30112022_025247', 2, 10020, CAST(N'2022-11-30' AS Date), 4780000.0000)

INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [MaNCC], [NgayNhap], [TongTien]) VALUES (N'0000245', 1, N'NCC1', CAST(N'2022-11-21' AS Date), 10491500.0000)
INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [MaNCC], [NgayNhap], [TongTien]) VALUES (N'0000273', 1, N'NCC1', CAST(N'2022-04-05' AS Date), 2050000.0000)
INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [MaNCC], [NgayNhap], [TongTien]) VALUES (N'0000332', 2, N'NCC1', CAST(N'2022-11-25' AS Date), 5180000.0000)
INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [MaNCC], [NgayNhap], [TongTien]) VALUES (N'0000365', 1, N'NCC1', CAST(N'2022-03-03' AS Date), 4130000.0000)
INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [MaNCC], [NgayNhap], [TongTien]) VALUES (N'0000422', 3, N'NCC2', CAST(N'2022-02-03' AS Date), 1180000.0000)
INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [MaNCC], [NgayNhap], [TongTien]) VALUES (N'0000489', 1, N'NCC3', CAST(N'2022-10-20' AS Date), 2210000.0000)
INSERT [dbo].[HoaDonNhap] ([SoHDN], [MaNV], [MaNCC], [NgayNhap], [TongTien]) VALUES (N'0000539', 2, N'NCC3 ', CAST(N'2022-01-15' AS Date), 2440000.0000)

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (10000, N'Cồ Văn An', N'Đồng Sơn-Nam Trực-Nam Định', N'0975280467', N'fastforious1234567@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (10001, N'Phùng Văn Tùng Anh', N'Đông La-Hoài Đức-Hà Nội', N'01667117915', N'vuongtrangutc@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (10002, N'Dương Xuân Bách', N'Tây Hồ-Hà Nội', N'01239921121', N'heohamhap@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (10003, N'Trần Mạnh Hùng', N'Giao Lạc-Giao Thuỷ-Nam Định', N'0923224423', N'tmhung@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (10004, N'Huỳnh Công Hiếu', N'Giao Lạc-Giao Thuỷ-Nam Định', N'0928372998', N'dientran09@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (10005, N'Nguyễn Thanh Tùng', N'Hải Tiến-Hải Hậu-Nam Định', N'01671837362', N'phongkute@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (10006, N'Nhữ Đình Đức', N'Hữu Hà-Tiên Du-Bắc Ninh', N'0924824444', N'chienph@yahoo.com.vn')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (10007, N'Nguyễn Thị Cúc', N'Trung Na-Tiền Tiến-Hải Dương', N'01623131442', N'gacon0123@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (10008, N'Nguyễn Xuân Anh', N'Tam Hợp-Bình Xuyên-Vĩnh Phúc', N'0927318313', N'nguyenxuananhbxvp@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (10009, N'Lê Đức Anh', N'Đội Cấn-Cầu Giấy-Hà Nội', N'01653434544', N'khamachi9x@yahoo.com.vn')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (10010, N'Đặng Hương Giang', N'Thanh Nhàn-Hai Bà Trưng-Hà Nội', N'0928382233', N'sunflower.pearl2525@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (10011, N'Lê Quang Đạo', N'Hợp Hoà-Sóc Sơn-Hà Nội', N'0988244422', N'key1240@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (10012, N'Nguyễn Thị Thu Hiền', N'Láng Hạ-Đống Đa-Hà Nội', N'0987564873', N'hien4133@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (10013, N'Lê Thị Mai', N'Kim Xá-Trung Sơn-Thanh Hoá', N'01647485844', N'lemai@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (10015, N'Nguyễ Hoàn Long', N'Mai Dịch-Cầu Giấy-Hà Nội', N'01682719381', N'hoanlong10@yahoo.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (10017, N'Nguyễn Thị Thuỷ', N'Xuân La-Tây Hồ-Hà Nội', N'0975352456', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (10018, N'Trần Trọng Hoàng', N'Thái Hưng-Thái Thịnh-Thái Bình', N'0978756563', N'tronghoang2564@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (10019, N'Đồ Thị Huyễn Trang', N'Ngõ 11,Nguyễn Khánh Toàn-Cầu Giấy-Hà Nội', N'0969283259', N'huyentrangyumi@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (10020, N'Hoàng Thị Liên', N'An Phượng-Hoài Đức-Hà Nội', N'0975280467', N'Namlundidong197@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Email]) VALUES (10021, N'Mai Thị Tình', N'Dương Quảng Hàm-Cầu Giấy-Hà Nội', N'0975286535', N'tinhtu@gmail.com')

INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [MaCV]) 
VALUES (1, N'Cồ Văn An', 'Nu', N'06/03/2003', N'290 Kim Mã - Ba Đình - Hà Nội', N'0922338534', 1)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [MaCV]) 
VALUES (2, N'Phùng Văn Tùng Anh', 'Nam', N'05/01/2003', N'Trung Giã-Sóc Sơn-Hà Nội', N'0986315642', 1)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [NgaySinh], [DiaChi], [DienThoai], [MaCV]) 
VALUES (3, N'Dương Xuân Bách', 'Nam', N'01/01/2003', N'Nghĩa Tân-Cầu Giấy-Hà Nội', N'0987652354', 2)

INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Quyen], [MaNV], [TinhTrang]) VALUES (N'CoVanAn', N'3d7c76317dc02619cbf97464f0541e8d', N'Quản trị', 1, N'Hoạt động')
/* MK: cva */

INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Quyen], [MaNV], [TinhTrang]) VALUES (N'PhungVanTungAnh', N'b17a6ecfdc677562a98db47cf51a830c', N'Nhân viên', 2, N'Hoạt động')
/* MK: pvta */

INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [Quyen], [MaNV], [TinhTrang]) VALUES (N'DuongXuanBach', N'd079fcde65446eb0e26637aa2b537f23', N'Nhân viên', 3, N'Hoạt động')
/* MK: dxb */


INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (1, N'Gọng kính EyePlus 8875 C9 Hồng', 1, 3, 4, 1, 96, N'1.jpg', 800000.0000, 980000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (2, N'Kính Radaza 2568 đen bạc', 1, 1, 3, 2, 97, N'2.jpg', 850000.0000, 1170000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (3, N'Kính mắt BlueTazan Water 5987', 1, 3, 6,  3, 98, N'3.jpg', 150000.0000, 250000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (4,N'Kính mắt Titania Silver', 1, 1, 7,  1, 98, N'4.jpg', 950000.0000, 1085000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (5,N'Kính mắt EyePlus 5987', 1, 2, 3,  3, 98, N'5.jpg', 785000.0000, 950000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (6, N'Kính mắt EyePlus BlackBery', 1, 2, 3,  1, 98, N'6.jpg', 750000.0000, 950000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (7, N'Kính mắt EyePlus GoldenGate', 1, 1, 4,  1, 98, N'7.jpg', 600000.0000, 750000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (8, N'Kính mắt AuExtra', 1, 1, 2,  3, 98, N'8.jpg', 650000.0000, 850000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (9, N'Kính mắt PinTransparent 5987', 1, 3, 4,  2, 98, N'9.jpg', 250000.0000, 365000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (10,  N'Kính mắt WaterFlow', 1, 3, 5,  3, 98, N'10.jpg', 200000.0000, 295000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (11, N'Kính mắt AngelWall ', 1, 2, 3,  3, 98, N'11.jpg', 150000.0000, 250000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (12, N'Kính mắt GoodWood', 1, 3, 1,  3, 98, N'12.jpg', 245000.0000, 300000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (13, N'Kính mắt IronSuperPlastic', 1, 1, 7,  3, 98, N'13.jpg', 100000.0000, 177000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (14, N'Kính mắt IronSuperPlastic Ver2', 1, 1, 3,  3, 98,  N'14.jpg', 180000.0000, 250000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (15, N'Kính mắt GoldMikiway 1987', 1, 1, 2,  3, 98,  N'15.jpg', 265000.0000, 305000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (16,N'Kính mắt OldMen Ver20 ', 1, 2, 1,  3, 98,  N'16.jpg', 395000.0000, 580000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (17, N'Kính mắt IronSuperPlastic Var3', 1, 1, 7,  3, 98, N'17.jpg', 380000.0000, 495000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (18, N'Kính mắt GolderPlasma One2Three', 1, 1, 2,  3, 98, N'18.jpg', 375000.0000, 460000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (19, N'Kính mắt GolderIron 8953', 1, 1, 2,  1, 98, N'19.jpg', 350000.0000, 450000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (20, N'Kính mắt TheEndOfCan', 1, 1, 7,  2, 98, N'20.jpg', 360000.0000, 490000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (21,N'Kính mắt GrayBigFood 3657', 2, 2, 6,  3, 98, N'21.jpg', 250000.0000, 317000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (22,N'Kính mắt SuperGoldenGate 3000', 2, 2, 6,  3, 98, N'22.jpg', 115000.0000, 200000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (23, N'Kính mắt BatMTP 2TT', 2, 2, 6,  3, 98, N'23.jpg', 180000.0000, 296000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (24, N'Kính mắt FlasBack GoldenEyes', 2, 2, 6,  3, 98, N'24.jpg', 100000.0000, 190000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (25, N'Kính mắt FlasBack BinhEyes', 2, 2, 6,  3, 98, N'25.jpg', 100000.0000, 192000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (26,N'Kính mắt FlasBack BatEyes', 2, 2, 6,  3, 98, N'26.jpg', 150000.0000, 265000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (27, N'Kính mắt PrincesInDream 3687', 2, 2, 6,  3, 98, N'27.jpg', 80000.0000, 140000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (28, N'Kính mắt TheKingOfEye 8768', 2, 2, 6,  3, 98, N'28.jpg', 100000.0000, 165000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (29, N'Kính mắt TheFuture 5987',2, 2, 6,  3, 98, N'29.jpg', 100000.0000, 150000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (30, N'Kính mắt TheFuture Ver2', 2, 2, 6,  3, 98, N'30.jpg', 700000.0000, 140000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (31, N'Kính mắt ECatOrBat', 2, 2, 6,  2, 98, N'31.jpg', 800000.0000, 140000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (32, N'Kính mắt TheFuture Ver3', 2, 2, 6,  3, 98, N'32.jpg', 900000.0000, 160000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (33, N'Kính mắt ECatOrBat Ver2', 2, 2, 6,  3, 98, N'33.jpg', 300000.0000, 450000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (34, N'Kính mắt TheQueenOfGlasses 9867', 2, 2, 6,  1, 98, N'34.jpg', 170000.0000, 225000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (35, N'Kính mắt LuxuryKingdom 1870', 2, 2, 6,  3, 98, N'35.jpg', 250000.0000, 350000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (36, N'Kính mắt LuxuryKingdom 1733', 2, 2, 6,  3, 98, N'36.jpg', 239000.0000, 399000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (37, N'Kính mắt FashionDior 5555', 2, 2, 6,  3, 98, N'37.jpg', 100000.0000, 165000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (38, N'Kính mắt FashionRaza 2368', 2, 2, 6,  1, 98, N'38.jpg', 105000.0000, 190000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (39, N'Kính mắt BinhGow in VN 2022', 2, 2, 6,  3, 98, N'39.jpg', 100000.0000, 165000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (40, N'Kính mắt CatsEyesDenSi', 2, 2, 6,  1, 98, N'40.jpg', 200000.0000, 385000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (41, N'Tròng cận SuperGlass '				, 3, 3, 5, NULL, 95, N'41.jpg', 210000.0000, 400000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (42, N'Tròng cận ChemiPerfect UV1.74'		, 3, 3, 5, NULL, 97, N'42.jpg', 350000.0000, 500000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (43, N'Tròng cận ChemiPerfect UV1.60'		, 3, 3, 5, NULL, 96, N'43.jpg', 700000.0000, 1200000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (44, N'Tròng cận Crizal Lightmean '			, 3, 3, 5, NULL, 100, N'44.jpg', 150000.0000, 200000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (45, N'Tròng cận Hoga Sapphiare UV420 5HMC'	, 3, 3, 5, NULL, 87, N'45.jpg', 300000.0000, 500000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (46, N'Tròng râm 1.6Duramax Blue Protect Sun ative', 3, 3, 3, NULL, 99, N'46.jpg', 250000.0000, 470000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (47, N'Tròng râm ElementsPhoto GreyBlue UV1.67', 3, 3, 6, NULL, 100, N'47.jpg', 100000.0000, 200000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (48, N'Tròng râm VisionX 1.60 Superhydrophobic Nano Coati', 3, 3, 3, NULL, 98, N'48.jpg', 120000.0000, 230000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (49, N'Tròng râm NgocLucBao 1.6 SV SPH 1.5GG', 3, 3, 6, NULL, 100, N'49.jpg', 100000.0000, 170000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (50, N'Tròng râm Rocky Lens Green 1.56Index', 3, 3, 6,  NULL, 93, N'50.jpg', 110000.0000, 180000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (51, N'Tròng viễn VisionX'					, 3, 3, 5, NULL, 94, N'51.jpg', 50000.0000, 100000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (52, N'Tròng viễn SmartLensDigital 1.6 Max+Az BI', 3, 3, 5, NULL, 95, N'52.jpg', 60000.0000, 130000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (53, N'Tròng viễn SmartLensDigital 1.6 Max+Az BI ver 2', 3, 3, 5, NULL, 90, N'53.jpg', 70000.0000, 100000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan])
VALUES (54, N'Tròng viễn Elements Phôt Grey Blue UV1.67'		, 3, 3, 5, NULL, 93, N'54.jpg', 50000.0000, 80000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [MaCL], [MaMau], [MaDangMat], [SoLuong], [Anh], [DonGiaNhap], [DonGiaBan]) 
VALUES (55, N'Tròng viễn Hoga 1.57 UV400 Super HMC'				, 3, 3, 5, NULL, 99, N'55.jpg', 150000.0000, 200000.0000)

INSERT [dbo].[MaSanPhamMoi] ([MaSP] ) VALUES (55)

ALTER TABLE [dbo].[ChiTietHDB]  WITH CHECK ADD  CONSTRAINT [fk_HoaDonBan] FOREIGN KEY([SoHDB])
REFERENCES [dbo].[HoaDonBan] ([SoHDB])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHDB] CHECK CONSTRAINT [fk_HoaDonBan]
GO
ALTER TABLE [dbo].[ChiTietHDB]  WITH CHECK ADD  CONSTRAINT [fk_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHDB] CHECK CONSTRAINT [fk_SanPham]
GO
ALTER TABLE [dbo].[ChiTietHDN]  WITH CHECK ADD  CONSTRAINT [fk_HoaDonNhap] FOREIGN KEY([SoHDN])
REFERENCES [dbo].[HoaDonNhap] ([SoHDN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHDN] CHECK CONSTRAINT [fk_HoaDonNhap]
GO
ALTER TABLE [dbo].[ChiTietHDN]  WITH CHECK ADD  CONSTRAINT [fk_SanPhamHDN] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHDN] CHECK CONSTRAINT [fk_SanPhamHDN]
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [fk_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [fk_KhachHang]
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [fk_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [fk_NhanVien]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [fk_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [fk_NhaCungCap]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [fk_NhanVienHDN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [fk_NhanVienHDN]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [fk_CongViec] FOREIGN KEY([MaCV])
REFERENCES [dbo].[CongViec] ([MaCV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [fk_CongViec]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_ChatLieu] FOREIGN KEY([MaCL])
REFERENCES [dbo].[ChatLieu] ([MaCL])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_ChatLieu]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_HinhDangMat] FOREIGN KEY([MaDangMat])
REFERENCES [dbo].[HinhDangMat] ([MaDangMat])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_HinhDangMat]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_Mau] FOREIGN KEY([MaMau])
REFERENCES [dbo].[Mau] ([MaMau])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_Mau]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_LoaiSP] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSP] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_LoaiSP]
GO
