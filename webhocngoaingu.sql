-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 26, 2023 lúc 02:24 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webhocngoaingu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baihoc`
--

CREATE TABLE `baihoc` (
  `MaBaiHoc` int(11) NOT NULL,
  `MaKhoaHoc` int(11) NOT NULL,
  `TenBaiHoc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TrangThaiBaiHoc` tinyint(1) NOT NULL DEFAULT 1,
  `ThoiGianTaoBaiHoc` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `baihoc`
--

INSERT INTO `baihoc` (`MaBaiHoc`, `MaKhoaHoc`, `TenBaiHoc`, `TrangThaiBaiHoc`, `ThoiGianTaoBaiHoc`) VALUES
(1, 1, 'Bệ phóng', 1, '2023-04-15 04:45:33'),
(1, 2, 'Get Started', 1, '2023-04-15 04:45:33'),
(2, 1, 'Làm người', 1, '2023-04-15 04:45:33'),
(2, 2, 'Survival Kit', 1, '2023-04-15 15:36:37'),
(3, 1, 'Thực Phẩm', 1, '2023-04-15 04:45:33'),
(3, 2, 'Vocab Booster: Easy as 1, 2, 3!', 1, '2023-04-15 16:00:46'),
(4, 1, 'Bạn thích gì?', 1, '2023-04-15 04:45:33'),
(4, 2, 'Small Talk', 1, '2023-04-15 16:00:59'),
(5, 1, 'Ở Đâu Trong Vũ Trụ?', 1, '2023-04-15 04:45:33'),
(5, 2, 'Vocab Booster: Who Are You?', 1, '2023-04-15 16:01:17'),
(6, 1, 'Con số', 1, '2023-04-15 13:21:41'),
(6, 2, 'Each To Their Own', 1, '2023-04-15 16:01:30'),
(7, 1, 'Tiếp năng lượng', 1, '2023-04-15 13:22:06'),
(7, 2, 'Vocab Booster: Day In, Day Out', 1, '2023-04-15 16:01:45'),
(8, 1, 'Nói thẳng thắng', 1, '2023-04-15 13:22:23'),
(8, 2, 'Food For Thought', 1, '2023-04-15 16:02:05'),
(9, 1, 'Cụm Từ: Làm Họ Cười', 1, '2023-04-15 13:22:37'),
(9, 2, 'Vocab Booster: Food Is Life', 1, '2023-04-15 16:02:23'),
(10, 2, 'We Are Family', 1, '2023-04-15 16:02:40'),
(11, 2, 'Vocab Booster: Personalities', 1, '2023-04-15 16:02:55'),
(12, 2, 'Sites To See!', 1, '2023-04-15 16:03:11'),
(13, 2, 'Vocab Booster: I\\\'ve Got Places To Be!', 1, '2023-04-15 16:03:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `boquatuvung`
--

CREATE TABLE `boquatuvung` (
  `TaiKhoan` varchar(100) NOT NULL,
  `MaTuVung` int(11) NOT NULL,
  `MaBaiHoc` int(11) NOT NULL,
  `MaKhoaHoc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chatbot_room`
--

CREATE TABLE `chatbot_room` (
  `MaRoom` int(11) NOT NULL,
  `TaiKhoan` varchar(100) NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangkykhoahoc`
--

CREATE TABLE `dangkykhoahoc` (
  `TaiKhoan` varchar(100) NOT NULL,
  `MaKhoaHoc` int(11) NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dangkykhoahoc`
--

INSERT INTO `dangkykhoahoc` (`TaiKhoan`, `MaKhoaHoc`, `ThoiGian`) VALUES
('admin', 1, '2023-05-26 08:15:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgiakhoahoc`
--

CREATE TABLE `danhgiakhoahoc` (
  `TaiKhoan` varchar(100) NOT NULL,
  `MaKhoaHoc` int(11) NOT NULL,
  `NoiDungDanhGia` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Rating` int(11) NOT NULL DEFAULT 0,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hethong`
--

CREATE TABLE `hethong` (
  `ID` int(11) NOT NULL,
  `TenWeb` text NOT NULL,
  `Email` text NOT NULL,
  `PassEmail` text NOT NULL,
  `DefaultAvatar` text NOT NULL,
  `MoTa` text NOT NULL,
  `TuKhoa` text NOT NULL,
  `Thumbnail` text NOT NULL,
  `Author` text NOT NULL,
  `BaoTri` text NOT NULL,
  `NoiDungBaoTri` text NOT NULL,
  `GOOGLE_APP_ID` text DEFAULT NULL,
  `GOOGLE_APP_SECRET` text DEFAULT NULL,
  `GOOGLE_APP_CALLBACK_URL` text DEFAULT NULL,
  `FACEBOOK_APP_ID` text DEFAULT NULL,
  `FACEBOOK_APP_SECRET` text DEFAULT NULL,
  `FACEBOOK_APP_CALLBACK_URL` text DEFAULT NULL,
  `OPENAI_API_KEY` text DEFAULT NULL,
  `BASE_URL` text DEFAULT NULL,
  `LinkIcon` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hethong`
--

INSERT INTO `hethong` (`ID`, `TenWeb`, `Email`, `PassEmail`, `DefaultAvatar`, `MoTa`, `TuKhoa`, `Thumbnail`, `Author`, `BaoTri`, `NoiDungBaoTri`, `GOOGLE_APP_ID`, `GOOGLE_APP_SECRET`, `GOOGLE_APP_CALLBACK_URL`, `FACEBOOK_APP_ID`, `FACEBOOK_APP_SECRET`, `FACEBOOK_APP_CALLBACK_URL`, `OPENAI_API_KEY`, `BASE_URL`, `LinkIcon`) VALUES
-- (1, 'WebNgoaiNgu ', 'lethinh.dhsp@gmail.com', 'gxrugocahcyqcfpq', 'https://i.imgur.com/2U2xyPR.png', 'WebNgoaiNgu - Nền tảng học ngoại ngữ online', 'WebNgoaiNgu, hoc ngoai ngu, hoc tieng anh, hoc tieng nhat, tieng anh, tieng nhat', 'https://i.imgur.com/0zwVcsy.png', 'Thinh Le', 'OFF', 'Website bảo trì hệ thống. Vui lòng truy cập sau.', '36428901594-en4o42uob13kheonlh8jejhrbi024ejl.apps.googleusercontent.com', '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', 'http://localhost/webhocngoaingu/public/callback/google_callback.php', '233241026054985', '60147d07db3c2f0b760be35e4ebdcebb', 'http://localhost/webhocngoaingu/public/callback/facebook_callback.php', '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', 'http://localhost/webhocngoaingu', 'https://i.imgur.com/TgJcJp9.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoatdong`
--

CREATE TABLE `hoatdong` (
  `MaHoatDong` int(11) NOT NULL,
  `TenHoatDong` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp(),
  `TaiKhoan` varchar(100) NOT NULL,
  `MaLoaiHoatDong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoctumoi`
--

CREATE TABLE `hoctumoi` (
  `TaiKhoan` varchar(100) NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp(),
  `Token` varchar(20) NOT NULL,
  `TienTrinh` int(11) NOT NULL DEFAULT 0,
  `SoCauHienTai` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoctuvung`
--

CREATE TABLE `hoctuvung` (
  `TaiKhoan` varchar(100) NOT NULL,
  `MaTuVung` int(11) NOT NULL,
  `MaBaiHoc` int(11) NOT NULL,
  `MaKhoaHoc` int(11) NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp(),
  `ThoiGianOnTap` datetime DEFAULT NULL,
  `TuKho` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoahoc`
--

CREATE TABLE `khoahoc` (
  `MaKhoaHoc` int(11) NOT NULL,
  `TenKhoaHoc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `LinkAnh` text NOT NULL,
  `NoiDung` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SoHocVien` int(11) NOT NULL DEFAULT 0,
  `NguoiTao` varchar(100) NOT NULL,
  `TrangThaiKhoaHoc` tinyint(1) NOT NULL DEFAULT 1,
  `ThoiGianTaoKhoaHoc` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khoahoc`
--

INSERT INTO `khoahoc` (`MaKhoaHoc`, `TenKhoaHoc`, `LinkAnh`, `NoiDung`, `SoHocVien`, `NguoiTao`, `TrangThaiKhoaHoc`, `ThoiGianTaoKhoaHoc`) VALUES
(1, 'Tiếng Anh', 'https://i.imgur.com/Ix8u2gB.jpg', 'Tự giới thiệu bản thân, khám phá xung quanh, và học các câu nói đời thường hữu ích sẽ làm mọi người cười ngạc nhiên.', 19, 'admin', 1, '2023-04-15 04:24:53'),
(2, 'Tiếng Nhật', 'https://i.imgur.com/LpuAoqN.jpg', 'Tự giới thiệu bản thân, khám phá xung quanh, và học các câu nói đời thường hữu ích sẽ làm mọi người cười ngạc nhiên.', 9, 'admin', 1, '2023-04-15 04:24:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaihoatdong`
--

CREATE TABLE `loaihoatdong` (
  `MaLoaiHoatDong` int(11) NOT NULL,
  `TenLoaiHoatDong` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `LinkAnh` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loaihoatdong`
--

INSERT INTO `loaihoatdong` (`MaLoaiHoatDong`, `TenLoaiHoatDong`, `LinkAnh`) VALUES
(1, 'Hệ thống', '/assets/img/active-login.svg'),
(2, 'Học tập', '/assets/img/study-book.svg'),
(3, 'Tài khoản', '/assets/img/file.svg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `message_chatbot_room`
--

CREATE TABLE `message_chatbot_room` (
  `MaTinNhan` int(11) NOT NULL,
  `MaRoom` int(11) NOT NULL,
  `NoiDung` text NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp(),
  `Role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `muctieuhoctap`
--

CREATE TABLE `muctieuhoctap` (
  `MaMucTieu` int(11) NOT NULL,
  `TenMucTieu` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NoiDungMucTieu` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SoLuongTuMoi` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `muctieuhoctap`
--

INSERT INTO `muctieuhoctap` (`MaMucTieu`, `TenMucTieu`, `NoiDungMucTieu`, `SoLuongTuMoi`) VALUES
(1, 'Thông thường', '5 từ mới', 5),
(2, 'Đều đặn', '10 từ mới', 10),
(3, 'Nghiêm túc', '15 từ mới', 15),
(4, 'Cao độ', '20 từ mới', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `TaiKhoan` varchar(100) NOT NULL,
  `MatKhau` text NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `KichHoatEmail` tinyint(1) NOT NULL DEFAULT 0,
  `TokenKichHoatEmail` text DEFAULT NULL,
  `ThoiGianTokenKichHoatEmail` datetime DEFAULT NULL,
  `TokenKhoiPhucMatKhau` text DEFAULT NULL,
  `ThoiGianTokenKhoiPhucMatKhau` datetime DEFAULT NULL,
  `FacebookID` text DEFAULT NULL,
  `AnhDaiDien` text DEFAULT NULL,
  `NgayDangKy` datetime NOT NULL DEFAULT current_timestamp(),
  `TenHienThi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IPAddress` text NOT NULL,
  `KinhNghiem` int(11) NOT NULL DEFAULT 0,
  `TongKinhNghiem` int(11) NOT NULL DEFAULT 0,
  `CapDo` int(11) NOT NULL DEFAULT 1,
  `MaQuyenHan` int(11) NOT NULL,
  `MaMucTieu` int(11) NOT NULL,
  `TrangThai` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`TaiKhoan`, `MatKhau`, `Email`, `KichHoatEmail`, `TokenKichHoatEmail`, `ThoiGianTokenKichHoatEmail`, `TokenKhoiPhucMatKhau`, `ThoiGianTokenKhoiPhucMatKhau`, `FacebookID`, `AnhDaiDien`, `NgayDangKy`, `TenHienThi`, `IPAddress`, `KinhNghiem`, `TongKinhNghiem`, `CapDo`, `MaQuyenHan`, `MaMucTieu`, `TrangThai`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', NULL, 0, '', NULL, NULL, NULL, NULL, 'https://i.imgur.com/2U2xyPR.png', '2023-05-26 08:15:24', 'Admin', '::1', 0, 0, 1, 2, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ontaploai1`
--

CREATE TABLE `ontaploai1` (
  `TaiKhoan` varchar(100) NOT NULL,
  `Token` varchar(20) NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp(),
  `MaTuVung` int(11) NOT NULL,
  `MaKhoaHoc` int(11) NOT NULL,
  `MaBaiHoc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ontapsieutoctuvung`
--

CREATE TABLE `ontapsieutoctuvung` (
  `TaiKhoan` varchar(100) NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp(),
  `Token` varchar(20) NOT NULL,
  `SoMang` int(11) NOT NULL DEFAULT 0,
  `SoCauHienTai` int(11) NOT NULL DEFAULT 0,
  `SoCauDung` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ontaptuvung`
--

CREATE TABLE `ontaptuvung` (
  `TaiKhoan` varchar(100) NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp(),
  `Token` varchar(20) NOT NULL,
  `TienTrinh` int(11) NOT NULL DEFAULT 0,
  `SoCauHienTai` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ontaptuvungkho`
--

CREATE TABLE `ontaptuvungkho` (
  `TaiKhoan` varchar(100) NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp(),
  `Token` varchar(20) NOT NULL,
  `TienTrinh` int(11) NOT NULL DEFAULT 0,
  `SoCauHienTai` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyenhan`
--

CREATE TABLE `quyenhan` (
  `MaQuyenHan` int(11) NOT NULL,
  `TenQuyenHan` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quyenhan`
--

INSERT INTO `quyenhan` (`MaQuyenHan`, `TenQuyenHan`) VALUES
(1, 'Thành viên'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongbaoemail`
--

CREATE TABLE `thongbaoemail` (
  `MaThongBao` int(11) NOT NULL,
  `TaiKhoan` varchar(100) NOT NULL,
  `CapNhatMoi` tinyint(1) NOT NULL DEFAULT 1,
  `BaoCaoTienTrinhHocTap` tinyint(1) NOT NULL DEFAULT 1,
  `NhacNhoTienTrinhHocTap` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thongbaoemail`
--

INSERT INTO `thongbaoemail` (`MaThongBao`, `TaiKhoan`, `CapNhatMoi`, `BaoCaoTienTrinhHocTap`, `NhacNhoTienTrinhHocTap`) VALUES
(22, 'admin', 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tuvung`
--

CREATE TABLE `tuvung` (
  `MaTuVung` int(11) NOT NULL,
  `MaBaiHoc` int(11) NOT NULL,
  `MaKhoaHoc` int(11) NOT NULL,
  `NoiDungTuVung` varchar(100) NOT NULL,
  `DichNghia` text NOT NULL,
  `HinhAnh` text NOT NULL,
  `AmThanh` text DEFAULT NULL,
  `Diem` int(11) NOT NULL DEFAULT 0,
  `TrangThaiTuVung` tinyint(1) NOT NULL DEFAULT 1,
  `ThoiGianTaoTuVung` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tuvung`
--

INSERT INTO `tuvung` (`MaTuVung`, `MaBaiHoc`, `MaKhoaHoc`, `NoiDungTuVung`, `DichNghia`, `HinhAnh`, `AmThanh`, `Diem`, `TrangThaiTuVung`, `ThoiGianTaoTuVung`) VALUES
(1, 1, 1, 'hello', 'xin chào', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1682004579/how-to-say-hello-post-pxjz1kub5rl4fwv4qq4rklmce73rupgejfu5y2sfpk_qmr53x.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1682004537/cs_4202023_8_28_44_1_byamby.wav', 10, 1, '2023-04-15 05:38:11'),
(1, 1, 2, 'hē!', 'wow, tôi không biết điều đó!', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681549708/emotional-little-boy-holding-paper-text-i-don-t-know-light-blue-background-emotional-little-boy-holding-paper-text-i-201746170_pml43t.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681549869/cs_4152023_2_10_52_1_ryvdbp.wav', 10, 1, '2023-04-15 16:11:14'),
(1, 2, 1, 'happy', 'vui', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681565940/unnamed_u8cdgu.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681566215/cs_4152023_6_39_12_1_1_boqdvw.wav', 10, 1, '2023-04-15 05:38:11'),
(1, 2, 2, 'Itai', 'Đau', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681569366/download_a3x9jn.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681569385/cs_4152023_7_29_43_1_weh7i3.wav', 10, 1, '2023-04-15 21:36:28'),
(1, 3, 1, 'food', ' đồ ăn', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681568225/maxresdefault_k43ket.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681568250/cs_4152023_7_17_19_1_jbjmgk.wav', 10, 1, '2023-04-15 21:17:32'),
(1, 3, 2, 'ichi, ni, san, dā!', 'một hai ba wow', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570043/japanese-numbers-ichi-ni-san_il0uue.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570064/cs_4152023_7_47_33_1_e0r4a2.wav', 10, 1, '2023-04-15 21:47:47'),
(1, 4, 1, 'it', ' nó; cái ấy; điều ấy', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570186/mqdefault_ejsni9.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570206/cs_4152023_7_49_58_1_x4vuvx.wav', 10, 1, '2023-04-15 21:50:08'),
(1, 4, 2, 'ī; yoi', 'tốt', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570294/96879_znakkd.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570308/cs_4152023_7_50_53_1_obprkf.wav', 10, 1, '2023-04-15 21:51:51'),
(1, 5, 1, 'English', ' tiếng Anh; người Anh', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570811/download_om0jxf.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570829/cs_4152023_8_0_22_1_nowlg2.wav', 10, 1, '2023-04-15 22:00:31'),
(1, 5, 2, 'dare ?', 'ai ?', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570683/dare_1_ghkcsd.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570691/cs_4152023_7_57_39_1_r4dzqo.wav', 10, 1, '2023-04-15 21:58:14'),
(1, 6, 1, 'a number', 'số', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681571389/1603703755_122035_uz4lmy.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571412/cs_4152023_8_10_5_1_uob3ox.wav', 10, 1, '2023-04-15 22:10:17'),
(1, 6, 2, 'suki desu', 'tôi thích nó', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570951/download_elmvvo.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570961/cs_4152023_8_2_22_1_ytsjhe.wav', 10, 1, '2023-04-15 22:02:43'),
(1, 7, 1, 'a restaurant', ' nhà hàng', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681572754/pngtree-planar-cartoon-street-view-shop-restaurant-and-vendor-elements-png-image_848867_lg18tq.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681572782/cs_4152023_8_32_46_1_n018qr.wav', 10, 1, '2023-04-15 22:33:05'),
(1, 7, 2, 'ashita', 'ngày mai', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681571326/download_rkjpmx.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571336/cs_4152023_8_8_33_1_exupl1.wav', 10, 1, '2023-04-15 22:08:59'),
(1, 8, 1, 'to think', ' nghĩ', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681573898/thinking-in-a-foreign-language-e1479154410182_rqebrg.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681573916/cs_4152023_8_51_49_1_lcragy.wav', 10, 1, '2023-04-15 22:52:01'),
(1, 8, 2, 'o naka ga suki mashita', 'tôi đói', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681571560/download_lgdel3.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571578/cs_4152023_8_12_45_1_zlaxdc.wav', 10, 1, '2023-04-15 22:13:01'),
(1, 9, 1, 'to need', ' cần', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681574295/hands-holding-word-need-diverse-hands-holding-letters-alphabet-created-word-need-vector-illustration-135515983_vy6fyh.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681574315/cs_4152023_8_58_28_1_tlm8gp.wav', 10, 1, '2023-04-15 22:58:37'),
(1, 9, 2, 'nama bīru', 'bia tươi', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681571877/e9541e49fd096ab62e31de8c1bf865a8_pgmniv.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571885/cs_4152023_8_17_12_1_iehq0j.wav', 10, 1, '2023-04-15 22:18:08'),
(1, 10, 2, 'ojama shi-masu', 'xin chào', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681572134/ojamashimasu-screen_keocnv.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681572143/cs_4152023_8_22_8_1_xzxgpx.wav', 10, 1, '2023-04-15 22:22:25'),
(1, 11, 2, 'ōkī', 'lớn', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681572430/8110842-1597464164213-a2d87721e20e9_d7e640.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681572436/cs_4152023_8_26_47_1_z1ur0q.wav', 10, 1, '2023-04-15 22:27:18'),
(1, 12, 2, 'sā, iki-mashō', 'đến thôi đi nào', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681572677/download_guzyxt.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681572685/cs_4152023_8_31_3_1_nrfxrd.wav', 10, 1, '2023-04-15 22:31:27'),
(1, 13, 2, 'hakubutsukan', 'bảo tàng', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681572991/3108dieukhac_kmata5.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681572998/cs_4152023_8_36_25_1_h8jfu0.wav', 10, 1, '2023-04-15 22:36:42'),
(2, 1, 1, 'hi', 'chào', 'https://play-lh.googleusercontent.com/9Wubor79UPrnd2FVUYr7l8YDC5z6fmqxYkAQTp4R9GWNgeSO2k_-qqz467GjgEikx6s', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1682004625/cs_4202023_8_30_13_1_chsszo.wav', 10, 1, '2023-04-15 05:38:11'),
(2, 1, 2, 'dōmo', 'Chào bạn, Cảm ơn', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681568040/Learning-Japanese-from-zero-1-1-741x419_i9gppx.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681568343/cs_4152023_7_18_2_1_iybczp.wav', 10, 1, '2023-04-15 21:19:05'),
(2, 2, 1, 'sad', ' buồn', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681566272/capsule_616x353_btuwcu.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681566294/cs_4152023_6_44_46_1_btuw5m.wav', 10, 1, '2023-04-15 20:46:41'),
(2, 2, 2, 'daijōbu desu ka?', 'Mọi thứ có ổn không ?', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681569540/st_small_507x507-pad_600x600_f8f8f8_pbrh1o.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681569565/cs_4152023_7_39_9_1_okdbp2.wav', 10, 1, '2023-04-15 21:40:15'),
(2, 3, 1, 'bread', ' bánh mì', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681568303/Sandwich-White_c9lmt8.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681568333/cs_4152023_7_18_41_1_unyzrc.wav', 10, 1, '2023-04-15 21:18:56'),
(2, 3, 2, 'yon; shi', 'bốn', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570099/japanese-numbers-ichi-ni-san_wedujz.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570111/cs_4152023_7_48_10_1_qffmw8.wav', 10, 1, '2023-04-15 21:48:33'),
(2, 4, 1, 'it\'s', ' nó là; cái ấy là; điều ấy là...', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570348/images_qdppcf.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570367/cs_4152023_7_52_39_1_dba1jq.wav', 10, 1, '2023-04-15 21:52:49'),
(2, 4, 2, 'koko, ī desu ka?', 'Chỗ này có sẵn', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570368/koko-font_6279acbf0b3f2_wezowz.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570389/cs_4152023_7_52_57_1_qpyjiy.wav', 10, 1, '2023-04-15 21:53:10'),
(2, 5, 1, 'British', ' người Anh', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570907/c6681b5acdfc358bdc5d765aadd2ccb5_p1dnlo.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570928/cs_4152023_8_1_58_1_cyhkb8.wav', 10, 1, '2023-04-15 22:02:11'),
(2, 5, 2, 'anata', 'bạn', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570719/qk_kisama-1-e1608140509566_uwu5yv.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570728/cs_4152023_7_58_32_1_oeaymw.wav', 10, 1, '2023-04-15 21:58:50'),
(2, 6, 1, 'a phone', ' điện thoại', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681571495/Phone-Step-10_hxnojm.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571535/cs_4152023_8_11_55_1_q2zwm2.wav', 10, 1, '2023-04-15 22:12:17'),
(2, 6, 2, 'nihon wa suki desu ka?', 'bạn có thích nhật bản ?', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570993/Nhat-Ban-dat-nuoc-mat-troi-moc-1_mhupmf.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571010/cs_4152023_8_3_17_1_pgfn5y.wav', 10, 1, '2023-04-15 22:03:33'),
(2, 7, 1, 'a table', ' cái bàn', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681572835/1000_F_170942905_mUN3hNMjV8sjzv25hvYKxj4ps4IQssIU_vlq9pn.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681572854/cs_4152023_8_34_5_1_outsgx.wav', 10, 1, '2023-04-15 22:34:16'),
(2, 7, 2, 'mainichi', 'mỗi ngày', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681571369/635a7f5dc10be41aac59716a0295f261_draxwg.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571379/cs_4152023_8_9_19_1_b0yuaq.wav', 10, 1, '2023-04-15 22:09:41'),
(2, 8, 1, 'to be', ' là', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681573969/Dong-tu-to-be_jkcbbd.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681573990/cs_4152023_8_53_3_1_amijkg.wav', 10, 1, '2023-04-15 22:53:13'),
(2, 8, 2, 'nodo ga kawaki mashita', 'tôi khát nước', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681571625/nodogakawakimashita_kevrxq.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571632/cs_4152023_8_13_35_1_oyl70h.wav', 10, 1, '2023-04-15 22:13:55'),
(2, 9, 1, 'help', ' sự giúp đỡ', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681574358/good-little-kid-helping-friend-that-falling-floor_97632-7350_rhyvpa.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681574374/cs_4152023_8_59_28_1_a3fsjr.wav', 10, 1, '2023-04-15 22:59:37'),
(2, 9, 2, 'o mizu', 'nước', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681571914/co-nen-tai-su-dung-nuoc-thai-tu-may-loc-nuoc-ro-5_s0n0zn.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571926/cs_4152023_8_18_37_1_i5hbuj.wav', 10, 1, '2023-04-15 22:18:48'),
(2, 10, 2, 'shōkai suru', 'giới thiệu', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681572213/download_aigxhp.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681572221/cs_4152023_8_23_10_1_gaox6l.wav', 10, 1, '2023-04-15 22:23:43'),
(2, 11, 2, 'chīsai', 'nhỏ', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681572461/social_hup8te.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681572471/cs_4152023_8_27_27_1_fnu916.wav', 10, 1, '2023-04-15 22:27:53'),
(2, 12, 2, 'doko ni iki-mashō ka?', 'chúng ta sẽ đi đâu ?', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681572729/where-is-it-in-Japanese_bikshm.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681572741/cs_4152023_8_31_57_1_h5ti97.wav', 10, 1, '2023-04-15 22:32:29'),
(2, 13, 2, 'shōten gai', 'khu mua sắm', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681573041/khu-mua-sam-a1_x0qf97.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681573053/cs_4152023_8_37_6_1_iybtbr.wav', 10, 1, '2023-04-15 22:37:26'),
(3, 1, 1, 'what\'s up?', 'có gì mới không?', 'https://media.zim.vn/63ec6198cc4e5c2417660580/cach-dung-whats-up-trong-cau.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1682004660/cs_4202023_8_30_49_1_gdjmrh.wav', 10, 1, '2023-04-15 05:38:11'),
(3, 1, 2, 'Sugoi!', 'khó tin', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681568404/cach-su-dung-sugoi-trong-anime_vm4svg.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681568508/cs_4152023_7_20_24_1_tf0qyb.wav', 10, 1, '2023-04-15 21:21:52'),
(3, 2, 1, 'angry', ' giận dữ', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681566450/images_rrv4jr.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681566487/cs_4152023_6_47_49_1_xrbxet.wav', 10, 1, '2023-04-15 20:48:09'),
(3, 2, 2, 'daijōbu desu', 'Mọi thứ đều ổn', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681569659/flat_750x1000_075_f_ncfm8h.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681569712/cs_4152023_7_41_12_1_ccdpyb.wav', 10, 1, '2023-04-15 21:41:56'),
(3, 3, 1, 'pasta', ' mì Ý, mì nui', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681568390/Puttanesca-fd5810c_cdugec.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681568410/cs_4152023_7_20_2_1_t9hvx5.wav', 10, 1, '2023-04-15 21:20:13'),
(3, 3, 2, 'go', 'năm', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570130/japanese-numbers-ichi-ni-san_eohiip.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570148/cs_4152023_7_48_58_1_lwcanw.wav', 10, 1, '2023-04-15 21:49:11'),
(3, 4, 1, 'to like', ' thích', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570431/images_mbfrs1.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570453/cs_4152023_7_54_4_1_clohkq.wav', 10, 1, '2023-04-15 21:54:17'),
(3, 4, 2, 'soko', 'ở đó', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570421/maxresdefault_ckw4iw.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570430/cs_4152023_7_53_25_1_agbtzg.wav', 10, 1, '2023-04-15 21:53:53'),
(3, 5, 1, 'American', 'người Mỹ', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570976/cute-boy-cartoon-waving-with-american-flag-vector-1429395_c7uudf.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570995/cs_4152023_8_3_8_1_ga75hw.wav', 10, 1, '2023-04-15 22:03:19'),
(3, 5, 2, 'watashi tachi', 'chúng ta', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570754/40813_kbih92.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570761/cs_4152023_7_59_6_1_vn71sw.wav', 10, 1, '2023-04-15 21:59:57'),
(3, 6, 1, 'a phone number', ' số điện thoại', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681571598/U18-L1-3-3-xbyscqmzqrtdccdj8062b_riqh0k.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571620/cs_4152023_8_13_34_1_bvz7kh.wav', 10, 1, '2023-04-15 22:13:43'),
(3, 6, 2, 'donna tokoro ga suki desu ka?', 'Bạn thích nó chỗ nào ?', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681571086/slide_7_kkm2th.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571095/cs_4152023_8_4_27_1_jw0txz.wav', 10, 1, '2023-04-15 22:04:57'),
(3, 7, 1, 'a menu', ' thực đơn', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681573665/stock-vector-restaurant-menu-cartoon-hand-drawn-image-original-colorful-artwork-comic-childish-style-drawing-697323787_pdetvj.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681573685/cs_4152023_8_47_55_1_payaic.wav', 10, 1, '2023-04-15 22:48:08'),
(3, 7, 2, 'senshū', 'tuần trước', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681571409/senshu-ikeda-bank2584.logowik.com_okkhr9.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571429/cs_4152023_8_10_17_1_eo7xbr.wav', 10, 1, '2023-04-15 22:10:32'),
(3, 8, 1, 'he\'s', ' anh ấy là', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681574032/maxresdefault_kttvmm.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681574052/cs_4152023_8_54_2_1_ddvlsr.wav', 10, 1, '2023-04-15 22:54:13'),
(3, 8, 2, 'taberu', 'tới ăn', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681571661/download_dckbp5.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571677/cs_4152023_8_14_12_1_cd08r8.wav', 10, 1, '2023-04-15 22:14:26'),
(3, 9, 1, 'I need help', ' tôi cần sự giúp đỡ', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681574432/unhappy-depressed-man-need-help-vector-illustration-concept-with-flat-cartoon-graphic-sadness-and-stressed-expression-TBFW34_fo7lvs.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681574453/cs_4152023_9_0_45_1_ol9zub.wav', 10, 1, '2023-04-15 23:00:55'),
(3, 9, 2, 'ocha', 'trà nhật bản', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681571954/Matcha-1024x683_ugur8v.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571959/cs_4152023_8_19_2_1_c0ijbg.wav', 10, 1, '2023-04-15 22:19:21'),
(3, 10, 2, 'watashi no kazoku o shōkai shi-masu', 'xin giới thiệu về gia đình', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681572256/question_lmuywj.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681572266/cs_4152023_8_24_6_1_fhf4vi.wav', 10, 1, '2023-04-15 22:24:28'),
(3, 11, 2, 'segatakai', 'cao', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681572495/Segatakai_fqzgd4.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681572504/cs_4152023_8_28_7_1_zqyd6e.wav', 10, 1, '2023-04-15 22:28:26'),
(3, 12, 2, 'o shiro', 'lâu đài', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681572801/806806319942113776090081901210429405790208n-1578477114408605521575_yu73b0.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681572811/cs_4152023_8_33_9_1_sjnov5.wav', 10, 1, '2023-04-15 22:33:33'),
(3, 13, 2, 'kouen', 'công viên', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681573103/cong-vien-150ha-tai-quan-12-nam-2020_l2svls.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681573113/cs_4152023_8_38_11_1_j1blgb.wav', 10, 1, '2023-04-15 22:38:35'),
(4, 1, 1, 'let\'s go!', 'đi thôi!', 'https://img.freepik.com/free-vector/lets-go-text-icon-white-background_1308-92274.jpg?w=2000', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1682004708/cs_4202023_8_31_33_1_dk5l0c.wav', 10, 1, '2023-04-15 05:38:11'),
(4, 1, 2, 'Yabai', 'Ôi !!!', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681568570/what-does-yabai-mean-_vjolmx.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681568749/cs_4152023_7_25_28_1_iysgpu.wav', 10, 1, '2023-04-15 21:25:52'),
(4, 2, 1, 'wrong', ' sai', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681566600/wrong-stamp-1_tfipu2.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681566628/cs_4152023_6_50_13_1_xzfjkr.wav', 10, 1, '2023-04-15 20:50:30'),
(4, 2, 2, 'hontō ni?', 'Thật sao ?', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681569774/st_small_845x845-pad_1000x1000_f8f8f8_i7q4kj.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681569810/cs_4152023_7_43_18_1_hgw4jm.wav', 10, 1, '2023-04-15 21:43:33'),
(4, 3, 1, 'rice', ' gạo', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681568474/Buford-FrenchRice_czbc8c.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681568501/cs_4152023_7_21_33_1_wwdv9f.wav', 10, 1, '2023-04-15 21:21:43'),
(4, 3, 2, 'roku', 'sáu', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570171/japanese-numbers-ichi-ni-san_xwlsq9.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570182/cs_4152023_7_49_28_1_vfigxw.wav', 10, 1, '2023-04-15 21:49:44'),
(4, 4, 1, 'delicious', 'ngon', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570502/Delicious__yummy__lecker__delicioso_from_Openclipart.org.svg_lqtkl8.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570521/cs_4152023_7_55_13_1_n5mcxh.wav', 10, 1, '2023-04-15 21:55:35'),
(4, 4, 2, 'asoko', 'đằng kia', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570505/asoko_rqdylw.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570523/cs_4152023_7_55_10_1_dh3wmb.wav', 10, 1, '2023-04-15 21:55:25'),
(4, 5, 1, 'Vietnamese', ' Người Việt; tiếng Việt', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681571084/vietnam-cartoon-asean-cute-62429864_yn3moe.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571107/cs_4152023_8_4_59_1_ntfdi0.wav', 10, 1, '2023-04-15 22:05:10'),
(4, 5, 2, 'anata tachi', 'anh bạn', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570829/download_gcyy56.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570837/cs_4152023_8_0_18_1_dssapn.wav', 10, 1, '2023-04-15 22:00:39'),
(4, 6, 1, 'zero', ' số không', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681571756/14758373-number-zero-funny-cartoon-mascot-character_jn7xvk.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571776/cs_4152023_8_16_9_1_barvnl.wav', 10, 1, '2023-04-15 22:16:19'),
(4, 6, 2, 'tabemono', 'thức ăn', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681571158/irasutoya_Clip_Art_Tabemono_Ryouri_Step_Up_Japanese_Fran_Wrigley_Japanese_Lessons_fvepe0.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571171/cs_4152023_8_5_57_1_zni4qw.wav', 10, 1, '2023-04-15 22:06:13'),
(4, 7, 1, 'a bill', ' hoá đơn', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681573723/110714894-cartoon-doodle-bill-in-envelope_u9rfa8.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681573741/cs_4152023_8_48_54_1_rvkno4.wav', 10, 1, '2023-04-15 22:49:03'),
(4, 7, 2, 'konshū', 'tuần này', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681571468/91eab11a4a41725484a67f24132bd9bc_rl3pje.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571475/cs_4152023_8_10_51_1_gxsvbg.wav', 10, 1, '2023-04-15 22:11:17'),
(4, 8, 1, 'she\'s', ' cô ấy là', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681574084/download_y2hmvn.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681574101/cs_4152023_8_54_54_1_yb9zqv.wav', 10, 1, '2023-04-15 22:55:06'),
(4, 8, 2, 'tabe masu', 'tới ăn masu', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681571750/download_m7hkzm.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571759/cs_4152023_8_15_39_1_tifvxm.wav', 10, 1, '2023-04-15 22:16:01'),
(4, 9, 1, 'to say', ' nói', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681574514/little-kid-say-hello-friend-go-school-together_97632-6483_kotdd4.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681574533/cs_4152023_9_2_7_1_smimwx.wav', 10, 1, '2023-04-15 23:02:15'),
(4, 9, 2, 'kōcha', 'không phải trà nhật bản', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681572009/download_w4hmh9.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681572023/cs_4152023_8_19_32_1_xisnub.wav', 10, 1, '2023-04-15 22:20:15'),
(4, 10, 2, 'haha', 'mẹ của tôi', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681572326/kanji-haha_ktpwba.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681572336/cs_4152023_8_25_12_1_xmcyhz.wav', 10, 1, '2023-04-15 22:25:38'),
(4, 11, 2, 'segahikui', 'ngắn', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681572562/download_onwa8g.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681572575/cs_4152023_8_28_47_1_ytd95j.wav', 10, 1, '2023-04-15 22:29:37'),
(4, 12, 2, 'o shiro ni iki-tai desu', 'tôi muốn tời toà lâu đài', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681572835/806806319942113776090081901210429405790208n-1578477114408605521575_c4fnw7.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681572850/cs_4152023_8_33_58_1_tagzrd.wav', 10, 1, '2023-04-15 22:34:13'),
(4, 13, 2, 'o matsuri', 'lễ hội', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681573143/anh-t48-49-2_s4joec.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681573148/cs_4152023_8_38_53_1_ptulx7.wav', 10, 1, '2023-04-15 22:39:12'),
(5, 1, 1, 'cheers!', 'zô!', 'https://img.freepik.com/premium-vector/cheers-champagne-hand-drawn-lettering-illustration-illustration-isolated-white-background_218179-81.jpg?w=2000', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1682004758/cs_4202023_8_32_26_1_qqephh.wav', 10, 1, '2023-04-15 05:38:11'),
(5, 1, 2, 'Yoi', 'Tốt', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681568798/96879_u6l7ai.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681568891/cs_4152023_7_27_49_1_igultu.wav', 10, 1, '2023-04-15 21:28:13'),
(5, 2, 1, 'right', ' đúng', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681566680/images_aqrkvv.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681566702/cs_4152023_6_51_34_1_bj4jib.wav', 10, 1, '2023-04-15 20:51:44'),
(5, 2, 2, 'dame desu', 'Nó thực sự không tốt', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681569949/201905020056490_tan0l5.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681569940/cs_4152023_7_44_29_1_iwfxtg.wav', 10, 1, '2023-04-15 21:46:05'),
(5, 3, 1, 'a potato', ' khoai tây', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681568541/313dtY-LOEL._SX522__ydfx9n.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681568566/cs_4152023_7_22_34_1_oq14tv.wav', 10, 1, '2023-04-15 21:22:48'),
(5, 3, 2, 'shichi; nana', 'bảy', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570208/japanese-numbers-ichi-ni-san_ogo7of.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570220/cs_4152023_7_50_0_1_pfzwy8.wav', 10, 1, '2023-04-15 21:50:23'),
(5, 4, 1, 'disgusting', ' kinh tởm', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570581/cdn.langeek_vqaqva.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570601/cs_4152023_7_56_33_1_aumeka.wav', 10, 1, '2023-04-15 21:56:43'),
(5, 4, 2, 'yokatta!', 'tôi rất vui', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570602/6717068_0_gecx3u.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570612/cs_4152023_7_56_11_1_fmdvfy.wav', 10, 1, '2023-04-15 21:56:53'),
(5, 5, 1, 'I\'m Vietnamese', ' tôi là người Việt', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681571242/maxresdefault_qkiswj.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571264/cs_4152023_8_7_34_1_v0bvqx.wav', 10, 1, '2023-04-15 22:07:48'),
(5, 5, 2, 'kare', 'anh ấy', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681570871/download_yqfnks.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681570880/cs_4152023_8_0_55_1_ajpu2o.wav', 10, 1, '2023-04-15 22:01:23'),
(5, 6, 1, 'one', ' một', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681571819/14758379-number-one-funny-cartoon-mascot-character_uydcbb.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571839/cs_4152023_8_17_10_1_s1efku.wav', 10, 1, '2023-04-15 22:17:23'),
(5, 6, 2, 'washoku', 'truyền thống thức ăn Nhật Bản', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681571216/818AP3KzmSL_p198ux.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571224/cs_4152023_8_6_47_1_lze0e2.wav', 10, 1, '2023-04-15 22:07:07'),
(5, 7, 1, 'a knife', ' dao', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681573783/cute-cartoon-kitchen-knife-drawing-simple-vector-clip-art-illustration-2H00MF6_nzrl7u.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681573804/cs_4152023_8_49_57_1_bcexhr.wav', 10, 1, '2023-04-15 22:50:08'),
(5, 7, 2, 'raishū', 'tuần tới', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681571500/91eab11a4a41725484a67f24132bd9bc_cukr6q.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571509/cs_4152023_8_11_35_1_bnr5ya.wav', 10, 1, '2023-04-15 22:11:51'),
(5, 8, 1, 'wonderful', ' kỳ diệu', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681574182/wonderful-word-lettering-vector-14450345_njcxeu.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681574202/cs_4152023_8_56_35_1_qaqdxz.wav', 10, 1, '2023-04-15 22:56:44'),
(5, 8, 2, 'nanika', 'một số thứ', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681571788/Nanika_uvvei4.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681571795/cs_4152023_8_16_19_1_xodo6f.wav', 10, 1, '2023-04-15 22:16:37'),
(5, 9, 1, 'how do you say ... in English?', 'bạn nói ... như thế nào trong tiếng Anh?', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681574647/how_do_you_say_de_pronto_in_english_rqvy2b.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681574669/cs_4152023_9_4_19_1_nkmngr.wav', 10, 1, '2023-04-15 23:04:31'),
(5, 9, 2, 'o ryōri', 'cái đĩa', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681572067/osechi-jyubako-s1830761654_fvijcr.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681572084/cs_4152023_8_20_58_1_jweqnm.wav', 10, 1, '2023-04-15 22:21:26'),
(5, 10, 2, 'haha no risa desu', 'đây là mẹ tôi, Risa', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681572363/kanji-haha_qviczt.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681572376/cs_4152023_8_25_58_1_jv8lxf.wav', 10, 1, '2023-04-15 22:26:19'),
(5, 11, 2, 'kakkoī', 'đẹp trai', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681572606/Kakkoii_wmdgnq.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681572618/cs_4152023_8_29_54_1_eonmvx.wav', 10, 1, '2023-04-15 22:30:20'),
(5, 12, 2, 'omiyage', 'món quà lưu niệm', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681572917/download_mndbw4.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681572928/cs_4152023_8_34_59_1_abbwx4.wav', 10, 1, '2023-04-15 22:35:30'),
(5, 13, 2, 'ichiba', 'siêu thị', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681573175/pct-quyen-kiem-tra-tai-sieu-thi2-0957_jjslcm.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681573192/cs_4152023_8_39_38_1_jj19x3.wav', 10, 1, '2023-04-15 22:39:54'),
(6, 1, 1, 'thank you', 'cảm ơn', 'https://img.freepik.com/free-vector/thank-you-card-colorful-watercolor-floral-with-gold-frame_65186-2978.jpg?w=2000', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1682004802/cs_4202023_8_33_4_1_gvqjib.wav', 10, 1, '2023-04-15 05:38:11'),
(6, 2, 1, 'tired', ' mệt', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681566783/young-good-looking-man-feeling-tired-sick_97632-4872_bhvicj.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681566808/cs_4152023_6_53_20_1_lvflql.wav', 10, 1, '2023-04-15 20:53:31'),
(6, 3, 1, 'a vegetable', 'rau', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681803005/Broccoli-florets_ln0jvs.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681803023/cs_4182023_0_30_16_1_xsjdgl.wav', 10, 1, '2023-04-18 14:30:25'),
(6, 4, 1, 'awesome', ' tuyệt vời', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681869640/animated-thumbs_yumepx.gif', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681869666/cs_4182023_19_0_55_1_datijf.wav', 10, 1, '2023-04-19 09:01:10'),
(7, 1, 1, 'yes', 'vâng', 'https://play-lh.googleusercontent.com/hCGA2rbAHnckOoDDl4wzBfJLCkympSDV7XLFBxukNYM1hdoUnRSpJr18_RvIAoLU2ig', 'https://www.oxfordlearnersdictionaries.com/media/english/us_pron/y/yes/yes__/yes__us_2.mp3', 10, 1, '2023-04-15 05:38:11'),
(7, 2, 1, 'sick', ' ốm', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681567265/sad-cute-kid-girl-lay-bed-sick_97632-2439_veegyz.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681567293/cs_4152023_7_1_20_1_odzgia.wav', 10, 1, '2023-04-15 21:01:37'),
(7, 3, 1, 'fruit', 'hoa quả', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681803094/download_yderu6.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681803113/cs_4182023_0_31_45_1_yf4rnd.wav', 10, 1, '2023-04-18 14:31:59'),
(7, 4, 1, 'to do', 'awesome', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681869721/download_icat7t.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681869763/cs_4182023_19_2_10_1_zkkvd2.wav', 10, 1, '2023-04-19 09:02:50'),
(8, 1, 1, 'no', 'không', 'https://erikjanlantink.com/wp-content/uploads/2022/08/Web_sayingNo.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1682004846/cs_4202023_8_33_56_1_ucd8ml.wav', 10, 1, '2023-04-15 05:38:11'),
(8, 2, 1, 'hungry', ' đói', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681567332/hungry_1000x_qdrerb.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681567354/cs_4152023_7_2_26_1_h7k7hs.wav', 10, 1, '2023-04-15 21:02:38'),
(8, 3, 1, 'meat', 'thịt', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681803421/87916153-meat-set-made-in-a-cartoon-style-on-white-background_cqvll4.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681803440/cs_4182023_0_37_13_1_slknew.wav', 10, 1, '2023-04-18 14:37:22'),
(8, 4, 1, 'don\'t', ' không làm, đừng làm', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681869838/images_sfoooe.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681869861/cs_4182023_19_4_14_1_uwkbug.wav', 10, 1, '2023-04-19 09:04:24'),
(9, 1, 1, 'bye', 'tạm biệt', 'https://i.pinimg.com/236x/ec/c6/8e/ecc68e64677d55433d833ac1e6a713fd.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1682004878/cs_4202023_8_34_28_1_busumo.wav', 10, 1, '2023-04-15 09:06:10'),
(9, 2, 1, 'thirsty', ' khát', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681567424/happy-cute-kid-boy-feels-so-thirsty-because-hot-weather-summer-season_97632-3422_kstexg.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681567450/cs_4152023_7_3_59_1_oxeqnh.wav', 10, 1, '2023-04-15 21:04:35'),
(9, 3, 1, 'salad', ' xa lát', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681803514/pngtree-cartoon-salad-png-image_6447843_zzhanl.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681803536/cs_4182023_0_38_47_1_akzp3u.wav', 10, 1, '2023-04-18 14:38:59'),
(9, 4, 1, 'and', 'và', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681870029/MC_SightWords-And_iktvdr.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681870047/cs_4182023_19_7_20_1_bgmbpx.wav', 10, 1, '2023-04-19 09:07:52'),
(10, 1, 1, 'please', 'làm ơn', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681538008/please-la-gi_qfj9tm.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681538106/cs_4142023_22_49_15_1_rlivxp.wav', 10, 1, '2023-04-15 12:55:08'),
(10, 2, 1, 'a little', ' một chút', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681567546/just-little-bit-12978303_dh1h3o.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681567575/cs_4152023_7_6_8_1_brtqux.wav', 10, 1, '2023-04-15 21:06:19'),
(10, 3, 1, 'an apple', ' quả táo', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681803665/download_rcuz1f.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681803686/cs_4182023_0_41_15_1_obmobp.wav', 10, 1, '2023-04-18 14:41:30'),
(10, 4, 1, 'I like bread', ' tôi thích bánh mì', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681870145/1600919395_433879_iebjbh.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681870167/cs_4182023_19_9_18_1_jchb0v.wav', 10, 1, '2023-04-19 09:09:30'),
(11, 1, 1, 'I\'m sorry', 'xin lỗi', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681539387/nhung-cach-noi-xin-loi-trong-t-4543-3726-1498809820_smrtpb.jpg', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681539387/nhung-cach-noi-xin-loi-trong-t-4543-3726-1498809820_smrtpb.jpg', 10, 1, '2023-04-15 13:17:57'),
(11, 2, 1, 'not', 'không', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681800788/download_epmklm.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681801155/cs_4172023_23_58_50_1_e1u8dy.wav', 10, 1, '2023-04-18 13:59:18'),
(11, 3, 1, 'a banana', ' quả chuối', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681803732/banana-cartoon-illustration_53734-31_m9c5g0.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681803763/cs_4182023_0_42_25_1_fb2x3c.wav', 10, 1, '2023-04-18 14:42:45'),
(11, 4, 1, 'I don\'t like ...', ' tôi không thích ...', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681870251/1000_F_162349888_Q2OLyDJJzWHNKD0ZzTkN8g3TMrVHgOrx_nd1otq.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681870276/cs_4182023_19_11_7_1_hwycov.wav', 10, 1, '2023-04-19 09:11:19'),
(12, 1, 1, 'good morning', 'chào buổi sáng', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681547181/nPw5pzlOnN6FiT35ok2EvSMt6wEhUlqLx1nXNEoU_m0tvgh.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681547202/cs_4152023_1_22_34_1_oz7lhs.wav', 10, 1, '2023-04-15 15:30:50'),
(12, 2, 1, 'now', 'bây giờ', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681801205/iStock_000009612455XSmall_NOW_ridtbq.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681801270/cs_4182023_0_0_42_1_mlo6zg.wav', 10, 1, '2023-04-18 14:01:18'),
(12, 3, 1, 'an orange', ' quả cam', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681803816/360_F_551954354_yD30a0MdXJ7eDJuDopA8SLpwlndUCsoZ_h3hmmh.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681803834/cs_4182023_0_43_46_1_wrsmdy.wav', 10, 1, '2023-04-18 14:43:57'),
(12, 4, 1, 'I don\'t like pasta', ' tôi không thích mì Ý', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681870324/1636044367_16002_url_c54ove.gif', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681870343/cs_4182023_19_12_16_1_rh8f4s.wav', 10, 1, '2023-04-19 09:12:33'),
(13, 1, 1, 'good night', 'chúc buổi tối tốt lành; chúc ngủ ngon', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681548680/good-night-sweet-dreams-glowing-lettering-design_1017-26918_kmegjj.avif', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681548704/cs_4152023_1_51_33_1_zn8m3b.wav', 10, 1, '2023-04-15 15:51:50'),
(13, 2, 1, 'I\'m tired', ' tôi mệt', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681801452/download_zrblwr.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681801489/cs_4182023_0_4_31_1_uhhujt.wav', 10, 1, '2023-04-18 14:04:59'),
(13, 3, 1, 'a lemon', ' quả chanh', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681803890/360_F_288509750_Rx3mpwXN4jaSrbQx1uirbUSMmcRWm8I4_rcvco4.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681803906/cs_4182023_0_45_0_1_xicpe1.wav', 10, 1, '2023-04-18 14:45:10'),
(13, 4, 1, 'I like oranges', ' tôi thích cam', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681870452/axTBApzxeyu9sfqP3uVIK5fRbGMOX7nAvXg9whNflEd_ev8rbz.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681870476/cs_4182023_19_14_26_1_ovmfdp.wav', 10, 1, '2023-04-19 09:14:38'),
(14, 1, 1, 'okay', ' ô-kê', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681555032/okay-speech-bubble_h0qvls.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681554905/cs_4152023_3_29_49_1_pujp9c.wav', 10, 1, '2023-04-15 17:37:25'),
(14, 2, 1, 'I\'m not tired', ' tôi không mệt', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681801637/maxresdefault_krcxuf.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681801662/cs_4182023_0_7_29_1_naejkn.wav', 10, 1, '2023-04-18 14:07:44'),
(14, 3, 1, 'a snack', ' thức ăn nhẹ, quà vặt', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681803951/download_ufzufc.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681803971/cs_4182023_0_46_3_1_gh9qnz.wav', 10, 1, '2023-04-18 14:46:13'),
(14, 4, 1, 'I don\'t like apples', ' tôi không thích táo', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681870524/1636044388_49945_url_zec1mz.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681870614/cs_4182023_19_16_43_1_dzjc84.wav', 10, 1, '2023-04-19 09:16:56'),
(15, 1, 1, 'see you later', ' gặp lại sau', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681555274/dc35vln-31d840b2-2808-4572-a942-0bebbe455a1d_s1xosd.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681555209/seeyoulater_ry5ym1.wav', 10, 1, '2023-04-15 17:41:33'),
(15, 2, 1, 'you\'re sick', ' bạn ốm', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681801742/360_F_170231405_XCrn3eqgL5pCJlCw1mk8GIx2IhtGa3nx_x9jeab.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681801846/cs_4182023_0_7_29_1_1_orbtce.wav', 10, 1, '2023-04-18 14:10:48'),
(15, 3, 1, 'soup', 'súp', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681804134/fish-soup-bowl-cartoon-tasty-seafood-icon_81894-6633_cvnhis.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681804154/cs_4182023_0_49_5_1_vi5g65.wav', 10, 1, '2023-04-18 14:49:20'),
(15, 4, 1, 'it\'s delicious', ' cái này ngon', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681871126/images_r5gzfo.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681871149/cs_4182023_19_25_41_1_o3mhrw.wav', 10, 1, '2023-04-19 09:26:02'),
(16, 1, 1, 'goodbye', ' tạm biệt', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681559985/download_lukyuv.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681560063/cs_4152023_5_0_11_1_zxaizc.wav', 10, 1, '2023-04-15 19:01:09'),
(16, 2, 1, 'are you hungry now?', ' bây giờ bạn có đói không?', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681802275/happy-cute-kid-girl-feels-hungry-want-eat-thinks-about-food_97632-3403_tqe0z8.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681802295/cs_4182023_0_18_6_1_u7suuz.wav', 10, 1, '2023-04-18 14:18:18'),
(16, 3, 1, 'an egg', ' quả trứng', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681804203/egg-cartoon-style_78370-1042_m3xbtm.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681804220/cs_4182023_0_50_13_1_phoc7e.wav', 10, 1, '2023-04-18 14:50:22'),
(16, 4, 1, 'coffee is delicious', ' cà phê ngon', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681871234/1646_oiv8ki.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681871277/cs_4182023_19_27_50_1_h2jc5v.wav', 10, 1, '2023-04-19 09:28:00'),
(17, 1, 1, 'how', ' như thế nào', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681560157/how-la-gi_1_qaip6l.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681560199/cs_4152023_5_2_52_1_q2aloz.wav', 10, 1, '2023-04-15 19:03:23'),
(17, 2, 1, 'I\'m thirsty', ' tôi khát', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681802342/42d8f532-im-thirsty_bh9bfo.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681802364/cs_4182023_0_19_14_1_n6fjmv.wav', 10, 1, '2023-04-18 14:19:27'),
(17, 3, 1, 'cheese', 'pho mát', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681804337/cheese-cartoon_22350-99_uk3nyv.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681804356/cs_4182023_0_52_29_1_uh9bne.wav', 10, 1, '2023-04-18 14:52:38'),
(18, 1, 1, 'you', 'bạn', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681560432/44052293_mtiny-e1491474184181_je7tc1.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681560490/cs_4152023_5_7_26_1_ttgdbk.wav', 10, 1, '2023-04-15 19:08:14'),
(18, 2, 1, 'I\'m a little thirsty', ' tôi hơi khát', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681802438/istockphoto-1218708649-612x612_t917id.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681802462/cs_4182023_0_20_52_1_kafjnt.wav', 10, 1, '2023-04-18 14:21:04'),
(18, 3, 1, 'chicken', ' gà; thịt gà', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681804396/360_F_236834903_2yK0lzKCVK2mlHCZr1YrE9oXMZWDOWlH_cckwzv.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681804411/cs_4182023_0_53_25_1_ritjwo.wav', 10, 1, '2023-04-18 14:53:33'),
(19, 1, 1, 'you\'re', 'bạn là...', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681562441/isolated-you-re-word-design-vector-26652256_txsqlf.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681562468/cs_4152023_5_40_54_1_mkzayf.wav', 10, 1, '2023-04-15 19:41:14'),
(19, 2, 1, 'am I wrong? ', ' tôi có sai không?', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681802567/Cartoon-character-pair-and-wrong-symbol-vector_tqlyte.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681802584/cs_4182023_0_22_57_1_oa3upy.wav', 10, 1, '2023-04-18 14:23:10'),
(19, 3, 1, 'pork', ' thịt lợn', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681804456/cartoon-pork-knuckle-file-free-png_tjj2rd.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681804476/cs_4182023_0_54_29_1_ztro2y.wav', 10, 1, '2023-04-18 14:54:39'),
(20, 1, 1, 'how are you?', ' bạn thế nào?', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681562579/3kSS3xievW4tlRzLRHqYMNOtEShWkeOssnCmDPrx_cyhnwb.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681562600/cs_4152023_5_43_9_1_ifa6as.wav', 10, 1, '2023-04-15 19:43:25'),
(20, 2, 1, 'you\'re right', ' bạn đúng', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681802696/doodle-hand-drawn-cartoon-cute-girl-student-with-correct-agree-symbols-yes-tag-answer_40876-3283_bnt7h3.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681802763/cs_4182023_0_25_8_1_jv2hxf.wav', 10, 1, '2023-04-18 14:26:05'),
(20, 3, 1, 'beef', ' thịt bò', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681804528/Cartoon-Steak-Step-10_adpsfn.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681804547/cs_4182023_0_55_40_1_xwpthh.wav', 10, 1, '2023-04-18 14:55:50'),
(21, 1, 1, 'I', ' tôi', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681562686/istockphoto-947708924-170667a_rn7og0.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681562715/cs_4152023_5_44_56_1_qdlzvo.wav', 10, 1, '2023-04-15 19:45:19'),
(21, 3, 1, 'fish', ' cá; thịt cá', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681804621/pngtree-fried-fish-illustration-png-image_4572786_o8r3pi.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681804655/cs_4182023_0_57_13_1_sr4cob.wav', 10, 1, '2023-04-18 14:57:38'),
(22, 1, 1, 'I\'m', 'tôi là...', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681562826/i-am_rqtgpp.gif', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681562861/cs_4152023_5_47_23_1_bkpigs.wav', 10, 1, '2023-04-15 19:47:44'),
(22, 3, 1, 'chips', ' khoai tây rán', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681804706/fried-potato-chips-delicious-crumbs-cartoon-style-vector-illustration-salty-beer-snack_421321-36_f74oae.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681804723/cs_4182023_0_58_37_1_quw5b1.wav', 10, 1, '2023-04-18 14:58:45'),
(23, 1, 1, 'very', ' rất', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681562970/unnamed_g82gjd.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681562994/cs_4152023_5_49_42_1_qh9xph.wav', 10, 1, '2023-04-15 19:50:00'),
(23, 3, 1, 'fish and chips', ' cá và khoai tây rán', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681804766/imgbin-french-fries-fish-and-chips-fried-fish-english-cuisine-pea-soup-hand-painted-fish-and-chips-pDh0QTr31LZBE2yGccSLKdJ4k_unefto.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681804793/cs_4182023_0_59_36_1_daaqhi.wav', 10, 1, '2023-04-18 15:00:02'),
(24, 1, 1, 'very well', ' rất khoẻ', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681563268/verywell-logo_stysla.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681563291/cs_4152023_5_54_43_1_k7baui.wav', 10, 1, '2023-04-15 19:54:54'),
(24, 3, 1, 'crisps', ' khoai tây chiên lát mỏng', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681868797/fried-potato-chips-delicious-crumbs-cartoon-style-vector-illustration-salty-beer-snack_421321-36_ys0ogv.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681868827/cs_4182023_18_46_58_1_iuwnqm.wav', 10, 1, '2023-04-19 08:47:10');
INSERT INTO `tuvung` (`MaTuVung`, `MaBaiHoc`, `MaKhoaHoc`, `NoiDungTuVung`, `DichNghia`, `HinhAnh`, `AmThanh`, `Diem`, `TrangThaiTuVung`, `ThoiGianTaoTuVung`) VALUES
(25, 1, 1, 'I\'m very well', ' tôi rất khoẻ', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681563446/how-are-you-today-2-638_z6zrdq.webp', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681563471/cs_4152023_5_57_39_1_aldqsb.wav', 10, 1, '2023-04-15 20:05:31'),
(25, 3, 1, 'water', ' nước lọc', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681868882/glass-water-cartoon-vector-illustration-144223612_kts5hz.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681868904/cs_4182023_18_48_14_1_ghxrug.wav', 10, 1, '2023-04-19 08:48:26'),
(26, 1, 1, 'my', ' của tôi', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681564095/download_sswwgu.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681564133/cs_4152023_6_8_34_1_smb1rv.wav', 10, 1, '2023-04-15 20:08:56'),
(26, 3, 1, ' cà phê', ' cà phê', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681868944/download_mvtnbw.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681868985/cs_4182023_18_49_30_1_kou2qf.wav', 10, 1, '2023-04-19 08:49:48'),
(27, 1, 1, 'your', ' của bạn', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681564199/your-design-china-name_qr9zqk.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681564219/cs_4152023_6_10_13_1_wjvn7p.wav', 10, 1, '2023-04-15 20:10:22'),
(27, 3, 1, 'tea', 'trà', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681869045/tea-cup-icon-cartoon-style-vector-7903659_ia8pk5.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681869063/cs_4182023_18_50_56_1_jeyyox.wav', 10, 1, '2023-04-19 08:51:05'),
(28, 1, 1, 'what', ' cái gì', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681564286/Depositphotos_31697521_s-2015-1160x665_itot0p.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681564305/cs_4152023_6_11_37_1_kkf6v6.wav', 10, 1, '2023-04-15 20:11:47'),
(28, 3, 1, 'beer', 'bia', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681869156/istockphoto-511578387-612x612_mkyokz.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681869176/cs_4182023_18_52_49_1_acavyc.wav', 10, 1, '2023-04-19 08:52:59'),
(29, 1, 1, 'a name', ' tên', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681564415/name-design-sketch-name_whufwo.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681564444/cs_4152023_6_13_54_1_iac8na.wav', 10, 1, '2023-04-15 20:14:07'),
(29, 3, 1, 'wine', 'rượu', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681869237/red-wine-drink-glass-cute-cartoon-file-png_mhjuuw.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681869253/cs_4182023_18_54_7_1_e2fan9.wav', 10, 1, '2023-04-19 08:54:16'),
(30, 1, 1, 'what\'s your name?', ' tên bạn là gì?', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681564679/C4_tsnso2.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681564702/cs_4152023_6_18_14_1_vmkc97.wav', 10, 1, '2023-04-15 20:18:26'),
(30, 3, 1, 'milk', 'sữa', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681869301/download_go59xy.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681869320/cs_4182023_18_55_12_1_dzlfh6.wav', 10, 1, '2023-04-19 08:55:23'),
(31, 1, 1, 'my name is ...', ' tên tôi là ...', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681564763/mynameis-46e3e8009b604f38b346d1283386080d_s2wf6x.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681564783/cs_4152023_6_19_36_1_oedqnu.wav', 10, 1, '2023-04-15 20:19:46'),
(31, 3, 1, 'juice', ' nước ép', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681869383/8256_mmn2me.png', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681869406/cs_4182023_18_56_39_1_mrwyff.wav', 10, 1, '2023-04-19 08:56:48'),
(32, 1, 1, 'a genius', 'một thiên tài', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681564863/1000_F_72978492_lOEYx53KvJXgKGhwNz6EsUFpauUdJh3u_gve3ga.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681564891/cs_4152023_6_21_17_1_a34q5a.wav', 10, 1, '2023-04-15 20:21:34'),
(32, 3, 1, 'sauce', 'sốt', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681869442/download_xclfbz.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681869470/cs_4182023_18_57_43_1_szsadr.wav', 10, 1, '2023-04-19 08:57:52'),
(33, 1, 1, 'you\'re a genius!', ' bạn là một thiên tài!', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681565119/images_mm2bvl.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681565170/cs_4152023_6_25_39_1_c1u1cz.wav', 10, 1, '2023-04-15 20:26:13'),
(33, 3, 1, 'butter', 'sốt', 'http://res.cloudinary.com/musics-app-lethinh/image/upload/v1681869508/istockphoto-1362717505-170667a_pzahot.jpg', 'http://res.cloudinary.com/musics-app-lethinh/video/upload/v1681869530/cs_4182023_18_58_43_1_sa0uzl.wav', 10, 1, '2023-04-19 08:58:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vidu`
--

CREATE TABLE `vidu` (
  `MaViDu` int(11) NOT NULL,
  `MaTuVung` int(11) NOT NULL,
  `MaBaiHoc` int(11) NOT NULL,
  `MaKhoaHoc` int(11) NOT NULL,
  `CauViDu` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DichNghia` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TrangThaiViDu` tinyint(1) NOT NULL DEFAULT 1,
  `ThoiGianTaoViDu` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `vidu`
--

INSERT INTO `vidu` (`MaViDu`, `MaTuVung`, `MaBaiHoc`, `MaKhoaHoc`, `CauViDu`, `DichNghia`, `TrangThaiViDu`, `ThoiGianTaoViDu`) VALUES
(1, 1, 1, 1, 'hello friends!', 'xin chào các bạn!', 1, '2023-04-15 13:44:51'),
(1, 2, 1, 1, 'hi Thinh', 'Chào Thịnh', 1, '2023-04-15 15:38:54'),
(2, 1, 1, 1, 'Hello, Chrome', 'Xin chào, Chrome', 1, '2023-04-15 13:44:51'),
(3, 1, 1, 1, 'hello Thinh', 'xin chào Thịnh', 1, '2023-04-15 14:17:21');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baihoc`
--
ALTER TABLE `baihoc`
  ADD PRIMARY KEY (`MaBaiHoc`,`MaKhoaHoc`),
  ADD KEY `FK_khoahoc_baihoc` (`MaKhoaHoc`);

--
-- Chỉ mục cho bảng `boquatuvung`
--
ALTER TABLE `boquatuvung`
  ADD PRIMARY KEY (`TaiKhoan`,`MaTuVung`,`MaBaiHoc`,`MaKhoaHoc`),
  ADD KEY `FK_tuvung-baihoc-khoahoc_boquatuvung` (`MaTuVung`,`MaBaiHoc`,`MaKhoaHoc`);

--
-- Chỉ mục cho bảng `chatbot_room`
--
ALTER TABLE `chatbot_room`
  ADD PRIMARY KEY (`MaRoom`),
  ADD KEY `FK_taikhoan_chatbot_room` (`TaiKhoan`);

--
-- Chỉ mục cho bảng `dangkykhoahoc`
--
ALTER TABLE `dangkykhoahoc`
  ADD PRIMARY KEY (`TaiKhoan`,`MaKhoaHoc`),
  ADD KEY `FK_khoahoc_dangkykhoahoc` (`MaKhoaHoc`);

--
-- Chỉ mục cho bảng `danhgiakhoahoc`
--
ALTER TABLE `danhgiakhoahoc`
  ADD PRIMARY KEY (`TaiKhoan`,`MaKhoaHoc`),
  ADD KEY `FK_khoahoc_danhgia` (`MaKhoaHoc`);

--
-- Chỉ mục cho bảng `hethong`
--
ALTER TABLE `hethong`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `hoatdong`
--
ALTER TABLE `hoatdong`
  ADD PRIMARY KEY (`MaHoatDong`),
  ADD KEY `FK_taikhoan_hoatdong` (`TaiKhoan`),
  ADD KEY `FK_loaihd_hoatdong` (`MaLoaiHoatDong`);

--
-- Chỉ mục cho bảng `hoctumoi`
--
ALTER TABLE `hoctumoi`
  ADD PRIMARY KEY (`TaiKhoan`,`Token`) USING BTREE;

--
-- Chỉ mục cho bảng `hoctuvung`
--
ALTER TABLE `hoctuvung`
  ADD PRIMARY KEY (`TaiKhoan`,`MaTuVung`,`MaBaiHoc`,`MaKhoaHoc`),
  ADD KEY `FK_tuvung-baihoc-khoahoc_hoctuvung` (`MaBaiHoc`,`MaKhoaHoc`,`MaTuVung`);

--
-- Chỉ mục cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD PRIMARY KEY (`MaKhoaHoc`),
  ADD KEY `FK_nguoitao_khoahoc` (`NguoiTao`);

--
-- Chỉ mục cho bảng `loaihoatdong`
--
ALTER TABLE `loaihoatdong`
  ADD PRIMARY KEY (`MaLoaiHoatDong`);

--
-- Chỉ mục cho bảng `message_chatbot_room`
--
ALTER TABLE `message_chatbot_room`
  ADD PRIMARY KEY (`MaTinNhan`),
  ADD KEY `FK_chatbot_room_maroom` (`MaRoom`);

--
-- Chỉ mục cho bảng `muctieuhoctap`
--
ALTER TABLE `muctieuhoctap`
  ADD PRIMARY KEY (`MaMucTieu`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`TaiKhoan`),
  ADD KEY `FK_quyenhan_nguoidung` (`MaQuyenHan`),
  ADD KEY `FK_muctieu_nguoidung` (`MaMucTieu`);

--
-- Chỉ mục cho bảng `ontaploai1`
--
ALTER TABLE `ontaploai1`
  ADD PRIMARY KEY (`TaiKhoan`,`Token`),
  ADD KEY `fk_tuvung` (`MaTuVung`,`MaBaiHoc`,`MaKhoaHoc`);

--
-- Chỉ mục cho bảng `ontapsieutoctuvung`
--
ALTER TABLE `ontapsieutoctuvung`
  ADD PRIMARY KEY (`TaiKhoan`,`Token`);

--
-- Chỉ mục cho bảng `ontaptuvung`
--
ALTER TABLE `ontaptuvung`
  ADD PRIMARY KEY (`TaiKhoan`,`Token`);

--
-- Chỉ mục cho bảng `ontaptuvungkho`
--
ALTER TABLE `ontaptuvungkho`
  ADD PRIMARY KEY (`TaiKhoan`,`Token`);

--
-- Chỉ mục cho bảng `quyenhan`
--
ALTER TABLE `quyenhan`
  ADD PRIMARY KEY (`MaQuyenHan`);

--
-- Chỉ mục cho bảng `thongbaoemail`
--
ALTER TABLE `thongbaoemail`
  ADD PRIMARY KEY (`MaThongBao`),
  ADD KEY `FK_TAIKHOAN_thongbaoemail` (`TaiKhoan`);

--
-- Chỉ mục cho bảng `tuvung`
--
ALTER TABLE `tuvung`
  ADD PRIMARY KEY (`MaTuVung`,`MaBaiHoc`,`MaKhoaHoc`),
  ADD KEY `FK_baihockhoahoc_tuvung` (`MaBaiHoc`,`MaKhoaHoc`);

--
-- Chỉ mục cho bảng `vidu`
--
ALTER TABLE `vidu`
  ADD PRIMARY KEY (`MaViDu`,`MaTuVung`,`MaBaiHoc`,`MaKhoaHoc`),
  ADD KEY `FK_tuvung-baihoc_khoahoc_vidu` (`MaTuVung`,`MaBaiHoc`,`MaKhoaHoc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chatbot_room`
--
ALTER TABLE `chatbot_room`
  MODIFY `MaRoom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `hethong`
--
ALTER TABLE `hethong`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `hoatdong`
--
ALTER TABLE `hoatdong`
  MODIFY `MaHoatDong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1116;

--
-- AUTO_INCREMENT cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  MODIFY `MaKhoaHoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `loaihoatdong`
--
ALTER TABLE `loaihoatdong`
  MODIFY `MaLoaiHoatDong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `message_chatbot_room`
--
ALTER TABLE `message_chatbot_room`
  MODIFY `MaTinNhan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT cho bảng `muctieuhoctap`
--
ALTER TABLE `muctieuhoctap`
  MODIFY `MaMucTieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `quyenhan`
--
ALTER TABLE `quyenhan`
  MODIFY `MaQuyenHan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `thongbaoemail`
--
ALTER TABLE `thongbaoemail`
  MODIFY `MaThongBao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baihoc`
--
ALTER TABLE `baihoc`
  ADD CONSTRAINT `FK_khoahoc_baihoc` FOREIGN KEY (`MaKhoaHoc`) REFERENCES `khoahoc` (`MaKhoaHoc`);

--
-- Các ràng buộc cho bảng `boquatuvung`
--
ALTER TABLE `boquatuvung`
  ADD CONSTRAINT `FK_taikhoan_boquatuvung` FOREIGN KEY (`TaiKhoan`) REFERENCES `nguoidung` (`TaiKhoan`),
  ADD CONSTRAINT `FK_tuvung-baihoc-khoahoc_boquatuvung` FOREIGN KEY (`MaTuVung`,`MaBaiHoc`,`MaKhoaHoc`) REFERENCES `tuvung` (`MaTuVung`, `MaBaiHoc`, `MaKhoaHoc`);

--
-- Các ràng buộc cho bảng `chatbot_room`
--
ALTER TABLE `chatbot_room`
  ADD CONSTRAINT `FK_taikhoan_chatbot_room` FOREIGN KEY (`TaiKhoan`) REFERENCES `nguoidung` (`TaiKhoan`);

--
-- Các ràng buộc cho bảng `dangkykhoahoc`
--
ALTER TABLE `dangkykhoahoc`
  ADD CONSTRAINT `FK_khoahoc_dangkykhoahoc` FOREIGN KEY (`MaKhoaHoc`) REFERENCES `khoahoc` (`MaKhoaHoc`),
  ADD CONSTRAINT `FK_taikhoan_dangkykhoahoc` FOREIGN KEY (`TaiKhoan`) REFERENCES `nguoidung` (`TaiKhoan`);

--
-- Các ràng buộc cho bảng `danhgiakhoahoc`
--
ALTER TABLE `danhgiakhoahoc`
  ADD CONSTRAINT `FK_khoahoc_danhgia` FOREIGN KEY (`MaKhoaHoc`) REFERENCES `khoahoc` (`MaKhoaHoc`),
  ADD CONSTRAINT `FK_taikhoan_danhgia` FOREIGN KEY (`TaiKhoan`) REFERENCES `nguoidung` (`TaiKhoan`);

--
-- Các ràng buộc cho bảng `hoatdong`
--
ALTER TABLE `hoatdong`
  ADD CONSTRAINT `FK_loaihd_hoatdong` FOREIGN KEY (`MaLoaiHoatDong`) REFERENCES `loaihoatdong` (`MaLoaiHoatDong`),
  ADD CONSTRAINT `FK_taikhoan_hoatdong` FOREIGN KEY (`TaiKhoan`) REFERENCES `nguoidung` (`TaiKhoan`);

--
-- Các ràng buộc cho bảng `hoctumoi`
--
ALTER TABLE `hoctumoi`
  ADD CONSTRAINT `FK_taikhoan_nguoidung` FOREIGN KEY (`TaiKhoan`) REFERENCES `nguoidung` (`TaiKhoan`);

--
-- Các ràng buộc cho bảng `hoctuvung`
--
ALTER TABLE `hoctuvung`
  ADD CONSTRAINT `FK_taikhoan_hoctuvung` FOREIGN KEY (`TaiKhoan`) REFERENCES `nguoidung` (`TaiKhoan`),
  ADD CONSTRAINT `FK_tuvung-baihoc-khoahoc_hoctuvung` FOREIGN KEY (`MaBaiHoc`,`MaKhoaHoc`,`MaTuVung`) REFERENCES `tuvung` (`MaBaiHoc`, `MaKhoaHoc`, `MaTuVung`);

--
-- Các ràng buộc cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD CONSTRAINT `FK_nguoitao_khoahoc` FOREIGN KEY (`NguoiTao`) REFERENCES `nguoidung` (`TaiKhoan`);

--
-- Các ràng buộc cho bảng `message_chatbot_room`
--
ALTER TABLE `message_chatbot_room`
  ADD CONSTRAINT `FK_chatbot_room_maroom` FOREIGN KEY (`MaRoom`) REFERENCES `chatbot_room` (`MaRoom`);

--
-- Các ràng buộc cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `FK_muctieu_nguoidung` FOREIGN KEY (`MaMucTieu`) REFERENCES `muctieuhoctap` (`MaMucTieu`),
  ADD CONSTRAINT `FK_quyenhan_nguoidung` FOREIGN KEY (`MaQuyenHan`) REFERENCES `quyenhan` (`MaQuyenHan`);

--
-- Các ràng buộc cho bảng `ontaploai1`
--
ALTER TABLE `ontaploai1`
  ADD CONSTRAINT `fk_taikhoan` FOREIGN KEY (`TaiKhoan`) REFERENCES `nguoidung` (`TaiKhoan`),
  ADD CONSTRAINT `fk_tuvung` FOREIGN KEY (`MaTuVung`,`MaBaiHoc`,`MaKhoaHoc`) REFERENCES `tuvung` (`MaTuVung`, `MaBaiHoc`, `MaKhoaHoc`);

--
-- Các ràng buộc cho bảng `ontapsieutoctuvung`
--
ALTER TABLE `ontapsieutoctuvung`
  ADD CONSTRAINT `FK_taikhoan_ontapsieutoctuvung` FOREIGN KEY (`TaiKhoan`) REFERENCES `nguoidung` (`TaiKhoan`);

--
-- Các ràng buộc cho bảng `ontaptuvung`
--
ALTER TABLE `ontaptuvung`
  ADD CONSTRAINT `FK_taikhoan_ontaptuvung` FOREIGN KEY (`TaiKhoan`) REFERENCES `nguoidung` (`TaiKhoan`);

--
-- Các ràng buộc cho bảng `ontaptuvungkho`
--
ALTER TABLE `ontaptuvungkho`
  ADD CONSTRAINT `FK_taikhoan_ontaptuvungkho` FOREIGN KEY (`TaiKhoan`) REFERENCES `nguoidung` (`TaiKhoan`);

--
-- Các ràng buộc cho bảng `thongbaoemail`
--
ALTER TABLE `thongbaoemail`
  ADD CONSTRAINT `FK_TAIKHOAN_thongbaoemail` FOREIGN KEY (`TaiKhoan`) REFERENCES `nguoidung` (`TaiKhoan`);

--
-- Các ràng buộc cho bảng `tuvung`
--
ALTER TABLE `tuvung`
  ADD CONSTRAINT `FK_baihockhoahoc_tuvung` FOREIGN KEY (`MaBaiHoc`,`MaKhoaHoc`) REFERENCES `baihoc` (`MaBaiHoc`, `MaKhoaHoc`);

--
-- Các ràng buộc cho bảng `vidu`
--
ALTER TABLE `vidu`
  ADD CONSTRAINT `FK_tuvung-baihoc_khoahoc_vidu` FOREIGN KEY (`MaTuVung`,`MaBaiHoc`,`MaKhoaHoc`) REFERENCES `tuvung` (`MaTuVung`, `MaBaiHoc`, `MaKhoaHoc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
