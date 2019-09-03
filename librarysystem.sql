-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1:3306
-- 生成日期： 2019-09-03 14:02:16
-- 服务器版本： 5.7.24
-- PHP 版本： 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `librarysystem`
--

-- --------------------------------------------------------

--
-- 表的结构 `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `id` int(20) NOT NULL,
  `bookName` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `author` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `book`
--

INSERT INTO `book` (`id`, `bookName`, `price`, `author`, `notes`, `stock`) VALUES
(111, '123', 123, '123', '123', 123),
(3, 'python', 102.4, 'python', 'python', 153),
(2, 'Java Web开发', 40.5, 'Java Web', 'Java', 5);

-- --------------------------------------------------------

--
-- 表的结构 `borrow`
--

DROP TABLE IF EXISTS `borrow`;
CREATE TABLE IF NOT EXISTS `borrow` (
  `id` int(20) NOT NULL,
  `bookName` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `startLine` date NOT NULL,
  `deadLine` date NOT NULL,
  `holder` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `borrow`
--

INSERT INTO `borrow` (`id`, `bookName`, `startLine`, `deadLine`, `holder`) VALUES
(1, '老人与海', '2019-06-18', '2019-07-18', 'user'),
(3, 'python', '2019-06-18', '2019-07-18', 'user'),
(3, 'python', '2019-06-18', '2019-07-18', 'user'),
(2, 'Java Web开发', '2019-06-18', '2019-07-18', 'user');

-- --------------------------------------------------------

--
-- 表的结构 `manager`
--

DROP TABLE IF EXISTS `manager`;
CREATE TABLE IF NOT EXISTS `manager` (
  `managername` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `managerpwd` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `manager`
--

INSERT INTO `manager` (`managername`, `managerpwd`) VALUES
('13', '123'),
('www', '123'),
('admin', 'admin'),
('14', '123'),
('124124', '123'),
('123123', '123');

-- --------------------------------------------------------

--
-- 表的结构 `ordinary`
--

DROP TABLE IF EXISTS `ordinary`;
CREATE TABLE IF NOT EXISTS `ordinary` (
  `username` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `ordinary`
--

INSERT INTO `ordinary` (`username`, `password`) VALUES
('username', 'username'),
('user', 'book');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
