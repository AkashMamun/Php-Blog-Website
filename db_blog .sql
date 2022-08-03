-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2022 at 02:26 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'JAVA'),
(2, 'PHP'),
(3, 'HTML'),
(4, 'CSS'),
(5, 'Education'),
(6, 'SportsBangladesh'),
(7, 'HealthCare'),
(9, 'News');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`) VALUES
(7, 1, 'Akash Mamun Java First Post', '<p><span>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Soluta quasi voluptatum quo. Recusandae accusamus aperiam repellat velit quod deserunt similique, necessitatibus odit omnis temporibus sit laudantium sequi maiores beatae corporis.&nbsp;</span><span>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Soluta quasi voluptatum quo. Recusandae accusamus aperiam repellat velit quod deserunt similique, necessitatibus odit omnis temporibus sit laudantium sequi maiores beatae corporis.</span></p>\r\n<div>\r\n<div><span>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Soluta quasi voluptatum quo. Recusandae accusamus aperiam repellat velit quod deserunt similique, necessitatibus odit omnis temporibus sit laudantium sequi maiores beatae corporis.</span></div>\r\n<div>&nbsp;</div>\r\n<div>\r\n<div><span>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Soluta quasi voluptatum quo. Recusandae accusamus aperiam repellat velit quod deserunt similique, necessitatibus odit omnis temporibus sit laudantium sequi maiores beatae corporis.&nbsp;</span><span>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Soluta quasi voluptatum quo. Recusandae accusamus aperiam repellat velit quod deserunt similique, necessitatibus odit omnis temporibus sit laudantium sequi maiores beatae corporis.</span></div>\r\n</div>\r\n</div>', 'upload/5e6e7f9f5a.png', 'Java', 'Akash Mamun', '2022-02-13 13:30:57'),
(8, 5, 'Education Post here', '<p><span>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Soluta quasi voluptatum quo. Recusandae accusamus aperiam repellat velit quod deserunt similique, necessitatibus odit omnis temporibus sit laudantium sequi maiores beatae corporis.&nbsp;</span><span>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Soluta quasi voluptatum quo. Recusandae accusamus aperiam repellat velit quod deserunt similique, necessitatibus odit omnis temporibus sit laudantium sequi maiores beatae corporis.</span></p>\r\n<div>\r\n<div><span>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Soluta quasi voluptatum quo. Recusandae accusamus aperiam repellat velit quod deserunt similique, necessitatibus odit omnis temporibus sit laudantium sequi maiores beatae corporis.</span></div>\r\n<div>&nbsp;</div>\r\n<div>\r\n<div><span>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Soluta quasi voluptatum quo. Recusandae accusamus aperiam repellat velit quod deserunt similique, necessitatibus odit omnis temporibus sit laudantium sequi maiores beatae corporis.&nbsp;</span><span>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Soluta quasi voluptatum quo. Recusandae accusamus aperiam repellat velit quod deserunt similique, necessitatibus odit omnis temporibus sit laudantium sequi maiores beatae corporis.</span></div>\r\n</div>\r\n</div>', 'upload/dd2737c69d.jpg', 'education', 'Akash Mamun', '2022-02-13 14:18:54'),
(9, 2, 'PHP1 Post is here ', '<p><span>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Soluta quasi voluptatum quo. Recusandae accusamus aperiam repellat velit quod deserunt similique, necessitatibus odit omnis temporibus sit laudantium sequi maiores beatae corporis.&nbsp;</span><span>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Soluta quasi voluptatum quo. Recusandae accusamus aperiam repellat velit.....</span></p>\r\n<div><span><br /></span></div>\r\n<div class=\"readmore clear\">&nbsp;\r\n<p><span>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Soluta quasi voluptatum quo. Recusandae accusamus aperiam repellat velit quod deserunt similique, necessitatibus odit omnis temporibus sit laudantium sequi maiores beatae corporis.&nbsp;</span><span>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Soluta quasi voluptatum quo. Recusandae accusamus aperiam repellat velit.....</span></p>\r\n<div><span><br /></span></div>\r\n<div class=\"readmore clear\">&nbsp;\r\n<p><span>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Soluta quasi voluptatum quo. Recusandae accusamus aperiam repellat velit quod deserunt similique, necessitatibus odit omnis temporibus sit laudantium sequi maiores beatae corporis.&nbsp;</span><span>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Soluta quasi voluptatum quo. Recusandae accusamus aperiam repellat velit.....</span></p>\r\n<div><span><br /></span></div>\r\n<div class=\"readmore clear\">&nbsp;</div>\r\n</div>\r\n</div>', 'upload/29c9520894.jpg', 'php', 'Akash Mamun', '2022-02-13 17:54:07'),
(10, 7, 'This HealthCare Post Here', '<p><span>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Soluta quasi voluptatum quo. Recusandae accusamus aperiam repellat velit quod deserunt similique, necessitatibus odit omnis temporibus sit laudantium sequi maiores beatae corporis.&nbsp;</span><span>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Soluta quasi voluptatum quo. Recusandae accusamus aperiam repellat&nbsp;</span></p>\r\n<p><span>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Soluta quasi voluptatum quo. Recusandae accusamus aperiam repellat velit quod deserunt similique, necessitatibus odit omnis temporibus sit laudantium sequi maiores beatae corporis.&nbsp;</span><span>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Soluta quasi voluptatum quo. Recusandae accusamus aperiam repellat&nbsp;</span></p>\r\n<p><span>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Soluta quasi voluptatum quo. Recusandae accusamus aperiam repellat velit quod deserunt similique, necessitatibus odit omnis temporibus sit laudantium sequi maiores beatae corporis.&nbsp;</span><span>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Soluta quasi voluptatum quo. Recusandae accusamus aperiam repellat&nbsp;</span></p>', 'upload/fd0a3d9310.png', 'Healthcare', 'Akash Mamun', '2022-02-15 15:02:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `pass`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
