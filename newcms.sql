-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 08, 2019 lúc 06:22 PM
-- Phiên bản máy phục vụ: 10.1.34-MariaDB
-- Phiên bản PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `newcms`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(3, 'The thao'),
(10, 'Politics'),
(11, 'India'),
(12, 'North Asia'),
(13, 'Middle East'),
(14, 'Showbiz'),
(15, 'Afghanistan');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(10) NOT NULL,
  `post_id` int(10) NOT NULL,
  `comment_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comment_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comment_text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`comment_id`, `post_id`, `comment_name`, `comment_email`, `comment_text`, `status`) VALUES
(1, 4, 'Syne', 'dinh@gmail.com', 'snee', 'good'),
(2, 8, 'Chinh', 'hellO@gmail.com', 'hgd', 'hgd'),
(3, 4, 'asdfdsf', 'asdf@gmail.com', 'sdfsdf', 'sdfdf'),
(6, 4, 'Good boy', 'Good boy@yahoo.com', 'Good boy', 'approve'),
(7, 4, 'superman', 'supermanz@gmail.com', 'superman', 'superman'),
(12, 10, 'Win', 'Win@gmail.com', 'Win', 'Win'),
(15, 9, 'ner', 'ner@gmail.com', 'ner', 'ner');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `post_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `post_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post_date` text NOT NULL,
  `post_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post_keywords` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post_image` varchar(100) NOT NULL,
  `post_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img_details` varchar(100) NOT NULL,
  `post_explain` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`post_id`, `category_id`, `post_title`, `post_date`, `post_author`, `post_keywords`, `post_image`, `post_content`, `img_details`, `post_explain`) VALUES
(4, 3, 'Án mạng xôn xao dư luận ở Bà Rịa - Vũng Tàu', '04-12-2019', 'Phan Hùng', 'Từ việc vợ nạn nhân tạt nước làm cá ra hẻm, trúng vào tường nhà hàng xóm dẫn đến án mạng.', '1.jpg', 'Ngày 8/12, Phòng Cảnh sát hình sự Công an tỉnh Bà Rịa - Vũng Tàu phối hợp cùng Công an huyện Long Điền truy bắt nhóm thanh niên dùng hung khí truy sát khiến một người tử vong, gây xôn xao dư luận ở địa phương.\r\n\r\nThông tin ban đầu, khoảng 15h30 ngày 7/12, sau khi rửa cá, vợ anh N.H. (44 tuổi, ngụ thị trấn Long Hải) tạt nước ra hẻm thì văng trúng tường nhà của Phạm Tiến Vĩnh (34 tuổi).\r\n\r\n', '1.jpg', '1.jpg'),
(8, 3, 'Cô gái giấu ma túy sau ốp lưng điện thoại', '2019-4-4', 'Quốc Nam', 'Kiểm tra xe taxi, lực lượng cảnh sát giao thông ở Quảng Ninh phát hiện cô gái 20 tuổi mang theo ma tuý.', '1.jpg', 'Đêm 7/12, cán bộ thuộc đội tuần tra kiểm soát giao thông số 1, Công an tỉnh Quảng Ninh làm nhiệm vụ kiểm tra nồng độ cồn với tài xế đi trên tuyến quốc lộ 18 đoạn phường Yên Thanh, TP Uông Bí.', '1.jpg', '1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`) VALUES
(1, 'syne', '123'),
(2, 'haha', '123');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
