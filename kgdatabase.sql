-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2017 at 02:04 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kgdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_fullname` varchar(50) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_fullname`, `admin_username`, `admin_password`) VALUES
(1, 'Mary Moore', 'marymoore1', 'Mary@1234');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `log_id` int(11) NOT NULL,
  `log_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `prod_id` int(11) NOT NULL,
  `prod_type` varchar(50) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `prod_size` varchar(50) NOT NULL,
  `prod_make` varchar(50) NOT NULL,
  `prod_color` varchar(50) NOT NULL,
  `prod_description` varchar(150) NOT NULL,
  `prod_supplier` varchar(150) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `supp_add` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `prod_type`, `prod_name`, `prod_size`, `prod_make`, `prod_color`, `prod_description`, `prod_supplier`, `province`, `city`, `supp_add`) VALUES
(1, 'electronics and computers', 'television', '72 inch', 'model 23vi', 'black', 'samsung HD touchscreen television. black. 3 usb ports. ', 'samsung', 'limpopo', 'polokwane', 'shop 52 cnr schoeman str & mogapi str polokwane 01'),
(3, 'fashion and beauty', 'hair', '16 inches', '100% virgin human hair', 'black', '100% virgin human hair. black. brazilian. ', 'style diva', 'gauteng', 'johannesburg', '145 cnr voortrekker str & madiba str Johannesburg '),
(4, 'food', 'yoghurt', '500ml', 'pdicl24', 'none', ' clover yoghurt 500ml all flavours', 'clover', 'eastern cape', 'grahamstown', '123 hoor str\r\ngrahamstown'),
(5, 'kids', 'bicycle', 'medium size', '2016i', 'red', 'raider bicycle red. medium size. appropriate for kids between 2-6 years', 'MoTech Supp', 'mpumalanga', 'nelspruit', '458 Moghut str\r\nnelspruit\r\n0222'),
(6, 'vehicle', 'jeep', 'none', 'srt 8 2016', 'red', 'jeep srt 8 2016. red.', 'jeep centurion', 'gauteng', 'centurion', '544 voortrekker road\r\ncenturion\r\n0122'),
(7, 'food', 'juice', '1litre', '1015i', 'none', 'khusher juice pack x 24 all flavours', 'Krusher', 'free state', 'bloemfontein', '4778 koos str\r\nbloemfontein\r\n0000'),
(8, 'beauty', 'hair', '12 inches', 'synthetic', 'blonde', '12 inches sythetic hair. blonde', 'Beauty co', 'Kwazulu Natal', 'durban', '144 Zult str\r\ndurban shopping center\r\n1445'),
(9, 'food', 'yoghurt', '250ml', '2015e', 'none', '250ml parmalat yoghurt all flavors', 'parmalat', 'gauteng', 'pretoria', 'cnr park str and schoeman\r\npretoria\r\n0122\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE IF NOT EXISTS `suppliers` (
  `supp_id` int(11) NOT NULL,
  `supp_name` varchar(150) NOT NULL,
  `supp_province` varchar(50) NOT NULL,
  `supp_town` varchar(50) NOT NULL,
  `supp_address` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supp_id`, `supp_name`, `supp_province`, `supp_town`, `supp_address`) VALUES
(1, 'style diva', 'gauteng', 'johannesburg', '145 cnr voortrekker str & madiba str\nJohannesburg\n0001'),
(3, 'samsung', 'limpopo', 'polokwane', 'shop 52 cnr schoeman str & mogapi str\npolokwane\n0124');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supp_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
