-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 30, 2022 at 11:24 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurantdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('Admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `admincategory`
--

DROP TABLE IF EXISTS `admincategory`;
CREATE TABLE IF NOT EXISTS `admincategory` (
  `id` int(200) NOT NULL,
  `categoryName` varchar(200) NOT NULL,
  `scategoryName` varchar(200) NOT NULL,
  `scategoryImage` varchar(200) NOT NULL,
  `scategoryPage` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admincategory`
--

INSERT INTO `admincategory` (`id`, `categoryName`, `scategoryName`, `scategoryImage`, `scategoryPage`, `status`) VALUES
(3, 'Daily Meal', 'Breakfast', 'upload/gallery-img-06.jpg', 'breakfast.php', 'Active'),
(2, 'Daily Meal', 'Lunch', 'upload/dinner.jpg', 'lunch.php', 'Active'),
(1, 'Daily Meal', 'Dinner', 'upload/gallery-img-04.jpg', 'dinner.php', 'Active'),
(4, 'Regional Meal', 'Dhaka', 'upload/0old-dhaka.jpg', 'dhaka.php', 'Active'),
(5, 'Regional Meal', 'Chittagong', 'upload/chitta.jpg', 'chittagong.php', 'Active'),
(6, 'Regional Meal', 'Rajshahi', 'upload/rajshahi.jpg', 'rajshahi.php', 'Active'),
(7, 'Regional Meal', 'Khulna', 'upload/khulna.jpg', 'khulna.php', 'Active'),
(8, 'Healthy Food', 'Children', 'upload/kids.jpg', 'kids.php', 'Active'),
(9, 'Healthy Food', 'Youth', 'upload/youth.jpg', 'youth.php', 'Active'),
(10, 'Healthy Food', 'Elder', 'upload/senior.jpg', 'senior.php', 'Deactive');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `Id` int(100) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Comment` varchar(200) NOT NULL,
  `Category` varchar(200) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`Id`, `Name`, `Email`, `Comment`, `Category`) VALUES
(1, 'Israt Munny', 'munnycse46@gmail.com', 'Dal is so tasty', 'Breakfast'),
(2, 'maruf', 'maruf190313@gmail.com', 'Bhaji is not bad', 'Breakfast'),
(3, 'Munia', 'munia@gmail.com', 'Dal is not bad', 'Breakfast'),
(4, 'Amrin', 'amrin@gmail.com', 'Combo-1 is not bad', 'Lunch'),
(5, 'Israt Munny', 'munnycse46@gmail.com', 'Akhni is so tasty', 'Chittagong');

-- --------------------------------------------------------

--
-- Table structure for table `cupon`
--

DROP TABLE IF EXISTS `cupon`;
CREATE TABLE IF NOT EXISTS `cupon` (
  `Id` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Price` varchar(200) NOT NULL,
  `Status` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cupon`
--

INSERT INTO `cupon` (`Id`, `Name`, `Description`, `Price`, `Status`) VALUES
(1, 'Mother Language Day Cupon', 'To show respect International Mother Language Day, we give discount on food in this day', '10%', 'Deactive');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

DROP TABLE IF EXISTS `donor`;
CREATE TABLE IF NOT EXISTS `donor` (
  `phone` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `comment` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`phone`, `name`, `amount`, `address`, `comment`) VALUES
('01709216382', 'Israt Munny', '3000', 'Gazipur,Dhaka', 'I am happy to give some money in orphanage fund'),
('01925263254', 'Nusrat Emu', '2000', 'Rangpur,Dhaka', 'I am glad to provide some money'),
('01709923628', 'Amrin', '1000', 'Gazipur', 'This is good idea');

-- --------------------------------------------------------

--
-- Table structure for table `ofccomments`
--

DROP TABLE IF EXISTS `ofccomments`;
CREATE TABLE IF NOT EXISTS `ofccomments` (
  `Id` int(200) NOT NULL AUTO_INCREMENT,
  `owner_id` varchar(200) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Comment` varchar(200) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ofccomments`
--

INSERT INTO `ofccomments` (`Id`, `owner_id`, `Name`, `Email`, `Comment`) VALUES
(1, '', '', '', ''),
(2, '', '', '', ''),
(3, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ofcfood`
--

DROP TABLE IF EXISTS `ofcfood`;
CREATE TABLE IF NOT EXISTS `ofcfood` (
  `id` varchar(60) NOT NULL,
  `foodId` varchar(60) NOT NULL,
  `foodName` varchar(60) NOT NULL,
  `foodImg` varchar(100) NOT NULL,
  `rating` varchar(60) NOT NULL,
  `quantity` int(11) NOT NULL,
  `availability` varchar(60) NOT NULL,
  `price` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ofcfood`
--

INSERT INTO `ofcfood` (`id`, `foodId`, `foodName`, `foodImg`, `rating`, `quantity`, `availability`, `price`) VALUES
('MarGaz111120', '123', 'Birany', 'upload/food2.jpg', '4.5', 8, 'Available', '250'),
('MarGaz111120', '124', 'Khichuri', 'upload/food3.jpg', '4.7', 5, 'Available', '150'),
('RitRan031220', '129', 'Gorur Kala Vuna', 'upload/gorurKalaVuna.jpg', '4.7', 12, 'Available', '450'),
('RitRan031220', '125', 'Gorur bot', 'upload/gorurBot.jpg', '4.5', 15, 'Available', '300'),
('RitRan031220', '126', 'Murgir Roast', 'upload/murgirroast.jpg', '4.9', 20, 'Available', '120'),
('RitRan031220', '127', 'Rui Fish Curry', 'upload/ruifishcurry.jpg', '4.9', 25, 'Available', '130'),
('RitRan031220', '128', 'Chiken Burger', 'upload/chikenBurger.jpg', '4.7', 30, 'Available', '120');

-- --------------------------------------------------------

--
-- Table structure for table `ofcpayment`
--

DROP TABLE IF EXISTS `ofcpayment`;
CREATE TABLE IF NOT EXISTS `ofcpayment` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `owner_id` varchar(200) NOT NULL,
  `foodId` varchar(200) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `nick_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phnNo` varchar(200) NOT NULL,
  `foodName` varchar(200) NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `payment_method` varchar(200) NOT NULL,
  `card_no` varchar(200) NOT NULL,
  `card_cvc` varchar(200) NOT NULL,
  `mobileBankingNo` varchar(200) NOT NULL,
  `payment_date` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ofcpayment`
--

INSERT INTO `ofcpayment` (`id`, `owner_id`, `foodId`, `full_name`, `nick_name`, `email`, `phnNo`, `foodName`, `quantity`, `price`, `gender`, `payment_method`, `card_no`, `card_cvc`, `mobileBankingNo`, `payment_date`, `address`) VALUES
(1, 'RitRan031220', '125', 'Israt', 'Tonny', 'munnycse46@gmail.com', '01709923628', 'Gorur bot', '4', '300', 'Female', 'Rocket', 'Null', 'Null', '01926852788', '20 04 2021', 'Null'),
(2, 'RitRan031220', '128', 'Nusrat', 'Ritu', 'ritu@gmail.com', '01709923699', 'Chiken Burger', '3', '120', 'Female', 'Bkash', 'Null', 'Null', '01709216382', '20 04 2021', 'Null'),
(3, 'RitRan031220', '129', 'munia', 'mun', 'mushfikaikfatmunia@gmail.com', '01767881961', 'Gorur Kala Vuna', '2', '450', 'Female', 'Cash on delivery', 'Null', 'Null', 'Null', '', 'Null');

-- --------------------------------------------------------

--
-- Table structure for table `openfood`
--

DROP TABLE IF EXISTS `openfood`;
CREATE TABLE IF NOT EXISTS `openfood` (
  `id` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `profileName` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phnNo` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `profileImg` varchar(50) NOT NULL,
  `foodImg1` varchar(50) NOT NULL,
  `foodImg2` varchar(50) NOT NULL,
  `foodImg3` varchar(50) NOT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `openfood`
--

INSERT INTO `openfood` (`id`, `username`, `profileName`, `address`, `phnNo`, `email`, `profileImg`, `foodImg1`, `foodImg2`, `foodImg3`, `password`) VALUES
('RitRan031220', 'Ritu', 'Ritu Kitchen', 'Rangpur', '01709923699', 'ritu@gmail.com', 'upload/client4.jpg', 'upload/gorurKalaVuna.jpg', 'upload/gorurBot.jpg', 'upload/murgirroast.jpg', '123123');

-- --------------------------------------------------------

--
-- Table structure for table `orderinfo`
--

DROP TABLE IF EXISTS `orderinfo`;
CREATE TABLE IF NOT EXISTS `orderinfo` (
  `Id` int(200) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `Contact` varchar(200) NOT NULL,
  `Taka` varchar(200) NOT NULL,
  `Order_Received` varchar(200) NOT NULL,
  `Delivery_Time` varchar(200) NOT NULL,
  `Status` varchar(200) NOT NULL,
  `item` varchar(200) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderinfo`
--

INSERT INTO `orderinfo` (`Id`, `Name`, `Contact`, `Taka`, `Order_Received`, `Delivery_Time`, `Status`, `item`) VALUES
(4, 'Israt Munny', '01709923628', '80', '10 04 2021', '10 04 2021', 'Processing', 'Dal'),
(3, 'Farjana Mim', '01709923699', '6', '10 04 2021', '10 04 2021', 'Processing', 'Ruti');

-- --------------------------------------------------------

--
-- Table structure for table `orphan`
--

DROP TABLE IF EXISTS `orphan`;
CREATE TABLE IF NOT EXISTS `orphan` (
  `phone` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `comment` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orphan`
--

INSERT INTO `orphan` (`phone`, `name`, `amount`, `address`, `comment`) VALUES
('01703123628', 'Runa Rahman', '1500', 'Gazipur,Dhaka', 'It helps me a lot'),
('01709216384', 'Mira akter', '1000', 'Rangpur', 'This money is really help me');

-- --------------------------------------------------------

--
-- Table structure for table `paymentinfo`
--

DROP TABLE IF EXISTS `paymentinfo`;
CREATE TABLE IF NOT EXISTS `paymentinfo` (
  `Id` int(200) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(200) NOT NULL,
  `nick_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phnNo` varchar(200) NOT NULL,
  `foodName` varchar(200) NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `payment_method` varchar(200) NOT NULL,
  `card_no` varchar(200) NOT NULL,
  `card_cvc` varchar(200) NOT NULL,
  `mobileBankingNo` varchar(200) NOT NULL,
  `payment_date` varchar(200) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentinfo`
--

INSERT INTO `paymentinfo` (`Id`, `full_name`, `nick_name`, `email`, `phnNo`, `foodName`, `quantity`, `price`, `gender`, `payment_method`, `card_no`, `card_cvc`, `mobileBankingNo`, `payment_date`, `address`) VALUES
(5, 'Israt', 'Munny', 'munnycse46@gmail.com', '01709923628', 'Dal', '4', '20', 'Female', 'Rocket', 'Null', 'Null', '01709216382', '10 04 2021', 'Null'),
(4, 'Farjana', 'Mim', 'mim@gmail.com', '01709923699', 'Ruti', '4', '30', 'Female', 'Bkash', 'Null', 'Null', '01709216377', '10 04 2021', 'Null');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `Id` int(100) NOT NULL,
  `Image` varchar(200) NOT NULL,
  `Product_Name` varchar(200) NOT NULL,
  `Catagory_Name` varchar(200) NOT NULL,
  `Price` varchar(200) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Rating` varchar(200) NOT NULL,
  `Status` varchar(200) NOT NULL,
  `discount` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Id`, `Image`, `Product_Name`, `Catagory_Name`, `Price`, `Description`, `Rating`, `Status`, `discount`) VALUES
(2, 'upload/bhaji.jpg', 'Bhaji', 'Breakfast', '50', 'It is mixed with seasonal vegetables.', '4.5', 'Available', '5'),
(3, 'upload/dal.jpg', 'Dal', 'Breakfast', '20', 'We have different types of dal like mugdal, mosurdal, chanadal..', '4', 'Available', '0'),
(1, 'upload/ruti.jpg', 'Ruti', 'Breakfast', '30', 'Ruti is made of wheat', '5', 'Available', '5'),
(4, 'upload/dimvaji.jpg', 'Scrambled egg', 'Breakfast', '15', 'It have egg, carrot, onion,chili.', '3.75', 'Available', '0'),
(5, 'upload/singara.jpg', 'Singara', 'Breakfast', '6', 'It have potatoes , nuts and veg.', '5', 'Available', '0'),
(6, 'upload/item05.jpeg', 'Combo-4', 'Lunch', '320', 'This is so tasty', '5', 'Available', '0'),
(7, 'upload/item01.jpg', 'Combo-1', 'Lunch', '100', 'It is our typical home food', '4.8', 'Available', '5'),
(8, 'upload/item02.jpg', 'Combo-2', 'Lunch', '120', 'It has vorta, vaji, egg, meat dish and rice dish', '4.2', 'Available', '6'),
(9, 'upload/item03.jpg', 'Combo-3', 'Lunch', '250', 'It is a surprising combo from our restaurants.', '4.8', 'Available', '0'),
(10, 'upload/item05.jpeg', 'Combo-1', 'Dinner', '180', 'It has 3 types vorta, 2 types vaji, 1 meat dish and 1 rice dish.', '4.8', 'Available', '0'),
(13, 'upload/Beef Biryani.jpg', 'Beef birany', 'Dinner', '400', 'It prepares with mutton.', '4.3', 'Available', '5'),
(11, 'upload/Beef-Khichuri.jpg', 'Beef-khichuri', 'Dinner', '120', 'It is our typical home food', '4.8', 'Available', '0'),
(12, 'upload/Chiken Boti Kabab.jpg', 'Chiken Boti Kabab', 'Dhaka', '90', 'It prepares with chiken.', '4.9', 'Available', '0'),
(14, 'upload/Bakorkhani.jpg', 'Bakorkhani', 'Dhaka', '70', 'This is so tasty', '5', 'Available', '0'),
(15, 'upload/Shami Kabab.jpg', 'Shami kabab', 'Dhaka', '120', 'This is made with onion and mutton.', '4', 'Available', '6'),
(16, 'upload/Morog polao.jpg', 'Morog Polao', 'Dhaka', '200', 'This is made with rice and chiken.', '5', 'Available', '0'),
(17, 'upload/beefcurry.jpg', 'Beef curry', 'Dhaka', '400', 'This is prepares with mutton.', '4.5', 'Available', '2'),
(18, 'upload/Akhni.jpg', 'Akhni', 'Chittagong', '95', 'This is so tasty', '5', 'Available', '0'),
(19, 'upload/Duroos Kura.jpg', 'Duroos Kura', 'Chittagong', '100', 'This is serprisingly tasty.', '4.8', 'Available', '2'),
(20, 'upload/Mezbani Gosht.jpg', 'Mezbani Gost', 'Chittagong', '400', 'This is prepares with mutton.', '4.8', 'Available', '0'),
(21, 'upload/Pera Shondesh.jpg', 'Pera Shondesh', 'Rajshahi', '20', 'It is our typical home food', '5', 'Available', '0'),
(22, 'upload/Date juice.jpg', 'Date juice', 'Rajshahi', '70', 'This is so tasty', '4.8', 'Available', '3'),
(23, 'upload/Dudh Chitoi.jpg', 'Dudh Chitoi', 'Rajshahi', '15', 'This is prepares with milk,sugar etc.', '4.8', 'Available', '0'),
(24, 'upload/Beef Chui Jhal.jpg', 'Beef Chui jhal', 'Khulna', '120', 'This is prepares with mutton.', '4.5', 'Available', '3'),
(25, 'upload/Malai kulfi.jpg', 'Malai kulfi', 'Khulna', '10', 'This is prepares with milk, coconut and sugar.', '5', 'Available', '0'),
(26, 'upload/Gur Shondesh.jpg', 'Gur Shondesh', 'Khulna', '10', 'This is prepares with Gur and coconut.', '5', 'Available', '0'),
(27, 'upload/eggie.jpg', 'Eggie Dish', 'Kids', '60', 'This is prepares with egg.', '4.8', 'Available', '0'),
(28, 'upload/meatt.jpg', 'Meat dishes', 'Kids', '120', 'This is a traditional yet enjoying meat dish for children.', '4.8', 'Available', '3'),
(29, 'upload/cheese.jpg', 'Cheesi land', 'Kids', '100', 'This is so tasty', '5', 'Available', '0'),
(30, 'upload/cake.jpg', 'Cake', 'Kids', '80', 'Simple Cake with lots of dry fruits.', '5', 'Available', '0'),
(31, 'upload/fishie.jpg', 'Fishie Missi', 'Youth', '100', 'Seasonal all fishes', '5', 'Available', '0'),
(32, 'upload/sea.jpg', 'Sea Food', 'Youth', '120', 'Crabs, Prawn, Calms Stew.', '4.5', 'Available', '2'),
(33, 'upload/salad.jpg', 'Fruits Salad', 'Youth', '100', 'Seasonal all foods', '5', 'Available', '0'),
(34, 'upload/fishie.jpg', 'Fishie Missi', 'Older', '100', 'Seasonal all fishes', '4.8', 'Available', '0'),
(35, 'upload/vlue.jpg', 'BlueBery Combo', 'Older', '120', 'Our special combo.', '4.5', 'Available', '2'),
(36, 'upload/salad00.jpg', 'Vegetables and Fruits', 'Older', '100', 'Seasonal all foods and vegetables', '5', 'Available', '0'),
(9, 'upload/ruifishcurry.jpg', 'janina', 'janina', '200', 'janina', 'janina', 'Available', '10'),
(9, 'upload/ruifishcurry.jpg', 'janina', 'janina', '200', 'janina', 'janina', 'Available', '10'),
(100, 'upload/chikenBurger.jpg', 'MUSFIKA IKFAT MUNIA', 'Breakfast', '200', 'fjjf', 'dhdghd', 'Available', '10'),
(101, 'upload/burger.jpg', 'MUSFIKA IKFAT MUNIA', 'janina', '200', 'janina', 'janina', 'Available', '10'),
(100, 'upload/Morog polao.jpg', 'MUSFIKA IKFAT MUNIA', 'janina', '200', 'janina', 'janina', 'Available', '10');

-- --------------------------------------------------------

--
-- Table structure for table `regid`
--

DROP TABLE IF EXISTS `regid`;
CREATE TABLE IF NOT EXISTS `regid` (
  `id` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regid`
--

INSERT INTO `regid` (`id`) VALUES
('RitRan031220');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `Name` varchar(80) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Age` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Passward` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `Email`, `Age`, `Address`, `Passward`) VALUES
('munny', 'munnycse46@gmail.com', '22', 'Gazipur', '123'),
('Maruf', 'maruf190313@gmail.com', '18', 'Gazipur', '456'),
('Tanima', 'ruma@gmail.com', '22', 'Rangpur', '2323'),
('Rupa', 'rupa@gmail.com', '22', 'Dinajpur', '444'),
('Abir', 'abir@gmail.com', '18', 'Gazipur,Dhaka', '8989'),
('Amrin', 'admin@gmail.com', '22', 'Gazipur,Dhaka', '6666'),
('Amrin', 'admin@gmail.com', '22', 'Gazipur,Dhaka', '6666'),
('munia', 'mushfikaikfatmunia@gmail.com', '23', 'sgyfgd', '1234'),
('mouno', 'mushfikaikfatmunia@gmail.com', '3', 'dhaka', 'mouno1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
