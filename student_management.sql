-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 14, 2021 lúc 09:58 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `student_management`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `class`
--

CREATE TABLE `class` (
  `class_code` varchar(255) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `class`
--

INSERT INTO `class` (`class_code`, `class_name`, `created_at`, `updated_at`) VALUES
('1', '12A1', '2021-09-07 11:10:53', '0000-00-00 00:00:00'),
('2', '12A2', '2021-09-28 01:04:46', '2021-09-30 01:04:46'),
('3', '12A3', '2021-09-30 01:04:46', '2021-09-24 01:04:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `informations`
--

CREATE TABLE `informations` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `student_code` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `olds` int(11) NOT NULL,
  `hobby` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `class_code` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `informations`
--

INSERT INTO `informations` (`id`, `id_user`, `student_code`, `name`, `date`, `olds`, `hobby`, `gender`, `address`, `class_code`, `created_at`, `updated_at`) VALUES
(17, 19, 9734393, 'Nguyễn Văn Lam', '2021-09-07', 15, 'hát', 1, 'Hà Nội', '2', '2021-09-12 01:09:23', '2021-09-12 01:09:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `points`
--

CREATE TABLE `points` (
  `id` int(11) NOT NULL,
  `student_code` int(11) NOT NULL,
  `number_point` float DEFAULT NULL,
  `subject_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `points`
--

INSERT INTO `points` (`id`, `student_code`, `number_point`, `subject_code`, `created_at`, `updated_at`) VALUES
(1, 9428140, 8, 'HT02', '2021-09-11 09:02:36', '2021-09-11 09:02:36'),
(2, 9428140, 4, 'THT01', '2021-09-11 09:02:36', '2021-09-11 09:02:36'),
(3, 9428140, 5, 'VL03', '2021-09-11 13:57:58', '2021-09-11 09:02:36'),
(16, 9981298, 8, 'HT02', '2021-09-12 00:25:32', '2021-09-12 00:25:32'),
(17, 9981298, 5, 'THT01', '2021-09-12 00:25:32', '2021-09-12 00:25:32'),
(18, 9981298, 4, 'VL03', '2021-09-12 00:25:32', '2021-09-12 00:25:32'),
(49, 9734393, 9, 'HT02', '2021-09-12 01:09:24', '2021-09-12 01:09:24'),
(50, 9734393, 8, 'THT01', '2021-09-12 01:09:24', '2021-09-12 01:09:24'),
(51, 9734393, 7, 'VL03', '2021-09-12 01:09:24', '2021-09-12 01:09:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subjects`
--

CREATE TABLE `subjects` (
  `subject_code` varchar(255) NOT NULL,
  `subject_title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `subjects`
--

INSERT INTO `subjects` (`subject_code`, `subject_title`, `created_at`, `updated_at`) VALUES
('HT02', 'Lý', '2021-09-10 03:23:11', '2021-09-25 01:01:26'),
('THT01', 'Toán', '2021-09-09 04:28:32', '2021-09-30 01:01:26'),
('VL03', 'Hóa', '2021-09-10 03:23:30', '2021-09-29 01:03:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(10, 'Nguyễn Văn La.2', '$2y$10$BlFH1l/7pm0oGibclNqnUOeTcHUdcjBgI1oTN74PMre8Wr9X7qiFS', '2021-09-11 13:25:24', '2021-09-11 13:25:24'),
(11, 'Nguyễn Văn Nam.2', '$2y$10$4wR8UaSGxJ8CNnOgBW0YYuOha7MHPn40M/jeFJwL/KzmLPg4G.x8.', '2021-09-11 09:02:36', '2021-09-11 09:02:36'),
(12, 'Nguyễn Thị Lan.2', '$2y$10$C/XJCfrDFN3MyGyAgJTDBuXeTfNgQcMeP2rsGoZDkeI.7dSs4ZA5e', '2021-09-11 23:58:47', '2021-09-11 23:58:47'),
(13, 'Nguyễn Văn La.2', '$2y$10$YqU/eF8eMwnTPRoDv6CFAOlOymWQ2diwXo6iMps5Pt4F/y1aZLRSy', '2021-09-12 00:15:42', '2021-09-12 00:15:42'),
(14, 'Nguyễn Văn La.2', '$2y$10$NMbJVOsFwoEI0Wx6cnLjbuPD/AuLYtjyf47GzjjbrntGXTqrFdKtq', '2021-09-12 00:16:33', '2021-09-12 00:16:33'),
(15, 'Nguyễn Văn La.2', '$2y$10$BdJHLLPwi.f1V7HqTE0uS.8JZP/wC7mMiqsGini7WvIYCfuMFeG8u', '2021-09-12 00:18:04', '2021-09-12 00:18:04'),
(16, 'Nguyễn Văn La.2', '$2y$10$irwFW.soL1YB34tlhYnvxeu.sBMdd3YTAMYPOzOqR3CMQiK9SHnJy', '2021-09-12 00:23:05', '2021-09-12 00:23:05'),
(17, 'Nguyễn Văn La.2', '$2y$10$xFjd2cAlbCsCHVWn5NP6HeI.amAnATAyTLsCUNbWdto5e82Zmnvs6', '2021-09-12 00:24:02', '2021-09-12 00:24:02'),
(18, 'Nguyễn Văn La.2', '$2y$10$G9sc8zzhFbrVEDcVe8VsbecO.0rQoDvP9yVu3zNJLsjX3h/2Y1yK2', '2021-09-12 00:25:32', '2021-09-12 00:25:32'),
(19, 'Nguyễn Văn La.2', '$2y$10$uN3fxOCUHfdcmhXm2N0qkeFeVAXyAUSpumtgTDXLjqHpyQQuyCB7K', '2021-09-12 01:09:24', '2021-09-12 01:09:24');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_code`);

--
-- Chỉ mục cho bảng `informations`
--
ALTER TABLE `informations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `class_code` (`class_code`);

--
-- Chỉ mục cho bảng `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_code` (`subject_code`);

--
-- Chỉ mục cho bảng `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_code`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `informations`
--
ALTER TABLE `informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `points`
--
ALTER TABLE `points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `informations`
--
ALTER TABLE `informations`
  ADD CONSTRAINT `informations_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `informations_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `informations_ibfk_5` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `informations_ibfk_8` FOREIGN KEY (`class_code`) REFERENCES `class` (`class_code`);

--
-- Các ràng buộc cho bảng `points`
--
ALTER TABLE `points`
  ADD CONSTRAINT `points_ibfk_1` FOREIGN KEY (`subject_code`) REFERENCES `subjects` (`subject_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
