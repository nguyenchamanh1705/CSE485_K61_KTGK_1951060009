-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 21, 2021 lúc 08:42 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlyduocpham`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `drugs`
--

CREATE TABLE `drugs` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` int(11) NOT NULL,
  `dose` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `cost_price` float NOT NULL,
  `selling_price` float NOT NULL,
  `expiry` date NOT NULL,
  `company_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `production_date` date NOT NULL,
  `expiration_date` date NOT NULL,
  `place` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `drugs`
--

INSERT INTO `drugs` (`id`, `name`, `type`, `barcode`, `dose`, `code`, `cost_price`, `selling_price`, `expiry`, `company_name`, `production_date`, `expiration_date`, `place`, `quantity`) VALUES
(1, 'Max Green Liver', 'Thuc pham chuc nang', 1, 10, 8, 2000, 3000, '2021-10-21', 'Greenhealth', '2021-10-01', '2023-10-01', 'USA', 15);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `drugs`
--
ALTER TABLE `drugs`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
