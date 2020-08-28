-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 06, 2020 at 05:29 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `school_finder`
--
CREATE DATABASE IF NOT EXISTS `school_finder` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `school_finder`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `Name` varchar(20) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Gender` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `School_id` varchar(20) NOT NULL,
  `Phone` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`School_id`, `Phone`) VALUES
('4', '423423'),
('5', '76757'),
('6', '234234'),
('7', '234234'),
('8', '234234'),
('9', '234234'),
('10', '234234'),
('11', '234234'),
('12', '234234'),
('13', '234234'),
('14', '234234'),
('15', '234234'),
('16', '234234'),
('17', '234234'),
('18', '234234'),
('19', '234234'),
('20', '234234'),
('21', '234234'),
('22', '234234'),
('23', '234234'),
('24', '238392'),
('25', '232344'),
('26', '4353446'),
('27', '436543'),
('28', '56456456'),
('29', '5433432'),
('30', '5433432'),
('31', '5433432'),
('32', '5433432'),
('33', '5433432'),
('34', '5433432'),
('35', '5433432'),
('36', '45643'),
('37', '45643'),
('38', '45643'),
('39', '45643'),
('40', '45645'),
('41', '45645'),
('42', '23432'),
('43', '23432'),
('44', '23432'),
('45', '23432'),
('46', '23432'),
('47', '23432'),
('48', '23432'),
('49', '5826382'),
('50', '0731111');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `Role` varchar(20) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pics_of_school`
--

DROP TABLE IF EXISTS `pics_of_school`;
CREATE TABLE IF NOT EXISTS `pics_of_school` (
  `School_id` varchar(20) NOT NULL,
  `picture_path` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pics_of_school`
--

INSERT INTO `pics_of_school` (`School_id`, `picture_path`) VALUES
('48', 'SchoolImages481.jpg'),
('48', 'SchoolImages482.jpg'),
('48', 'SchoolImages483.jpg'),
('48', 'SchoolImages484.jpg'),
('48', 'SchoolImages485.jpg'),
('48', 'SchoolImages486.jpg'),
('49', '491.jpg'),
('49', '492.jpg'),
('49', '493.jpg'),
('49', '494.jpg'),
('49', '495.jpg'),
('49', '496.jpg'),
('50', '501.jpg'),
('50', '502.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `Review_id` varchar(10) NOT NULL,
  `School_id` varchar(20) NOT NULL,
  `rating` int(11) NOT NULL,
  `Review_content` varchar(400) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `Review_date` datetime NOT NULL,
  PRIMARY KEY (`Review_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

DROP TABLE IF EXISTS `school`;
CREATE TABLE IF NOT EXISTS `school` (
  `school_id` int(100) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(50) DEFAULT NULL,
  `affilliation_number` varchar(50) DEFAULT NULL,
  `board` varchar(30) DEFAULT NULL,
  `medium` varchar(30) DEFAULT NULL,
  `upto_class` int(11) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `locality` varchar(50) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `pin_code` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `principal_name` varchar(30) DEFAULT NULL,
  `principal_phone` varchar(15) DEFAULT NULL,
  `principal_msg` varchar(200) DEFAULT NULL,
  `principal_email` varchar(20) DEFAULT NULL,
  `director_name` varchar(30) DEFAULT NULL,
  `director_phone` varchar(15) DEFAULT NULL,
  `director_msg` varchar(200) DEFAULT NULL,
  `director_email` varchar(30) DEFAULT NULL,
  `website` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`school_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`school_id`, `school_name`, `affilliation_number`, `board`, `medium`, `upto_class`, `email`, `locality`, `area`, `city`, `state`, `pin_code`, `year`, `type`, `principal_name`, `principal_phone`, `principal_msg`, `principal_email`, `director_name`, `director_phone`, `director_msg`, `director_email`, `website`) VALUES
(1, 'kendriya', '23323', 'cbse board', 'English', 12, 'kv@gdsfmail.com', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 232, 3232, 'girls', 'kiran', '23423', 'dsf d sdf fd ', 'kiran@gmail.com', 'snp khan', '34534', ' rt r  df d', 'khan@gmail.com', 'www.kv.com'),
(2, 'kendriya', '23323', 'cbse board', 'English', 12, 'kv@gdshfmail.com', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 232, 3232, 'girls', 'kiran', '23423', 'dsf d sdf fd ', 'kiran@gmail.com', 'snp khan', '34534', ' rt r  df d', 'khan@gmail.com', 'www.kv.com'),
(3, 'kendriya', '23323', 'cbse board', 'English', 12, 'kv@gdsnbhfmail.com', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 232, 3232, 'girls', 'kiran', '23423', 'dsf d sdf fd ', 'kiran@gmail.com', 'snp khan', '34534', ' rt r  df d', 'khan@gmail.com', 'www.kv.com'),
(4, 'kendriya', '23323', 'cbse board', 'English', 12, 'kv@gdsnbhfjjmail.com', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 232, 3232, 'girls', 'kiran', '23423', 'dsf d sdf fd ', 'kiran@gmail.com', 'snp khan', '34534', ' rt r  df d', 'khan@gmail.com', 'www.kv.com'),
(5, 'ke', '342', 'mp board', 'English', 12, 'kv@gmjhgail.com', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 324, 1212, 'co-ed', 'sdfsdf', '43534', ' dfg dg  dgd  g d', 'kiran@gmail.com', 'dfg', '23432', 'fdf gfd    g  d g  ', 'khan@gmail.com', 'www.kv.com'),
(6, 'ke', '34535', 'cbse board', 'English', 12, 'kv@gdsfmail.comfd', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 3453, 332, 'girls', 'jknlk', '5443', ' fd g fdg  gf gdg', 'kiran@gmail.com', 'snp khan', '4543543', 'ge fg d ffg    d', 'khan@gmail.com', 'www.kv.com'),
(7, 'ke', '34535', 'cbse board', 'English', 12, 'kv@gbgbdsfmail.comfd', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 3453, 332, 'girls', 'jknlk', '5443', ' fd g fdg  gf gdg', 'kiran@gmail.com', 'snp khan', '4543543', 'ge fg d ffg    d', 'khan@gmail.com', 'www.kv.com'),
(8, 'ke', '34535', 'cbse board', 'English', 12, 'kv@gbbgghgbdsfmail.comfd', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 3453, 332, 'girls', 'jknlk', '5443', ' fd g fdg  gf gdg', 'kiran@gmail.com', 'snp khan', '4543543', 'ge fg d ffg    d', 'khan@gmail.com', 'www.kv.com'),
(9, 'ke', '34535', 'cbse board', 'English', 12, 'kv@ghhjhmail.comfd', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 3453, 332, 'girls', 'jknlk', '5443', ' fd g fdg  gf gdg', 'kiran@gmail.com', 'snp khan', '4543543', 'ge fg d ffg    d', 'khan@gmail.com', 'www.kv.com'),
(10, 'ke', '34535', 'cbse board', 'English', 12, 'kv@ghhjhsdfsdmail.comfd', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 3453, 332, 'girls', 'jknlk', '5443', ' fd g fdg  gf gdg', 'kiran@gmail.com', 'snp khan', '4543543', 'ge fg d ffg    d', 'khan@gmail.com', 'www.kv.com'),
(11, 'ke', '34535', 'cbse board', 'English', 12, 'kv@gsdfreail.comfd', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 3453, 332, 'girls', 'jknlk', '5443', ' fd g fdg  gf gdg', 'kiran@gmail.com', 'snp khan', '4543543', 'ge fg d ffg    d', 'khan@gmail.com', 'www.kv.com'),
(12, 'ke', '34535', 'cbse board', 'English', 12, 'kv@gs3434freail.comfd', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 3453, 332, 'girls', 'jknlk', '5443', ' fd g fdg  gf gdg', 'kiran@gmail.com', 'snp khan', '4543543', 'ge fg d ffg    d', 'khan@gmail.com', 'www.kv.com'),
(13, 'ke', '34535', 'cbse board', 'English', 12, 'kjhgv@gs3434freail.comfd', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 3453, 332, 'girls', 'jknlk', '5443', ' fd g fdg  gf gdg', 'kiran@gmail.com', 'snp khan', '4543543', 'ge fg d ffg    d', 'khan@gmail.com', 'www.kv.com'),
(14, 'ke', '34535', 'cbse board', 'English', 12, 'kjhgv@gsbbjhg3434freail.comfd', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 3453, 332, 'girls', 'jknlk', '5443', ' fd g fdg  gf gdg', 'kiran@gmail.com', 'snp khan', '4543543', 'ge fg d ffg    d', 'khan@gmail.com', 'www.kv.com'),
(15, 'ke', '34535', 'cbse board', 'English', 12, 'kjhgv@gsbbj3434freail.comfd', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 3453, 332, 'girls', 'jknlk', '5443', ' fd g fdg  gf gdg', 'kiran@gmail.com', 'snp khan', '4543543', 'ge fg d ffg    d', 'khan@gmail.com', 'www.kv.com'),
(16, 'ke', '34535', 'cbse board', 'English', 12, 'kjhgv@gsbbj3reail.comfd', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 3453, 332, 'girls', 'jknlk', '5443', ' fd g fdg  gf gdg', 'kiran@gmail.com', 'snp khan', '4543543', 'ge fg d ffg    d', 'khan@gmail.com', 'www.kv.com'),
(17, 'ke', '34535', 'cbse board', 'English', 12, 'kjhgv@gsbbj3reahgil.comfd', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 3453, 332, 'girls', 'jknlk', '5443', ' fd g fdg  gf gdg', 'kiran@gmail.com', 'snp khan', '4543543', 'ge fg d ffg    d', 'khan@gmail.com', 'www.kv.com'),
(18, 'ke', '34535', 'cbse board', 'English', 12, 'kjhh@gsbbj3reahgil.comfd', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 3453, 332, 'girls', 'jknlk', '5443', ' fd g fdg  gf gdg', 'kiran@gmail.com', 'snp khan', '4543543', 'ge fg d ffg    d', 'khan@gmail.com', 'www.kv.com'),
(19, 'ke', '34535', 'cbse board', 'English', 12, 'kds@sbbj3reahgil.comfd', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 3453, 332, 'girls', 'jknlk', '5443', ' fd g fdg  gf gdg', 'kiran@gmail.com', 'snp khan', '4543543', 'ge fg d ffg    d', 'khan@gmail.com', 'www.kv.com'),
(20, 'ke', '34535', 'cbse board', 'English', 12, 'mussiuuu@rtgyrt.comfd', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 3453, 332, 'girls', 'jknlk', '5443', ' fd g fdg  gf gdg', 'kiran@gmail.com', 'snp khan', '4543543', 'ge fg d ffg    d', 'khan@gmail.com', 'www.kv.com'),
(21, 'ke', '34535', 'cbse board', 'English', 12, 'mussizxcuuu@rtgyrt.comfd', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 3453, 332, 'girls', 'jknlk', '5443', ' fd g fdg  gf gdg', 'kiran@gmail.com', 'snp khan', '4543543', 'ge fg d ffg    d', 'khan@gmail.com', 'www.kv.com'),
(22, 'ke', '34535', 'cbse board', 'English', 12, 'muwsssizxcuuu@rtgyrt.comfd', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 3453, 332, 'girls', 'jknlk', '5443', ' fd g fdg  gf gdg', 'kiran@gmail.com', 'snp khan', '4543543', 'ge fg d ffg    d', 'khan@gmail.com', 'www.kv.com'),
(23, 'ke', '34535', 'cbse board', 'English', 12, 'muwsssizxcuuu@rtgyrtkulkarni.comfd', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 3453, 332, 'girls', 'jknlk', '5443', ' fd g fdg  gf gdg', 'kiran@gmail.com', 'snp khan', '4543543', 'ge fg d ffg    d', 'khan@gmail.com', 'www.kv.com'),
(24, 'navodaya', '2271817', 'mp board', 'English', 12, 'kvs@gmail.com', 'conninghum road', 'hari phatak', 'mhow', 'mp', 21822, 1234, 'co-ed', 'hajaaj', '7232101', 'ehklw khe kawwhe ksmddpsieh ', 'kiran@gmail.com', 'hajsao', '2281890', 'hrj kjsnr kzjsdkjeh ', 'khan@gmail.com', 'www.kv.com'),
(25, 'kendriya', '645576', 'cbse board', 'English', 12, 'kv@gmailfdd.com', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 32423, 8768, 'co-ed', 'jknlk', '8768', ' sdf sd dsf', 'kiran@gmail.com', 'snp khan', '7657', ' fdf dfs  sd f ', 'khan@gmail.com', 'www.kv.com'),
(26, 'kendriya', '34', 'cbse board', 'Hindi', 12, 'kullv@gmail.com', 'conninghum road', 'hari phatak', 'mhow', 'mp', 4653454, 23423, 'co-ed', 'sdfsdf', '32432', ' ds fsd  dsf sd  sdf sdf ', 'kiran@gmail.com', 'snp khan', '34534', ' df sd fs ', 'khan@gmail.com', 'www.kv.com'),
(27, 'kendriya', '789', 'cbse board', 'English', 12, 'kv@ghhjhkullomail.comfd', 'conninghum road', 'hari phatak', 'mhow', 'mp', 7867867, 453, 'boys', 'sdfsdf', '86786', 'ujsdhfksd sdfhkf fsd fkf skf', 'kiran@gmail.com', 'dfg', '7876876', 'kjhksdf sdfkhsdf sdfsd ', 'khan@gmail.com', 'www.kv.com'),
(28, 'ke', '455445', 'cbse board', 'English', 12, 'kv@gdsfmaidfgdl.com', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 65465, 43534, 'co-ed', 'kiran', '4363', 'ijljl kj lj jl ', 'kiran@gmail.com', 'dfg', '5433', 'ukh kh   klhl khlk', 'khan@gmail.com', 'www.kv.com'),
(29, 'kendriya', '435345', 'cbse board', 'English', 12, 'kv@dfgdfgmail.com', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 2132, 34234, 'co-ed', 'hajaaj', '43534', ' fdg fd f g f d d', 'kiran@gmail.com', 'dfg', '53453', 'f df g gfd  fd g', 'khan@gmail.com', 'www.kv.com'),
(30, 'kendriya', '435345', 'cbse board', 'English', 12, 'kv@dfgdhfgmail.com', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 2132, 34234, 'co-ed', 'hajaaj', '43534', ' fdg fd f g f d d', 'kiran@gmail.com', 'dfg', '53453', 'f df g gfd  fd g', 'khan@gmail.com', 'www.kv.com'),
(31, 'kendriya', '435345', 'cbse board', 'English', 12, 'kugiugv@dfgdhfgmail.com', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 2132, 34234, 'co-ed', 'hajaaj', '43534', ' fdg fd f g f d d', 'kiran@gmail.com', 'dfg', '53453', 'f df g gfd  fd g', 'khan@gmail.com', 'www.kv.com'),
(32, 'kendriya', '435345', 'cbse board', 'English', 12, 'kugiugv@dfrsgfgdhfgmail.com', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 2132, 34234, 'co-ed', 'hajaaj', '43534', ' fdg fd f g f d d', 'kiran@gmail.com', 'dfg', '53453', 'f df g gfd  fd g', 'khan@gmail.com', 'www.kv.com'),
(33, 'kendriya', '435345', 'cbse board', 'English', 12, 'kugiugv@dfrsghfgdhfgmail.com', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 2132, 34234, 'co-ed', 'hajaaj', '43534', ' fdg fd f g f d d', 'kiran@gmail.com', 'dfg', '53453', 'f df g gfd  fd g', 'khan@gmail.com', 'www.kv.com'),
(34, 'kendriya', '435345', 'cbse board', 'English', 12, 'kugiugvvf@hfgmail.com', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 2132, 34234, 'co-ed', 'hajaaj', '43534', ' fdg fd f g f d d', 'kiran@gmail.com', 'dfg', '53453', 'f df g gfd  fd g', 'khan@gmail.com', 'www.kv.com'),
(35, 'kendriya', '435345', 'cbse board', 'English', 12, 'kusdsgiugvvf@hfgmail.com', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 2132, 34234, 'co-ed', 'hajaaj', '43534', ' fdg fd f g f d d', 'kiran@gmail.com', 'dfg', '53453', 'f df g gfd  fd g', 'khan@gmail.com', 'www.kv.com'),
(36, 'kendriya', '3453', 'cbse board', 'English', 12, 'kv@gdfgdgmail.com', 'conninghum road', 'hari phatak', 'mhow', 'mp', 654, 2432, 'co-ed', 'kiran', '464', ' fd g fdg df', 'kiran@gmail.com', 'snp khan', '34535', ' sd tfd gr d', 'khan@gmail.com', 'www.kv.com'),
(37, 'kendriya', '3453', 'cbse board', 'English', 12, 'kv@gdfgdgmaisdfl.com', 'conninghum road', 'hari phatak', 'mhow', 'mp', 654, 2432, 'co-ed', 'kiran', '464', ' fd g fdg df', 'kiran@gmail.com', 'snp khan', '34535', ' sd tfd gr d', 'khan@gmail.com', 'www.kv.com'),
(38, 'kendriya', '3453', 'cbse board', 'English', 12, 'fdgfdgkv@gdfgdgmaisdfl.com', 'conninghum road', 'hari phatak', 'mhow', 'mp', 654, 2432, 'co-ed', 'kiran', '464', ' fd g fdg df', 'kiran@gmail.com', 'snp khan', '34535', ' sd tfd gr d', 'khan@gmail.com', 'www.kv.com'),
(39, 'kendriya', '3453', 'cbse board', 'English', 12, 'fdgfdgkv@gdfgdgmagvdfsgisdfl.com', 'conninghum road', 'hari phatak', 'mhow', 'mp', 654, 2432, 'co-ed', 'kiran', '464', ' fd g fdg df', 'kiran@gmail.com', 'snp khan', '34535', ' sd tfd gr d', 'khan@gmail.com', 'www.kv.com'),
(40, 'kendriya', '65765', 'cbse board', 'Hindi', 12, 'kv@gkjxchvmail.com', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 4353, 3432, 'co-ed', 'hajaaj', '34345', ' sdf  sdf  df sd fs', 'kiran@gmail.com', 'snp khan', '3454363', 'e rt we we r we r', 'khan@gmail.com', 'www.kv.com'),
(41, 'kendriya', '65765', 'cbse board', 'Hindi', 12, 'kv@gkjxchvjnjgmail.com', 'conninghum road', 'cunnighum road', 'mhow', 'mp', 4353, 3432, 'co-ed', 'hajaaj', '34345', ' sdf  sdf  df sd fs', 'kiran@gmail.com', 'snp khan', '3454363', 'e rt we we r we r', 'khan@gmail.com', 'www.kv.com'),
(42, 'navodaya', '343', 'mp board', 'Hindi', 12, 'kv@gmaifdsdfdfsl.com', 'conninghum road', 'hari phatak', 'mhow', 'mp', 45645, 43, 'co-ed', 'jknlk', '4564', ' d f sd fsdf ssd f f s', 'kiran@gmail.com', 'dfg', '4643', ' ergre  sdg sd f s d ', 'khan@gmail.com', 'www.kv.com'),
(43, 'navodaya', '343', 'mp board', 'Hindi', 12, 'ksertrsv@gmaifdsdfdfsl.com', 'conninghum road', 'hari phatak', 'mhow', 'mp', 45645, 43, 'co-ed', 'jknlk', '4564', ' d f sd fsdf ssd f f s', 'kiran@gmail.com', 'dfg', '4643', ' ergre  sdg sd f s d ', 'khan@gmail.com', 'www.kv.com'),
(44, 'navodaya', '343', 'mp board', 'Hindi', 12, 'ksertrsv@gfdifdsdfdfsl.com', 'conninghum road', 'hari phatak', 'mhow', 'mp', 45645, 43, 'co-ed', 'jknlk', '4564', ' d f sd fsdf ssd f f s', 'kiran@gmail.com', 'dfg', '4643', ' ergre  sdg sd f s d ', 'khan@gmail.com', 'www.kv.com'),
(45, 'navodaya', '343', 'mp board', 'Hindi', 12, 'ksertrsv@gfdifdjygsdfdfsl.com', 'conninghum road', 'hari phatak', 'mhow', 'mp', 45645, 43, 'co-ed', 'jknlk', '4564', ' d f sd fsdf ssd f f s', 'kiran@gmail.com', 'dfg', '4643', ' ergre  sdg sd f s d ', 'khan@gmail.com', 'www.kv.com'),
(46, 'navodaya', '343', 'mp board', 'Hindi', 12, 'ksertrsv@gfdifdjygjhgsdfdfsl.com', 'conninghum road', 'hari phatak', 'mhow', 'mp', 45645, 43, 'co-ed', 'jknlk', '4564', ' d f sd fsdf ssd f f s', 'kiran@gmail.com', 'dfg', '4643', ' ergre  sdg sd f s d ', 'khan@gmail.com', 'www.kv.com'),
(47, 'navodaya', '343', 'mp board', 'Hindi', 12, 'ksertrsv@gffmjmsdfdfsl.com', 'conninghum road', 'hari phatak', 'mhow', 'mp', 45645, 43, 'co-ed', 'jknlk', '4564', ' d f sd fsdf ssd f f s', 'kiran@gmail.com', 'dfg', '4643', ' ergre  sdg sd f s d ', 'khan@gmail.com', 'www.kv.com'),
(48, 'navodaya', '343', 'mp board', 'Hindi', 12, 'abcv@gffmjmsdfdfsl.com', 'conninghum road', 'hari phatak', 'mhow', 'mp', 45645, 43, 'co-ed', 'jknlk', '4564', ' d f sd fsdf ssd f f s', 'kiran@gmail.com', 'dfg', '4643', ' ergre  sdg sd f s d ', 'khan@gmail.com', 'www.kv.com'),
(49, 'kv', '25638273', 'cbse board', 'English', 12, 'gwjhr@hsdfujs.com', 'iydhaje', 'bsdvhsage', 'hgkjHEB', 'HZGDJS', 12312, 2421, 'co-ed', 'bveebjw', '48726892', 'edvahnjhsg hhsui hszgd jhrb sjk', 'gfdskj@jhfa.com', 'jhsgbjwab', '223826', 'gsdiyghsjb hguwa juhged uhyged jhgbdk', 'szgdih@geva.com', 'www.kv.com'),
(50, 'shree bal vinay mandir', '12345', 'cbse board', 'English', 12, 'sbvm@gmail.com', 'mhow naka', 'chattribagh', 'indore', 'mp', 453441, 2019, 'co-ed', 'sumita arora', '98765', 'Hiii this is Principals message from sbvm school.', 'sumita@gmail.com', 'anjushree', '123456789', 'hello this is director message from sbvm schoool.', 'anjushree@gmail.com', 'www.sbvm.com');

-- --------------------------------------------------------

--
-- Table structure for table `school_with_streams`
--

DROP TABLE IF EXISTS `school_with_streams`;
CREATE TABLE IF NOT EXISTS `school_with_streams` (
  `school_id` int(100) NOT NULL,
  `stream_id` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_with_streams`
--

INSERT INTO `school_with_streams` (`school_id`, `stream_id`) VALUES
(4, 'strm1'),
(4, 'strm2'),
(4, 'strm5'),
(4, 'strm6'),
(5, 'strm1'),
(5, 'strm3'),
(5, 'strm8'),
(5, 'strm9'),
(5, 'strm10'),
(5, 'strm13'),
(5, 'strm14'),
(6, 'strm1'),
(6, 'strm2'),
(6, 'strm6'),
(6, 'strm7'),
(6, 'strm8'),
(7, 'strm1'),
(7, 'strm2'),
(7, 'strm6'),
(7, 'strm7'),
(7, 'strm8'),
(8, 'strm1'),
(8, 'strm2'),
(8, 'strm6'),
(8, 'strm7'),
(8, 'strm8'),
(9, 'strm1'),
(9, 'strm2'),
(9, 'strm6'),
(9, 'strm7'),
(9, 'strm8'),
(10, 'strm1'),
(10, 'strm2'),
(10, 'strm6'),
(10, 'strm7'),
(10, 'strm8'),
(11, 'strm1'),
(11, 'strm2'),
(11, 'strm6'),
(11, 'strm7'),
(11, 'strm8'),
(12, 'strm1'),
(12, 'strm2'),
(12, 'strm6'),
(12, 'strm7'),
(12, 'strm8'),
(13, 'strm1'),
(13, 'strm2'),
(13, 'strm6'),
(13, 'strm7'),
(13, 'strm8'),
(14, 'strm1'),
(14, 'strm2'),
(14, 'strm6'),
(14, 'strm7'),
(14, 'strm8'),
(15, 'strm1'),
(15, 'strm2'),
(15, 'strm6'),
(15, 'strm7'),
(15, 'strm8'),
(16, 'strm1'),
(16, 'strm2'),
(16, 'strm6'),
(16, 'strm7'),
(16, 'strm8'),
(17, 'strm1'),
(17, 'strm2'),
(17, 'strm6'),
(17, 'strm7'),
(17, 'strm8'),
(18, 'strm1'),
(18, 'strm2'),
(18, 'strm6'),
(18, 'strm7'),
(18, 'strm8'),
(19, 'strm1'),
(19, 'strm2'),
(19, 'strm6'),
(19, 'strm7'),
(19, 'strm8'),
(20, 'strm1'),
(20, 'strm2'),
(20, 'strm6'),
(20, 'strm7'),
(20, 'strm8'),
(21, 'strm1'),
(21, 'strm2'),
(21, 'strm6'),
(21, 'strm7'),
(21, 'strm8'),
(22, 'strm1'),
(22, 'strm2'),
(22, 'strm6'),
(22, 'strm7'),
(22, 'strm8'),
(23, 'strm1'),
(23, 'strm2'),
(23, 'strm6'),
(23, 'strm7'),
(23, 'strm8'),
(24, 'strm1'),
(24, 'strm2'),
(24, 'strm5'),
(24, 'strm7'),
(24, 'strm8'),
(24, 'strm13'),
(24, 'strm14'),
(25, 'strm1'),
(25, 'strm2'),
(25, 'strm8'),
(25, 'strm9'),
(25, 'strm10'),
(26, 'strm1'),
(26, 'strm2'),
(26, 'strm7'),
(26, 'strm8'),
(26, 'strm9'),
(27, 'strm1'),
(27, 'strm2'),
(27, 'strm13'),
(27, 'strm14'),
(28, 'strm2'),
(28, 'strm10'),
(28, 'strm12'),
(28, 'strm13'),
(29, 'strm1'),
(29, 'strm2'),
(29, 'strm7'),
(29, 'strm8'),
(29, 'strm9'),
(30, 'strm1'),
(30, 'strm2'),
(30, 'strm7'),
(30, 'strm8'),
(30, 'strm9'),
(31, 'strm1'),
(31, 'strm2'),
(31, 'strm7'),
(31, 'strm8'),
(31, 'strm9'),
(32, 'strm1'),
(32, 'strm2'),
(32, 'strm7'),
(32, 'strm8'),
(32, 'strm9'),
(33, 'strm1'),
(33, 'strm2'),
(33, 'strm7'),
(33, 'strm8'),
(33, 'strm9'),
(34, 'strm1'),
(34, 'strm2'),
(34, 'strm7'),
(34, 'strm8'),
(34, 'strm9'),
(35, 'strm1'),
(35, 'strm2'),
(35, 'strm7'),
(35, 'strm8'),
(35, 'strm9'),
(36, 'strm2'),
(36, 'strm7'),
(36, 'strm8'),
(36, 'strm13'),
(36, 'strm14'),
(37, 'strm2'),
(37, 'strm7'),
(37, 'strm8'),
(37, 'strm13'),
(37, 'strm14'),
(38, 'strm2'),
(38, 'strm7'),
(38, 'strm8'),
(38, 'strm13'),
(38, 'strm14'),
(39, 'strm2'),
(39, 'strm7'),
(39, 'strm8'),
(39, 'strm13'),
(39, 'strm14'),
(40, 'strm1'),
(40, 'strm2'),
(40, 'strm10'),
(40, 'strm13'),
(40, 'strm14'),
(41, 'strm1'),
(41, 'strm2'),
(41, 'strm10'),
(41, 'strm13'),
(41, 'strm14'),
(42, 'strm1'),
(42, 'strm2'),
(42, 'strm9'),
(42, 'strm10'),
(43, 'strm1'),
(43, 'strm2'),
(43, 'strm9'),
(43, 'strm10'),
(44, 'strm1'),
(44, 'strm2'),
(44, 'strm9'),
(44, 'strm10'),
(45, 'strm1'),
(45, 'strm2'),
(45, 'strm9'),
(45, 'strm10'),
(46, 'strm1'),
(46, 'strm2'),
(46, 'strm9'),
(46, 'strm10'),
(47, 'strm1'),
(47, 'strm2'),
(47, 'strm9'),
(47, 'strm10'),
(47, 'strm13'),
(47, 'strm14'),
(48, 'strm1'),
(48, 'strm2'),
(48, 'strm9'),
(48, 'strm10'),
(48, 'strm13'),
(48, 'strm14'),
(49, 'strm1'),
(49, 'strm2'),
(49, 'strm4'),
(49, 'strm5'),
(49, 'strm6'),
(49, 'strm7'),
(50, 'strm1'),
(50, 'strm6'),
(50, 'strm8'),
(50, 'strm9'),
(50, 'strm11'),
(50, 'strm12'),
(50, 'strm13'),
(50, 'strm14');

-- --------------------------------------------------------

--
-- Table structure for table `streams`
--

DROP TABLE IF EXISTS `streams`;
CREATE TABLE IF NOT EXISTS `streams` (
  `Stream_id` varchar(10) NOT NULL,
  `Stream_name` varchar(30) NOT NULL,
  PRIMARY KEY (`Stream_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `streams`
--

INSERT INTO `streams` (`Stream_id`, `Stream_name`) VALUES
('strm1', 'arts+hindi'),
('strm2', 'arts+information practices'),
('strm3', 'arts+physical education'),
('strm4', 'commerce+mathematics'),
('strm5', 'commerce+information practices'),
('strm6', 'commerce+hindi'),
('strm7', 'commerce+physical education'),
('strm8', 'PCM+hindi'),
('strm9', 'PCM+information practices'),
('strm10', 'PCM+physical education'),
('strm11', 'PCB+hindi'),
('strm12', 'PCB+mathematics'),
('strm13', 'PCB+information practices'),
('strm14', 'PCB+physical education');

-- --------------------------------------------------------

--
-- Table structure for table `stream_with_subject`
--

DROP TABLE IF EXISTS `stream_with_subject`;
CREATE TABLE IF NOT EXISTS `stream_with_subject` (
  `Stream_id` varchar(10) NOT NULL,
  `subject_id` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stream_with_subject`
--

INSERT INTO `stream_with_subject` (`Stream_id`, `subject_id`) VALUES
('strm1', 'sub7'),
('strm1', 'sub8'),
('strm1', 'sub9'),
('strm1', 'sub10'),
('strm1', 'sub11'),
('strm2', 'sub7'),
('strm2', 'sub8'),
('strm2', 'sub9'),
('strm2', 'sub10'),
('strm2', 'sub12'),
('strm3', 'sub7'),
('strm3', 'sub8'),
('strm3', 'sub9'),
('strm3', 'sub10'),
('strm3', 'sub13'),
('strm4', 'sub1'),
('strm4', 'sub5'),
('strm4', 'sub6'),
('strm4', 'sub7'),
('strm4', 'sub10'),
('strm5', 'sub5'),
('strm5', 'sub6'),
('strm5', 'sub7'),
('strm5', 'sub10'),
('strm5', 'sub12'),
('strm6', 'sub5'),
('strm6', 'sub6'),
('strm6', 'sub7'),
('strm6', 'sub10'),
('strm6', 'sub11'),
('strm7', 'sub5'),
('strm7', 'sub6'),
('strm7', 'sub7'),
('strm7', 'sub10'),
('strm7', 'sub13'),
('strm8', 'sub1'),
('strm8', 'sub3'),
('strm8', 'sub4'),
('strm8', 'sub10'),
('strm8', 'sub11'),
('strm9', 'sub1'),
('strm9', 'sub3'),
('strm9', 'sub4'),
('strm9', 'sub10'),
('strm9', 'sub12'),
('strm10', 'sub1'),
('strm10', 'sub3'),
('strm10', 'sub4'),
('strm10', 'sub10'),
('strm10', 'sub13'),
('strm11', 'sub2'),
('strm11', 'sub3'),
('strm11', 'sub4'),
('strm11', 'sub10'),
('strm11', 'sub11'),
('strm12', 'sub1'),
('strm12', 'sub2'),
('strm12', 'sub3'),
('strm12', 'sub4'),
('strm12', 'sub10'),
('strm13', 'sub2'),
('strm13', 'sub3'),
('strm13', 'sub4'),
('strm13', 'sub10'),
('strm13', 'sub12'),
('strm14', 'sub2'),
('strm14', 'sub3'),
('strm14', 'sub4'),
('strm14', 'sub10'),
('strm14', 'sub13');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `Subject_id` varchar(20) NOT NULL,
  `Subject_name` varchar(30) NOT NULL,
  PRIMARY KEY (`Subject_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`Subject_id`, `Subject_name`) VALUES
('sub1', 'mathematics'),
('sub2', 'biology'),
('sub3', 'physics'),
('sub4', 'chemistry'),
('sub5', 'accounts'),
('sub6', 'bussiness'),
('sub7', 'economics'),
('sub8', 'history'),
('sub9', 'geography'),
('sub10', 'english'),
('sub11', 'hindi'),
('sub12', 'information practices'),
('sub13', 'physical education');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `Name` varchar(30) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;
