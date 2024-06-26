CREATE DATABASE QLBanCafe;
USE [QLBanCafe]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbAdmin](
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCuaHang](
	[MaCuaHang] [nvarchar](3) NOT NULL,
	[TenCuaHang] [nvarchar](255) NOT NULL,
	[SoDienThoai] [nvarchar](10) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
	[Fanpage] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCuaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbSanPham](
	[MaSanPham] [nvarchar](4) NOT NULL,
	[TenSanPham] [nvarchar](256) NOT NULL,
	[GiaBan] [money] NULL,
	[MaNhomSP] [nvarchar](2) NOT NULL,
	[Calo] [decimal](4, 2) NULL,
	[TongChatBeo] [decimal](4, 2) NULL,
	[ChatBeoBaoHoa] [decimal](4, 2) NULL,
	[Cholesterol] [decimal](4, 2) NULL,
	[Natri] [decimal](4, 2) NULL,
	[TongCarbohydrate] [decimal](4, 2) NULL,
	[Duong] [decimal](4, 2) NULL,
	[Protein] [decimal](4, 2) NULL,
	[ThanhPhan] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbNhaCungCap](
	[MaNhaCungCap] [nvarchar](2) NOT NULL,
	[TenNhaCungCap] [nvarchar](256) NOT NULL,
	[SoDienThoai] [nvarchar](10) NULL,
	[Email] [nvarchar](256) NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbKhachHang](
	[MaKhachHang] [nvarchar](6) NOT NULL,
	[TenKhachHang] [nvarchar](55) NOT NULL,
	[SoDienThoai] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Diem] [int] NOT NULL,
	[Hang] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO











CREATE TABLE [dbo].[tbCuaHangBanSP](
	[MaCuaHang] [nvarchar](3) NOT NULL,
	[MaSanPham] [nvarchar](4) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCuaHang] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCuaHangTinTuc](
	[MaCuaHang] [nvarchar](3) NOT NULL,
	[MaTinTuc] [nvarchar](8) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCuaHang] ASC,
	[MaTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbChiTietHDB](
	[MaHoaDonBan] [nvarchar](14) NOT NULL,
	[MaSanPham] [nvarchar](4) NOT NULL,
	[MaKichThuoc] [nchar](1) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiamGia] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDonBan] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbChiTietHDN](
	[MaHoaDonNhap] [nvarchar](14) NOT NULL,
	[MaVatTu] [nvarchar](4) NOT NULL,
	[SoLuongNhap] [int] NOT NULL,
	[GiaNhap] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDonNhap] ASC,
	[MaVatTu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbChiTietToppingHDB](
	[MaHoaDonBan] [nvarchar](14) NOT NULL,
	[MaSanPham] [nvarchar](4) NOT NULL,
	[MaTopping] [nvarchar](2) NOT NULL,
	[SoLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTopping] ASC,
	[MaHoaDonBan] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbHoaDonBan](
	[MaHoaDonBan] [nvarchar](14) NOT NULL,
	[MaKhachHang] [nvarchar](6) NOT NULL,
	[NgayBan] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDonBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbHoaDonNhap](
	[MaHoaDonNhap] [nvarchar](14) NOT NULL,
	[MaNhaCungCap] [nvarchar](2) NOT NULL,
	[NgayLap] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDonNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbKichThuoc](
	[MaKichThuoc] [nchar](1) NOT NULL,
	[GiaThem] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKichThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbKhoVatTuCH](
	[MaCuaHang] [nvarchar](3) NOT NULL,
	[MaVatTu] [nvarchar](4) NOT NULL,
	[SoLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCuaHang] ASC,
	[MaVatTu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbNhomSanPham](
	[MaNhomSP] [nvarchar](2) NOT NULL,
	[TenNhomSP] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhomSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbTinTuc](
	[MaTinTuc] [nvarchar](8) NOT NULL,
	[TieuDe] [nvarchar](256) NOT NULL,
	[NgayDang] [date] NOT NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbTopping](
	[MaTopping] [nvarchar](2) NOT NULL,
	[TenTopping] [nvarchar](256) NOT NULL,
	[GiaBan] [int] NOT NULL,
	[Anh] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTopping] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbVatTu](
	[MaVatTu] [nvarchar](4) NOT NULL,
	[TenVatTu] [nvarchar](255) NOT NULL,
	[DonViTinh] [nvarchar](5) NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVatTu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/**********************************************************************/

INSERT [dbo].[tbAdmin] ([Username], [Password]) VALUES (N'admin', N'admin')
GO
INSERT [dbo].[tbCuaHang] ([MaCuaHang], [TenCuaHang], [SoDienThoai], [Email], [DiaChi], [Fanpage]) VALUES (N'101', N'The Coffee Space Hồ Tùng Mậu
', N'0980094164', N'0101@thecoffeespace.com
', N'Hồ Tùng Mậu - Mai Dịch - Cầu Giấy - Hà Nội
', N'facebook.com/TheCoffeeSpaceHoTungMau
')
INSERT [dbo].[tbCuaHang] ([MaCuaHang], [TenCuaHang], [SoDienThoai], [Email], [DiaChi], [Fanpage]) VALUES (N'102', N'The Coffee Space Phạm Văn Đồng
', N'0929433365', N'0102@thecoffeespace.com
', N'Phạm Văn Đồng - Cổ Nhuế 1 - Bắc Từ Liêm - Hà Nội
', N'facebook.com/TheCoffeeSpacePhamVanDong
')
INSERT [dbo].[tbCuaHang] ([MaCuaHang], [TenCuaHang], [SoDienThoai], [Email], [DiaChi], [Fanpage]) VALUES (N'103', N'The Coffee Space TTTM Aeon Mall Long Biên
', N'0965140821', N'0103@thecoffeespace.com
', N'TTTM Aeon Mall Long Biên - Long Biên - Hà Nội
', N'facebook.com/TheCoffeeSpaceTTTMAeonMallLongBien
')
INSERT [dbo].[tbCuaHang] ([MaCuaHang], [TenCuaHang], [SoDienThoai], [Email], [DiaChi], [Fanpage]) VALUES (N'104', N'The Coffee Space TTTM Discovery Cầu Giấy
', N'0982210023', N'0104@thecoffeespace.com
', N'TTTM Discovery Cầu Giấy - Cầu Giấy - Hà Nội
', N'facebook.com/TheCoffeeSpaceTTTMDiscoveryCauGiay
')
INSERT [dbo].[tbCuaHang] ([MaCuaHang], [TenCuaHang], [SoDienThoai], [Email], [DiaChi], [Fanpage]) VALUES (N'105', N'The Coffee Space Láng Hạ
', N'0942035303', N'0105@thecoffeespace.com
', N'Láng Hạ - Đống Đa - Hà Nội
', N'facebook.com/TheCoffeeSpaceLangHa
')
INSERT [dbo].[tbCuaHang] ([MaCuaHang], [TenCuaHang], [SoDienThoai], [Email], [DiaChi], [Fanpage]) VALUES (N'106', N'The Coffee Space Trung Hoà
', N'0920968265', N'0106@thecoffeespace.com
', N'Trung Hoà - Cầu Giấy - Hà Nội
', N'facebook.com/TheCoffeeSpaceTrungHoa
')
INSERT [dbo].[tbCuaHang] ([MaCuaHang], [TenCuaHang], [SoDienThoai], [Email], [DiaChi], [Fanpage]) VALUES (N'107', N'The Coffee Space Yên Lãng
', N'0919760526', N'0107@thecoffeespace.com
', N'Yên Lãng - Đống Đa - Hà Nội
', N'facebook.com/TheCoffeeSpaceYenLang
')
INSERT [dbo].[tbCuaHang] ([MaCuaHang], [TenCuaHang], [SoDienThoai], [Email], [DiaChi], [Fanpage]) VALUES (N'108', N'The Coffee Space Đội Cấn
', N'0928016210', N'0108@thecoffeespace.com
', N'Đội Cấn - Ba Đình - Hà Nội
', N'facebook.com/TheCoffeeSpaceDoiCan
')
INSERT [dbo].[tbCuaHang] ([MaCuaHang], [TenCuaHang], [SoDienThoai], [Email], [DiaChi], [Fanpage]) VALUES (N'109', N'The Coffee Space Lạc Long Quân
', N'0914960028', N'0109@thecoffeespace.com
', N'Lạc Long Quân - Tây Hồ - Hà Nội
', N'facebook.com/TheCoffeeSpaceLacLongQuan
')
GO
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'CF01', N'Cà phê sữa đá', 39000.0000, N'CF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ca-phe-sua-da.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'CF02', N'Cà phê sữa nóng', 39000.0000, N'CF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ca-phe-sua-nong.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'CF03', N'Bạc xỉu đá', 29000.0000, N'CF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'bac-xiu-da.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'CF04', N'Bạc xỉu nóng', 39000.0000, N'CF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'bac-xiu-nong.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'CF05', N'Cà phê đen', 29000.0000, N'CF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ca-phe-den.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'CF06', N'Cà phê đen nóng', 39000.0000, N'CF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ca-phe-den-nong.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'CF07', N'Caramel Macchiato đá', 55000.0000, N'CF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'caramel-macchiato-da.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'CF08', N'Caramel Macchiato nóng', 55000.0000, N'CF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'caramel-macchiato-nong.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'CF09', N'Latte đá', 55000.0000, N'CF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'latte-da.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'CF10', N'Latte nóng', 55000.0000, N'CF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'latte-nong.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'CF11', N'Americano đá', 45000.0000, N'CF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'americano-da.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'CF12', N'Americano nóng', 45000.0000, N'CF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'americano-nong.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'CF13', N'Capucchino đá', 55000.0000, N'CF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'capucchino-da.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'CF14', N'Capucchino nóng', 55000.0000, N'CF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'capucchino-nong.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'CF15', N'Espresso đá', 49000.0000, N'CF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'espresso-da.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'CF16', N'Espresso nóng', 45000.0000, N'CF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'espresso-nong.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'CF17', N'Cold Brew truyền thống', 45000.0000, N'CF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'cold-brew-truyen-thong.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'CF18', N'Cold Brew sữa tươi', 49000.0000, N'CF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'cold-brew-sua-tuoi.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'KH01', N'Cacao nóng', 30000.0000, N'KH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'cacao-nong.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'KH02', N'Sữa chua mận', 28000.0000, N'KH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'sua-chua-man.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'KH03', N'Sữa chua dâu', 28000.0000, N'KH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'sua-chua-dau.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'NE01', N'Nước táo ép', 45000.0000, N'NE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'nuoc-tao-ep.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'NE02', N'Nước dâu ép', 45000.0000, N'NE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'nuoc-dau-ep.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'NE03', N'Nước cam ép', 45000.0000, N'NE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'nuoc-cam-ep.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'NE04', N'Sinh tố chanh', 50000.0000, N'NE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'sinh-to-chanh.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'NE05', N'Sinh tố dâu', 55000.0000, N'NE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'sinh-to-dau.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'NE06', N'Sinh tố xoài', 55000.0000, N'NE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'sinh-to-xoai.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TS01', N'Trà sữa', 20000.0000, N'TS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tra-sua.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TS02', N'Trà sữa phô mai tươi', 28000.0000, N'TS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tra-sua-pho-mai-tuoi.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TS03', N'Trà sữa matcha', 40000.0000, N'TS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tra-sua-matcha.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TS04', N'Trà sữa Ô Long', 22000.0000, N'TS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tra-sua-o-long.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TS05', N'Trà sữa Sô cô la', 22000.0000, N'TS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tra-sua-so-co-la.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TS06', N'Trà sữa bạc hà', 22000.0000, N'TS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tra-sua-bac-ha.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TS07', N'Trà sữa dâu tây', 22000.0000, N'TS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tra-sua-dau-tay.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TR01', N'Trà nhãn', 50000.0000, N'TR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tra-nhan.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TR02', N'Trà vải', 50000.0000, N'TR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tra-vai.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TR03', N'Trà lài', 50000.0000, N'TR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tra-lai.jpg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TR04', N'Hồng trà', 70000.0000, N'TR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'hong-tra.png', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TR05', N'Trà đào', 50000.0000, N'TR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tra-dao.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TR06', N'Hồng trà chanh', 40000.0000, N'TR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'hong-tra-chanh.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TR07', N'Trà hoa hồng', 50000.0000, N'TR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tra-hoa-hong.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TR08', N'Trà đào sữa', 40000.0000, N'TR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tra-dao-sua.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TR09', N'Trà chanh', 25000.0000, N'TR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tra-chanh.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TR10', N'Trà đào dâu tây', 28000.0000, N'TR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tra-dao-dau-tay.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TR11', N'Trà đào bưởi', 28000.0000, N'TR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tra-dao-buoi.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TR12', N'Trà xoài', 28000.0000, N'TR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tra-xoai.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TR13', N'Trà mận hạt sen', 28000.0000, N'TR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tra-man-hat-sen.jpg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TR14', N'Hồng trà bưởi mật ong', 28000.0000, N'TR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'hong-tra-buoi-mat-ong.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TR15', N'Trà dứa', 28000.0000, N'TR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tra-dua.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TR16', N'Trà Ô Long dâu', 50000.0000, N'TR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tra-o-long-dau.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TR17', N'Trà Ô Long sữa', 45000.0000, N'TR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tra-o-long-sua.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TR18', N'Trà Ô Long mãng cầu', 54000.0000, N'TR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tra-o-long-mang-cau.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TR19', N'Trà Ô Long trân châu', 49000.0000, N'TR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'tra-o-long-tran-chau.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TR20', N'Matcha', 45000.0000, N'TR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'matcha.jpeg', NULL)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MaNhomSP], [Calo], [TongChatBeo], [ChatBeoBaoHoa], [Cholesterol], [Natri], [TongCarbohydrate], [Duong], [Protein], [ThanhPhan], [MoTa], [HinhAnh], [GhiChu]) VALUES (N'TR21', N'Matcha đậu đỏ', 49000.0000, N'TR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'matcha-dau-do.jpg', NULL)
GO

INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'01', N'Công Ty TNHH Sữa Bột Hưng Yên
', N'0382226394', N'hungyenmilkpow@gmail.com
', N'Hưng Yên
')
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'02', N'Công Ty Cổ Phần VietFood
', N'0334756927', N'Vietfoodcompany@vietfood.com.vn
', N'Hải Dương
')
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'03', N'Công Ty TNHH Bao Bì Sơn Nhất
', N'0868224150', N'Sonnhat@gmail.com
', N'Nam Định
')
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'04', N'Vật Tư Tiêu Hao Nam Giang
', N'0971214173', N'namgiangvtth@gmail.com
', N'Nguyễn Văn Giáp - Cầu Diễn - Hà Nội
')
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'05', N'Trà My Food And Drink
', N'0971343418', N'TraMyFood1250@gmail.com
', N'Lê Quang Đạo - Mỹ Đình - Hà Nội
')
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'06', N'Công Ty TNHH Tiêu Dùng Việt
', N'0988105921', N'tieudungviet@tieudungviet.vn
', N'KCN Bắc Thăng Long - Đông Anh - Hà Nội
')
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'07', N'Công Ty TNHH Hải Hậu
', N'0383356235', N'Haihau1907@haihaufood.com.vn
', N'KCN Quang Minh - Mê Linh - Hà Nội
')
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'08', N'Công Ty Cổ Phần Đông Phương
', N'0964273765', N'dongphuong@dongphuong.com.vn
', N'KCN Bình Xuyên - Vĩnh Phúc
')
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'09', N'Cà Phê Sơn Nam
', N'0964480955', N'sonnamcoffee123@gmail.com
', N'Kon Tum
')
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'10', N'Tập Đoàn Chè Thái Nguyên
', N'0249352223', N'thainguyenteagroup@chethainguyen.com.vn
', N'Thái Nguyên
')
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'11', N'Công Ty Cổ Phần Đóng Gói Và Phân Loại Chè
', N'0988315391', N'phanloaiche@gmail.com
', N'Thái Nguyên
')
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'12', N'Trà Nhài Nhất Dương
', N'0868739879', N'nhatduong888@gmail.com
', N'Tuyên Quang
')
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'13', N'Công Ty Cổ Phần Thực Phẩm Đài Loan Thọ Giang
', N'0383675347', N'taiwanSpecialfood@thucphamdailoan.com.vn
', N'Bắc Ninh
')
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'14', N'Công Ty Cổ Phần Bảo Châu 
', N'0988695315', N'baochaubc@baochau.com.vn
', N'Bắc Ninh
')
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'15', N'Đông Việt Food
', N'0371733721', N'dongvietfood453@gmail.com
', N'Thường Tín - Hà Nội
')
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'16', N'Công Ty Sản Xuất Hàng Tiêu Dùng Mỹ Thắng
', N'0964533033', N'mythang28@gmail.com
', N'Quốc Oai - Hà Nội
')
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'17', N'MISA
', N'0248880235', N'misa@misa.com.vn
', N'Hà Nội
')
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'18', N'Việt Trung Group
', N'0334716829', N'viettrung6969@viettrunggroup.com
', N'KCN Quang Minh - Mê Linh - Hà Nội
')
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'19', N'Công Ty TNHH Đồ Thực Phẩm Long Châu
', N'0371409930', N'longchaufood99@longchaufood.vn
', N'Tuyên Quang
')
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'20', N'Thái Dương Văn
', N'0334346484', N'thaiduongvan3222@gmail.com
', N'Hải Dương
')
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'21', N'3G 
', N'0964565867', N'3gFood@gmail.com
', N'Thanh Hoá
')
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'22', N'Công Ty Cổ Phần Thuận Phát
', N'0371387752', N'thuanphatcmp@gmail.com
', N'Ninh Bình
')
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'23', N'Thảo Trang Décor
', N'0334433964', N'ptthaotrang55@gmail.com
', N'Ninh Bình
')
INSERT [dbo].[tbNhaCungCap] ([MaNhaCungCap], [TenNhaCungCap], [SoDienThoai], [Email], [DiaChi]) VALUES (N'24', N'Công Ty Cổ Phần Nhuận Phát
', N'0334591970', N'nhuanphattailoc@nhuanphat.com.vn
', N'Thái Bình
')
GO
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000001', N'Nguyễn Dương Anh', N'379806581', N'Hà Nội', 4995, N'Special')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000002', N'Phạm Việt Anh', N'836233272', N'Cầu Giấy - Hà Nội', 4889, N'Special')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000003', N'Vũ Hoàng Anh', N'795447293', N'Trần Phú - Hà Đông - Hà Nội', 2660, N'Special')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000004', N'Bùi Thị Ánh', N'340163454', N'Vinhomes Ocean Park - Long Biên - Hà Nội', 4073, N'Special')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000005', N'Khuất Quang Cảnh', N'856400713', N'Láng Hạ - Đống Đa - Hà Nội', 2753, N'Special')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000006', N'Lê Hồng Chiến', N'337081378', N'Nguyễn Chánh - Mỹ Đình - Hà Nội', 3110, N'Special')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000007', N'Phạm Hữu Chương', N'353209379', N'Yên Lãng - Đống Đa - Hà Nội', 3866, N'Special')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000008', N'Chu Mạnh Cường', N'386920360', N'Cổ Nhuế - Bắc Từ Liêm - Hà Nội', 2656, N'Special')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000009', N'Bùi Văn Đạt', N'818357936', N'Lạc Long Quân - Tây Hồ - Hà Nội', 3108, N'Special')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000010', N'Phạm Quang Đức', N'383121300', N'Hà Nội', 4834, N'Special')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000011', N'Phạm Tiến Đức', N'786106992', N'Hà Nội', 2438, N'Diamond')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000012', N'Trần Minh Đức', N'332481447', N'Hà Nội', 2353, N'Diamond')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000013', N'Phùng Tiến Dũng', N'783103483', N'Hà Nội', 2298, N'Diamond')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000014', N'Phạm Thái Dương', N'702912017', N'Thanh Xuân - Hà Nội', 2414, N'Diamond')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000015', N'Lương Văn Duy', N'397067568', N'Trung Kính - Trung Hoà - Cầu Giấy - Hà Nội', 2015, N'Diamond')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000016', N'Nguyễn Tuấn Giang', N'824842291', N'Nhổn - Hà Nội', 2004, N'Diamond')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000017', N'Nguyễn Thị Kim Hằng', N'351641822', N'Phú Diễn - Nam Từ Liêm - Hà Nội', 2344, N'Diamond')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000018', N'Vũ Hữu Hào', N'774203416', N'Cầu Diễn - Từ Liêm - Hà Nội', 2323, N'Diamond')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000019', N'Phạm Trung Hiếu', N'798974467', N'Ba Đình - Hà Nội', 2348, N'Diamond')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000020', N'Trần Ngọc Việt Hoàn', N'560947621', N'Lạc Long Quân - Tây Hồ - Hà Nội', 2191, N'Diamond')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000021', N'Nguyễn Quốc Hùng', N'834720343', N'Âu Cơ - Tây Hồ - Hà Nội', 2282, N'Diamond')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000022', N'Phạm Công Hùng', N'832241908', N'Trần Duy Hưng - Trung Hoà - Hà Nội', 2005, N'Diamond')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000023', N'Phạm Văn Hùng', N'346581047', N'Hoàng Minh Giám - Hà Nội', 2162, N'Diamond')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000024', N'Nguyễn Thế Hướng', N'824452834', N'Nguyễn Khang - Hà Nội', 2420, N'Diamond')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000025', N'Nguyễn Sỹ Khánh', N'785068254', N'Trung Hoà - Cầu Giấy - Hà Nội', 2235, N'Diamond')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000026', N'Vũ Duy Khánh', N'562301370', N'Láng - Láng Thượng - Hà Nội', 2023, N'Diamond')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000027', N'Đỗ Đức Liêm', N'332158019', N'Hoài Đức - Hà Nội', 2321, N'Diamond')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000028', N'Dương Thùy Linh', N'816129919', N'Thanh Xuân - Hà Nội', 2158, N'Diamond')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000029', N'Vũ Khắc Đăng Linh', N'842586153', N'KĐT Linh Đàm - Hà Nội', 2155, N'Diamond')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000030', N'Nguyễn Xuân Lộc', N'813504690', N'Hai Bà Trưng - Hà Nội', 1526, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000031', N'Đinh Tiến Lộc', N'837485580', N'Phạm Văn Đồng - Hà Nội', 1838, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000032', N'Lò Duy Long', N'583029875', N'Đội Cấn - Ba Đình - Hà Nội', 1669, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000033', N'Nguyễn Minh Lượng', N'782488225', N'Hàm Nghi - Cầu Diễn - Nam Từ Liêm - Hà Nội', 1792, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000034', N'Lưu Đình Luyện', N'709836070', N'Lê Đức Thọ - Hà Nội', 1604, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000035', N'Nguyễn Nhật Minh', N'589169353', N'Trần Vĩ - Hà Nội', 1381, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000036', N'Nguyễn Hữu Nam', N'764525334', N'KĐT Golden park - Hà Nội', 1723, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000037', N'Bế Thành Nam', N'580125414', N'Trần Huy Liệu - Hà Nội', 1733, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000038', N'Nguyễn Minh Ngọc', N'815122491', N'Cù Chính Lan - Hà Nội', 1932, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000039', N'Khương Xuân Ninh', N'370034843', N'Trường Chinh - Hà Nội', 1726, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000040', N'Nguyễn An Phú', N'821525479', N'Chùa Láng - Hà Nội', 1830, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000041', N'Trần Đình Phúc', N'357969605', N'99 Nguyễn Chí Thanh - Đống Đa - Hà Nội', 1687, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000042', N'Vũ Thế Phương', N'848650605', N'Xã Đàn - Đống Đa - Hà Nội', 1214, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000043', N'Trần Minh Quân', N'361026530', N'Giải Phóng - Hà Nội', 1743, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000044', N'Nguyễn Đình Quý', N'831651969', N'Hà Nội', 1638, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000045', N'Lê Xuân Quỳnh', N'392781586', N'Hà Nội', 1493, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000046', N'Hoàng Văn Sang', N'378244174', N'Hà Nội', 1934, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000047', N'Lê Văn Sỹ', N'595913145', N'Hà Nội', 1461, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000048', N'Phùng Thị Mỹ Tâm', N'799923782', N'Hà Nội', 1865, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000049', N'Lê Đình Thái', N'377668524', N'Hà Nội', 1517, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000050', N'Đinh Quang Thắng', N'702132763', N'Đông Anh - Hà Nội', 1788, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000051', N'Vương Tiến Thành', N'375120000', N'Gia Lâm - Hà Nội', 1230, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000052', N'Phạm Hưng Thịnh', N'831941525', N'Long Biên - Hà Nội', 1733, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000053', N'Hà Văn Thời', N'789977331', N'Hoàn Kiếm - Hà Nội', 1440, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000054', N'Nguyễn Quang Thuần', N'337656022', N'Bờ Hồ - Hà Nội', 1495, N'Plantinum')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000055', N'Trần Xuân Tiến', N'397954548', N'Tràng Tiền - Hà Nội', 1162, N'Gold')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000056', N'Lê Thu Trang', N'830256571', N'Đinh Tiên Hoàng - Hà Nội', 1014, N'Gold')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000057', N'Doãn Thành Trung', N'373561772', N'Hoài Thanh - Hà Nội', 1042, N'Gold')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000058', N'Nguyễn Văn Trường', N'770735947', N'Trần Hữu Dực - Hà Nội', 882, N'Gold')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000059', N'Đỗ Gia Tuấn', N'380662330', N'Phạm Hùng - Hà Nội', 923, N'Gold')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000060', N'Đặng Đình Tùng', N'380362086', N'Phạm Hùng - Hà Nội', 857, N'Gold')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000061', N'Nhâm Văn Tùng', N'707423632', N'Phạm Hùng - Hà Nội', 797, N'Gold')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000062', N'Nguyễn Thị Ánh Tuyết', N'596199128', N'Phạm Hùng - Hà Nội', 827, N'Gold')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000063', N'Lỗ Nguyễn Thành Vinh', N'833947169', N'Mê Linh - Hà Nội', 726, N'Gold')
INSERT [dbo].[tbKhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [DiaChi], [Diem], [Hang]) VALUES (N'000064', N'Nguyễn Văn Vũ', N'346639981', N'Sóc Sơn - Hà Nội', 579, N'Gold')
GO



INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF08')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF09')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF10')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF11')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF12')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF13')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF14')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF15')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF16')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF17')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'CF18')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'KH01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'KH02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'KH03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'NE01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'NE02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'NE03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'NE04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'NE05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'NE06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TS01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TS02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TS03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TS04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TS05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TS06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TS07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR08')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR09')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR10')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR11')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR12')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR13')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR14')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR15')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR16')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR17')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR18')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR19')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR20')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'101', N'TR21')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF08')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF09')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF10')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF11')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF12')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF13')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF14')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF15')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF16')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF17')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'CF18')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'KH01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'KH02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'KH03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'NE01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'NE02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'NE03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'NE04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'NE05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'NE06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TS01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TS02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TS03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TS04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TS05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TS06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TS07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR08')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR09')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR10')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR11')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR12')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR13')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR14')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR15')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR16')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR17')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR18')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR19')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR20')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'102', N'TR21')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF08')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF09')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF10')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF11')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF12')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF13')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF14')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF15')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF16')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF17')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'CF18')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'KH01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'KH02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'KH03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'NE01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'NE02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'NE03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'NE04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'NE05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'NE06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TS01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TS02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TS03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TS04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TS05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TS06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TS07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR08')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR09')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR10')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR11')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR12')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR13')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR14')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR15')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR16')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR17')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR18')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR19')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR20')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'103', N'TR21')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF08')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF09')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF10')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF11')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF12')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF13')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF14')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF15')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF16')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF17')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'CF18')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'KH01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'KH02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'KH03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'NE01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'NE02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'NE03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'NE04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'NE05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'NE06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TS01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TS02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TS03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TS04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TS05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TS06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TS07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR01')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR08')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR09')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR10')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR11')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR12')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR13')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR14')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR15')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR16')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR17')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR18')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR19')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR20')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'104', N'TR21')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF08')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF09')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF10')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF11')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF12')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF13')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF14')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF15')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF16')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF17')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'CF18')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'KH01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'KH02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'KH03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'NE01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'NE02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'NE03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'NE04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'NE05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'NE06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TS01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TS02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TS03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TS04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TS05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TS06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TS07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR08')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR09')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR10')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR11')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR12')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR13')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR14')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR15')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR16')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR17')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR18')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR19')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR20')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'105', N'TR21')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF08')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF09')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF10')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF11')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF12')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF13')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF14')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF15')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF16')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF17')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'CF18')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'KH01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'KH02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'KH03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'NE01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'NE02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'NE03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'NE04')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'NE05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'NE06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TS01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TS02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TS03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TS04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TS05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TS06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TS07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR08')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR09')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR10')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR11')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR12')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR13')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR14')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR15')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR16')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR17')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR18')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR19')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR20')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'106', N'TR21')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF08')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF09')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF10')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF11')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF12')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF13')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF14')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF15')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF16')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF17')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'CF18')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'KH01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'KH02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'KH03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'NE01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'NE02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'NE03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'NE04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'NE05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'NE06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TS01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TS02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TS03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TS04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TS05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TS06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TS07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR08')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR09')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR10')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR11')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR12')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR13')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR14')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR15')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR16')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR17')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR18')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR19')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR20')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'107', N'TR21')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF08')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF09')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF10')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF11')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF12')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF13')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF14')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF15')
GO
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF16')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF17')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'CF18')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'KH01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'KH02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'KH03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'NE01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'NE02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'NE03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'NE04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'NE05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'NE06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TS01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TS02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TS03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TS04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TS05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TS06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TS07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR08')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR09')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR10')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR11')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR12')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR13')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR14')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR15')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR16')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR17')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR18')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR19')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR20')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'108', N'TR21')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF08')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF09')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF10')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF11')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF12')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF13')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF14')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF15')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF16')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF17')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'CF18')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'KH01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'KH02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'KH03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'NE01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'NE02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'NE03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'NE04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'NE05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'NE06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TS01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TS02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TS03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TS04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TS05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TS06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TS07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR01')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR02')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR03')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR04')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR05')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR06')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR07')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR08')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR09')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR10')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR11')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR12')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR13')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR14')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR15')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR16')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR17')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR18')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR19')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR20')
INSERT [dbo].[tbCuaHangBanSP] ([MaCuaHang], [MaSanPham]) VALUES (N'109', N'TR21')
GO
INSERT [dbo].[tbChiTietHDB] ([MaHoaDonBan], [MaSanPham], [MaKichThuoc], [SoLuong], [GiamGia]) VALUES (N'10121803230001', N'CF01', N'S', 1, 0)
GO
INSERT [dbo].[tbChiTietHDN] ([MaHoaDonNhap], [MaVatTu], [SoLuongNhap], [GiaNhap]) VALUES (N'10111703230001', N'0101', 50, 50000)
GO
INSERT [dbo].[tbChiTietToppingHDB] ([MaHoaDonBan], [MaSanPham], [MaTopping], [SoLuong]) VALUES (N'10121803230001', N'CF01', N'01', 1)
GO
INSERT [dbo].[tbHoaDonBan] ([MaHoaDonBan], [MaKhachHang], [NgayBan]) VALUES (N'10121803230001', N'000001', CAST(N'2023-03-18' AS Date))
GO
INSERT [dbo].[tbHoaDonNhap] ([MaHoaDonNhap], [MaNhaCungCap], [NgayLap]) VALUES (N'10111703230001', N'01', CAST(N'2023-03-17' AS Date))
INSERT [dbo].[tbHoaDonNhap] ([MaHoaDonNhap], [MaNhaCungCap], [NgayLap]) VALUES (N'10211703230001', N'02', CAST(N'2023-03-17' AS Date))
GO
INSERT [dbo].[tbKichThuoc] ([MaKichThuoc], [GiaThem]) VALUES (N'L', 20)
INSERT [dbo].[tbKichThuoc] ([MaKichThuoc], [GiaThem]) VALUES (N'M', 10)
INSERT [dbo].[tbKichThuoc] ([MaKichThuoc], [GiaThem]) VALUES (N'S', 0)
GO

INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'101', N'0101', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'101', N'0102', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'101', N'0103', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'101', N'0201', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'101', N'0202', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'101', N'0203', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'101', N'0204', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'101', N'0205', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'101', N'0206', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'101', N'0207', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'101', N'0208', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'101', N'0209', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'101', N'0210', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'101', N'0211', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'101', N'0301', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'101', N'0302', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'101', N'0303', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'101', N'0304', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'101', N'0305', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'101', N'0306', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'101', N'0307', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'102', N'0101', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'102', N'0102', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'102', N'0103', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'102', N'0201', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'102', N'0202', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'102', N'0203', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'102', N'0204', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'102', N'0205', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'102', N'0206', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'102', N'0207', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'102', N'0208', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'102', N'0209', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'102', N'0210', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'102', N'0211', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'102', N'0301', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'102', N'0302', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'102', N'0303', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'102', N'0304', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'102', N'0305', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'102', N'0306', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'102', N'0307', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'103', N'0101', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'103', N'0102', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'103', N'0103', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'103', N'0201', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'103', N'0202', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'103', N'0203', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'103', N'0204', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'103', N'0205', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'103', N'0206', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'103', N'0207', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'103', N'0208', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'103', N'0209', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'103', N'0210', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'103', N'0211', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'103', N'0301', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'103', N'0302', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'103', N'0303', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'103', N'0304', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'103', N'0305', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'103', N'0306', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'103', N'0307', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'104', N'0101', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'104', N'0102', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'104', N'0103', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'104', N'0201', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'104', N'0202', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'104', N'0203', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'104', N'0204', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'104', N'0205', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'104', N'0206', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'104', N'0207', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'104', N'0208', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'104', N'0209', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'104', N'0210', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'104', N'0211', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'104', N'0301', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'104', N'0302', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'104', N'0303', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'104', N'0304', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'104', N'0305', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'104', N'0306', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'104', N'0307', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'105', N'0101', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'105', N'0102', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'105', N'0103', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'105', N'0201', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'105', N'0202', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'105', N'0203', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'105', N'0204', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'105', N'0205', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'105', N'0206', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'105', N'0207', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'105', N'0208', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'105', N'0209', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'105', N'0210', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'105', N'0211', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'105', N'0301', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'105', N'0302', 100)
GO
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'105', N'0303', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'105', N'0304', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'105', N'0305', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'105', N'0306', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'105', N'0307', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'106', N'0101', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'106', N'0102', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'106', N'0103', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'106', N'0201', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'106', N'0202', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'106', N'0203', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'106', N'0204', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'106', N'0205', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'106', N'0206', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'106', N'0207', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'106', N'0208', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'106', N'0209', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'106', N'0210', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'106', N'0211', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'106', N'0301', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'106', N'0302', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'106', N'0303', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'106', N'0304', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'106', N'0305', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'106', N'0306', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'106', N'0307', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'107', N'0101', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'107', N'0102', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'107', N'0103', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'107', N'0201', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'107', N'0202', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'107', N'0203', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'107', N'0204', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'107', N'0205', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'107', N'0206', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'107', N'0207', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'107', N'0208', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'107', N'0209', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'107', N'0210', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'107', N'0211', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'107', N'0301', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'107', N'0302', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'107', N'0303', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'107', N'0304', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'107', N'0305', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'107', N'0306', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'107', N'0307', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'108', N'0101', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'108', N'0102', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'108', N'0103', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'108', N'0201', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'108', N'0202', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'108', N'0203', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'108', N'0204', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'108', N'0205', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'108', N'0206', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'108', N'0207', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'108', N'0208', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'108', N'0209', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'108', N'0210', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'108', N'0211', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'108', N'0301', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'108', N'0302', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'108', N'0303', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'108', N'0304', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'108', N'0305', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'108', N'0306', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'108', N'0307', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'109', N'0101', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'109', N'0102', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'109', N'0103', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'109', N'0201', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'109', N'0202', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'109', N'0203', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'109', N'0204', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'109', N'0205', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'109', N'0206', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'109', N'0207', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'109', N'0208', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'109', N'0209', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'109', N'0210', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'109', N'0211', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'109', N'0301', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'109', N'0302', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'109', N'0303', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'109', N'0304', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'109', N'0305', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'109', N'0306', 100)
INSERT [dbo].[tbKhoVatTuCH] ([MaCuaHang], [MaVatTu], [SoLuong]) VALUES (N'109', N'0307', 100)
GO

INSERT [dbo].[tbNhomSanPham] ([MaNhomSP], [TenNhomSP]) VALUES (N'CF', N'Cà phê')
INSERT [dbo].[tbNhomSanPham] ([MaNhomSP], [TenNhomSP]) VALUES (N'KH', N'Các loại đồ uống khác')
INSERT [dbo].[tbNhomSanPham] ([MaNhomSP], [TenNhomSP]) VALUES (N'NE', N'Nước ép/Sinh tố')
INSERT [dbo].[tbNhomSanPham] ([MaNhomSP], [TenNhomSP]) VALUES (N'TS', N'Trà sữa')
INSERT [dbo].[tbNhomSanPham] ([MaNhomSP], [TenNhomSP]) VALUES (N'TR', N'Trà')
GO

INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'01', N'Kem phô mai Macchiato', 10000, NULL)
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'02', N'Trân châu trắng', 10000, NULL)
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'03', N'Sốt Caramel', 10000, NULL)
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'04', N'Thạch cà phê', 10000, NULL)
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'05', N'Sữa tươi', 10000, NULL)
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'06', N'Coffee Jelly', 15000, NULL)
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'07', N'Whipped cream', 15000, NULL)
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'08', N'Bánh Flan', 20000, NULL)
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'09', N'Đào', 15000, NULL)
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'10', N'Vải', 15000, NULL)
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'11', N'Nhãn', 15000, NULL)
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'12', N'Trân châu đen', 10000, NULL)
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'13', N'Đậu đỏ', 15000, NULL)
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'14', N'Pudding trứng', 20000, NULL)
INSERT [dbo].[tbTopping] ([MaTopping], [TenTopping], [GiaBan], [Anh]) VALUES (N'15', N'Nha đam', 15000, NULL)
GO
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0101', N'Cốc', N'Chiếc', NULL)
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0102', N'Thìa', N'Chiếc', NULL)
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0103', N'Túi ni lông', N'Cái', NULL)
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0201', N'Cà phê bột', N'Kg', NULL)
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0202', N'Đường', N'Kg', NULL)
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0203', N'Sữa đặc', N'Lít', NULL)
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0204', N'Sữa tươi', N'Lít', NULL)
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0205', N'Sữa chua', N'Kg', NULL)
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0206', N'Sữa bột', N'Kg', NULL)
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0207', N'Bột trà sữa', N'Kg', NULL)
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0208', N'Trà Ô Long', N'Kg', NULL)
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0209', N'Trà đen', N'Kg', NULL)
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0210', N'Sô cô la', N'Kg', NULL)
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0211', N'Kem', N'Kg', NULL)
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0301', N'Chanh', N'Kg', NULL)
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0302', N'Đào', N'Kg', NULL)
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0303', N'Bưởi', N'Kg', NULL)
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0304', N'Nhãn', N'Kg', NULL)
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0305', N'Táo', N'Kg', NULL)
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0306', N'Dâu tây', N'Kg', NULL)
INSERT [dbo].[tbVatTu] ([MaVatTu], [TenVatTu], [DonViTinh], [GhiChu]) VALUES (N'0307', N'Mận', N'Kg', NULL)
GO
ALTER TABLE [dbo].[tbCuaHangBanSP]  WITH CHECK ADD FOREIGN KEY([MaCuaHang])
REFERENCES [dbo].[tbCuaHang] ([MaCuaHang])
GO
ALTER TABLE [dbo].[tbCuaHangBanSP]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[tbSanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[tbCuaHangTinTuc]  WITH CHECK ADD FOREIGN KEY([MaCuaHang])
REFERENCES [dbo].[tbCuaHang] ([MaCuaHang])
GO
ALTER TABLE [dbo].[tbCuaHangTinTuc]  WITH CHECK ADD FOREIGN KEY([MaTinTuc])
REFERENCES [dbo].[tbTinTuc] ([MaTinTuc])
GO
ALTER TABLE [dbo].[tbChiTietHDB]  WITH CHECK ADD FOREIGN KEY([MaHoaDonBan])
REFERENCES [dbo].[tbHoaDonBan] ([MaHoaDonBan])
GO
ALTER TABLE [dbo].[tbChiTietHDB]  WITH CHECK ADD FOREIGN KEY([MaKichThuoc])
REFERENCES [dbo].[tbKichThuoc] ([MaKichThuoc])
GO
ALTER TABLE [dbo].[tbChiTietHDB]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[tbSanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[tbChiTietHDN]  WITH CHECK ADD FOREIGN KEY([MaHoaDonNhap])
REFERENCES [dbo].[tbHoaDonNhap] ([MaHoaDonNhap])
GO
ALTER TABLE [dbo].[tbChiTietHDN]  WITH CHECK ADD FOREIGN KEY([MaVatTu])
REFERENCES [dbo].[tbVatTu] ([MaVatTu])
GO
ALTER TABLE [dbo].[tbChiTietToppingHDB]  WITH CHECK ADD FOREIGN KEY([MaTopping])
REFERENCES [dbo].[tbTopping] ([MaTopping])
GO
ALTER TABLE [dbo].[tbChiTietToppingHDB]  WITH CHECK ADD FOREIGN KEY([MaHoaDonBan], [MaSanPham])
REFERENCES [dbo].[tbChiTietHDB] ([MaHoaDonBan], [MaSanPham])
GO
ALTER TABLE [dbo].[tbHoaDonBan]  WITH CHECK ADD FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[tbKhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[tbHoaDonNhap]  WITH CHECK ADD FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[tbNhaCungCap] ([MaNhaCungCap])
GO
ALTER TABLE [dbo].[tbKhoVatTuCH]  WITH CHECK ADD FOREIGN KEY([MaCuaHang])
REFERENCES [dbo].[tbCuaHang] ([MaCuaHang])
GO
ALTER TABLE [dbo].[tbKhoVatTuCH]  WITH CHECK ADD FOREIGN KEY([MaVatTu])
REFERENCES [dbo].[tbVatTu] ([MaVatTu])
GO
ALTER TABLE [dbo].[tbSanPham]  WITH CHECK ADD FOREIGN KEY([MaNhomSP])
REFERENCES [dbo].[tbNhomSanPham] ([MaNhomSP])
GO
