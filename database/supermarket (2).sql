-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2021 at 07:09 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `addressid` int(10) NOT NULL,
  `custid` int(10) NOT NULL,
  `city_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `state` varchar(25) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `contactno` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`addressid`, `custid`, `city_id`, `address`, `state`, `pincode`, `contactno`) VALUES
(3, 13, 8, '3rd floor, city light building, Opp. Khazana jewellers', 'Karnataka', '575003', 2147483647),
(4, 13, 2, 'Tenkila road', 'karnataka', '589674', 2147483647),
(5, 15, 6, '3rfd floor,\r\ncity ligh', 'Karnataka', '476512', 2147483647),
(6, 2, 2, '3rd floor', 'karna', '121223', 2147483647),
(7, 2, 7, 'Jamshed pur', 'Karnataka', '589674', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `bilid` int(10) NOT NULL,
  `custid` int(10) NOT NULL,
  `addressid` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `bill_no` varchar(25) NOT NULL,
  `entry_type` text NOT NULL,
  `purchdate` date NOT NULL,
  `delivdate` date NOT NULL,
  `total_amt` double(10,2) NOT NULL,
  `cardtype` varchar(20) NOT NULL,
  `cardno` varchar(5) NOT NULL,
  `cvvno` varchar(10) NOT NULL,
  `expirydate` date NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`bilid`, `custid`, `addressid`, `city_id`, `staffid`, `bill_no`, `entry_type`, `purchdate`, `delivdate`, `total_amt`, `cardtype`, `cardno`, `cvvno`, `expirydate`, `comment`, `status`) VALUES
(2, 6, 0, 10, 1, '1001', 'Purchase', '2021-09-23', '0000-00-00', 2750.00, '', '', '', '0000-00-00', 'Thank you', 'Active'),
(3, 9, 0, 11, 1, '2500', 'Purchase', '2021-09-27', '0000-00-00', 16325.00, '', '', '', '0000-00-00', 'Thank you', 'Active'),
(4, 9, 0, 2, 1, '1001', 'Purchase', '0000-00-00', '0000-00-00', 1000.00, '', '', '', '0000-00-00', 'test', 'Active'),
(5, 13, 3, 8, 0, '1001', 'Invoice', '2021-09-27', '0000-00-00', 2850.00, 'Visa', '158', '', '0000-00-00', '', 'Active'),
(6, 13, 0, 8, 0, '1001', 'Invoice', '2021-09-27', '0000-00-00', 2850.00, 'Visa', '12345', '158', '0000-00-00', '', 'Active'),
(7, 13, 3, 8, 0, '1001', 'Invoice', '2021-09-27', '0000-00-00', 2000.00, 'Visa', '12345', '158', '0000-00-00', '', 'Active'),
(8, 14, 0, 6, 1, '1001', 'Purchase', '2021-09-22', '0000-00-00', 6400.00, '', '', '', '0000-00-00', 'Received by Udupi staff', 'Active'),
(9, 15, 5, 6, 0, '1001', 'Invoice', '2021-09-26', '0000-00-00', 4250.00, 'Visa', '12345', '587', '0000-00-00', '', 'Active'),
(10, 2, 7, 7, 0, '2501', 'Invoice', '2021-12-18', '2021-12-18', 100.00, 'Visa', '12345', '589', '0000-00-00', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catid` int(11) NOT NULL,
  `sub_catid` int(11) NOT NULL,
  `catgory_title` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catid`, `sub_catid`, `catgory_title`, `description`, `status`) VALUES
(3, 0, 'Household', 'Household Items', 'Active'),
(5, 0, 'Groceries', 'Groceries', 'Active'),
(6, 5, 'Cashews', 'Cashews Category', 'Active'),
(10, 0, 'Personal care', 'parsonal care code', 'Active'),
(11, 0, 'Packaged foods', 'packaged foods', 'Active'),
(12, 0, 'Beverages', 'beverages test', 'Active'),
(13, 0, 'Gourmet', 'gourmet tst', 'Active'),
(14, 3, 'Dals & Pulses', 'Dals & Pulses', 'Active'),
(15, 10, 'Baby Soap', 'Baby Soap', 'Active'),
(16, 11, 'Baby Food', 'Baby Food', 'Active'),
(17, 12, 'Instant Coffee', 'Instant Coffee', 'Active'),
(18, 5, 'Almonds', 'Almonds', 'Active'),
(19, 5, 'Cashews', 'Cashews', 'Active'),
(20, 5, 'Dry Fruit', 'Dry Fruit', 'Active'),
(21, 5, 'Rice & Rice Products', 'Rice & Rice Products', 'Active'),
(22, 3, 'Cookware', 'Cookware', 'Active'),
(23, 3, 'Dust pans', 'Dust Pans', 'Active'),
(24, 3, 'Scrubbers', 'Scrubbers', 'Active'),
(25, 3, 'Dust ', '', ''),
(26, 3, 'Dust Cloth', 'Dust cloth', 'Active'),
(27, 3, 'Mops', 'Mops', 'Active'),
(28, 3, 'Kitchenware', 'Kitchenware', 'Active'),
(29, 10, 'Baby Care Accessories', 'Baby Care Accessories', 'Active'),
(30, 10, 'Baby oil & shampoos', 'Baby Oil & Shampoos', 'Active'),
(31, 10, 'Baby Creams & Lotion', 'Baby Creams & Lotion', 'Active'),
(32, 10, 'Baby Powder', 'Baby Powder', 'Active'),
(33, 10, 'Diapers & Wipes', 'Diapers & Wipes', 'Active'),
(34, 11, 'Desert Items', 'Desert Items', 'Active'),
(35, 11, 'Biscuits', 'Biscuits', 'Active'),
(36, 11, 'Breakfast Cereals', 'Breakfast Cereals', 'Active'),
(37, 11, 'Chocolates & Sweets', 'Chocolates & Sweets', 'Active'),
(38, 12, 'Green Tea ', 'Green Tea', 'Active'),
(39, 12, 'Ground Coffee', 'Ground Coffee', 'Active'),
(40, 12, 'Herbal Tea', 'Herbal Tea', 'Active'),
(41, 12, 'Tea', 'Tea', 'Active'),
(42, 12, 'Tea Bags', 'Tea bags', 'Active'),
(43, 5, 'Fruits', 'Fruits', 'Active'),
(44, 5, 'Vegetables', 'Vegetables', 'Active'),
(45, 11, 'Rusk', '', 'Active'),
(46, 11, 'Millet Powder', '', 'Active'),
(47, 5, 'Staples', '', 'Active'),
(48, 12, 'Cool Drinks', '', 'Active'),
(49, 11, 'Chocolates', '', 'Active'),
(50, 0, 'Vegetables', 'All types of vegetables', 'Active'),
(51, 50, 'Herbs', 'Herbs', 'Active'),
(52, 50, 'Seasonal', 'Seasonal', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city` varchar(25) NOT NULL,
  `pincodes` text NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city`, `pincodes`, `description`, `status`) VALUES
(2, 'Delhi', '574219', 'BC Road', 'Active'),
(6, 'Hubli', '589674', 'Udupi zone', 'Active'),
(7, 'Bangalore', '687001,678002,678003', '   This is test record commands', 'Active'),
(8, 'Mangalore', '575001,575002,575003,575004,575005', '  Mangalore city Records', 'Active'),
(10, 'Mysore', '589674,569875', ' ', 'Active'),
(11, 'Kochin', '671121,671122,671123,671124,671125', ' ', 'Active'),
(12, 'Shimoga', '577201,577205,5777202,577216,577203', ' Shimoga', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `custid` int(11) NOT NULL,
  `cust_type` varchar(25) NOT NULL,
  `custname` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob_no` varchar(10) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custid`, `cust_type`, `custname`, `email`, `mob_no`, `cpassword`, `status`) VALUES
(2, 'Customer', 'Peter king', 'peterking@gmail.com', '7894756103', '14b953e91473cdd55b5783f19ccc3caf', 'Active'),
(3, 'Customer', 'lakshitha', 'neetha@gmail.com', '7894561223', 'c8b68fbdafb81cd0c01f41b728740fd6', 'Active'),
(4, 'Customer', 'Vinod kumar', 'vinodkumar@gmail.com', '7945612456', '25f9e794323b453885f5181f1b624d0b', 'Active'),
(5, 'Customer', 'Vilas kumar', 'vilaskumar@gmail.com', '7894561230', '0af90a1bb167f347da94fc8625a36e33', 'Active'),
(6, 'Seller', 'Atlas', 'atlas@gmail.com', '7888561230', 'd41d8cd98f00b204e9800998ecf8427e', 'Active'),
(8, 'Seller', 'Phinix Tech', 'phinix@gmail.com', '7894560123', 'd41d8cd98f00b204e9800998ecf8427e', 'Active'),
(9, 'Seller', 'Biltx az', 'biltx@gmailc.om', '7894561230', '', 'Active'),
(13, 'Customer', 'Preetham', 'preetham@gmail.com', '7894561230', 'e807f1fcf82d132f9bb018ca6738a19f', 'Active'),
(14, 'Seller', 'Fresho', 'Fresho@gmail.com', '789456120', '', 'Active'),
(15, 'Customer', 'Pavitra', 'pavitra@gmail.com', '9874561230', '6d663575733b6d51ef5eb055e625a8ed', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prodid` int(10) NOT NULL,
  `catid` int(10) NOT NULL,
  `prodname` varchar(100) NOT NULL,
  `price` double(10,2) NOT NULL,
  `discount` float(10,2) NOT NULL,
  `unit` varchar(25) NOT NULL,
  `stockstatus` varchar(20) NOT NULL,
  `prodspecif` text NOT NULL,
  `images` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prodid`, `catid`, `prodname`, `price`, `discount`, `unit`, `stockstatus`, `prodspecif`, `images`, `status`) VALUES
(20, 21, 'Bvk brown rice 5 kg', 400.00, 10.00, 'KG', 'Avaiable', 'Bvk brown rice 5 kg\r\nBrown\r\n5kg bags', 'a:1:{i:0;s:23:\"1630924176shopping.webp\";}', 'Active'),
(21, 44, 'Fresho Carrot - Orange, 5', 38.00, 10.00, '1/2 Gm', 'Avaiable', 'Fresho Carrot - Orange\r\nAbout the Product\r\nA popular sweet-tasting root vegetable, Carrots are narrow and cone shaped.\r\nThey have thick, fleshy, deeply colored root, which grows underground, and feathery green leaves that emerge above the ground.\r\nWhile these greens are fresh tasting and slightly bitter, the carrot roots are crunchy textured with a sweet and minty aromatic taste.\r\nFresho brings you the flavour and richness of the finest crispy and juicy carrots that are locally grown and the best of the region.\r\nDo not forget to check our delicious recipe - https://www.bigbasket.com/cookbook/recipes/912/carrot-halwa/\r\nBenefits\r\nCarrots provide the highest content of vitamin A of all the vegetables.\r\nBrightly orange colored carrots have pigments like carotenoids and flavonoids, that provide several antioxidants and act as a defense against cancer.\r\nThey aid in maintaining oral health and also decrease the risk of stroke and other heart diseases.', 'a:1:{i:0;s:18:\"1630925096cara.jpg\";}', 'Active'),
(22, 43, 'Apple Royal Gala Approximately 1KG', 140.00, 5.00, '4 pcs', 'Avaiable', 'Apple is one of the most popular fruits worldwide. It is rich in Fiber, Potassium, Vitamin C, Vitamin K, Carbs and Calories. It also consists of soluble fibers that helps in weight loss and maintaining gut health. Eating apples lower the risks of major diseases like Cancer, Diabetes etc. You can include Apples as a part of your diet in the form of Salads, Smoothies, Pies and several other desserts. Buy Apple Royal Gala (4 pcs) (Approx 500 g - 700 g) online now.', 'a:1:{i:0;s:51:\"1631005692apple-royal-gala-4-pcs-0-20201118 (1).jpg\";}', 'Active'),
(23, 43, 'Kashmiri Apple\r\n', 140.00, 0.00, '4 pcs', 'Avaiable', 'Apple is one of the most popular fruits worldwide. It is rich in Fiber, Potassium, Vitamin C, Vitamin K, Carbs and Calories. It also consists of soluble fibers that helps in weight loss and maintaining gut health. Eating apples lower the risks of major diseases like Cancer, Diabetes etc. You can include Apples as a part of your diet in the form of Salads, Smoothies, Pies and several other desserts. Buy Apple Royal Gala (4 pcs) (Approx 500 g - 700 g) online now.', 'a:1:{i:0;s:51:\"1631005692apple-royal-gala-4-pcs-0-20201118 (1).jpg\";}', 'Active'),
(24, 44, 'Kashmiri Carrot', 50.00, 0.00, '1/2 Gm', 'Avaiable', 'Fresho Carrot - Orange\r\nAbout the Product\r\nA popular sweet-tasting root vegetable, Carrots are narrow and cone shaped.\r\nThey have thick, fleshy, deeply colored root, which grows underground, and feathery green leaves that emerge above the ground.\r\nWhile these greens are fresh tasting and slightly bitter, the carrot roots are crunchy textured with a sweet and minty aromatic taste.\r\nFresho brings you the flavour and richness of the finest crispy and juicy carrots that are locally grown and the best of the region.\r\nDo not forget to check our delicious recipe - https://www.bigbasket.com/cookbook/recipes/912/carrot-halwa/\r\nBenefits\r\nCarrots provide the highest content of vitamin A of all the vegetables.\r\nBrightly orange colored carrots have pigments like carotenoids and flavonoids, that provide several antioxidants and act as a defense against cancer.\r\nThey aid in maintaining oral health and also decrease the risk of stroke and other heart diseases.', 'a:1:{i:0;s:18:\"1630925096cara.jpg\";}', 'Active'),
(25, 21, 'Bvk brown rice 10 kg', 800.00, 0.00, 'KG', 'Avaiable', 'Bvk brown rice 5 kg\r\nBrown\r\n5kg bags', 'a:1:{i:0;s:23:\"1630924176shopping.webp\";}', 'Active'),
(26, 21, 'Bvk Brown Rice 25 KG', 2000.00, 0.00, '25 KG', 'Out Of Stock', 'Bvk brown rice 5 kg\r\nBrown\r\n5kg bags', 'a:1:{i:0;s:23:\"1630924176shopping.webp\";}', 'Active'),
(27, 45, 'Britania Rusk', 32.00, 5.00, '1pc', 'Avaiable', 'Premium Bake Rusk with goodness of wheat is been a traditional tea companion and is loved by many. Britannia Toast Tea Premium Bake Rusk is as crispy as your traditional one, but with a hint of elaichi and right amount of sweetness, it\'s taste will leave you amazed. Britannia Toast Tea Premium Bake Rusk for long has been a part of every home, sharing those moments of joy.', 'a:1:{i:0;s:69:\"1631009987premium-sooji-rusk-britannia-original-imag5j4ur2fbjfpf.jpeg\";}', 'Active'),
(28, 46, 'Origo Fresh Bajra Pearl Millet', 37.00, 0.00, '1 KG', 'Avaiable', 'Brand\r\nOrigo Fresh\r\nModel Name\r\nBajra\r\nType\r\nPearl Millet\r\nQuantity\r\n1 kg\r\nMaximum Shelf Life\r\n4 Months\r\nIs Perishable\r\nNo\r\nOrganic\r\nNo\r\nNutrient Content\r\nNA\r\nEAN\r\n8906059935923', 'a:1:{i:0;s:73:\"16310103091-bajra-pearl-millet-origo-fresh-original-imaf8abbgbdfdumk.jpeg\";}', 'Active'),
(29, 16, 'Chakki Atta', 285.00, 10.00, '10 KG', 'Avaiable', 'Chakki Atta is freshly made from the choicest grains. It is carefully ground using modern chakki technique. The taste and nutrition ensure that this Atta contains 0% Maida and it gives you softer rotis for a long time. Buy Chakki Atta online now!', 'a:1:{i:0;s:15:\"16321286331.jpg\";}', 'Active'),
(30, 48, 'Pepsi', 100.00, 10.00, 'Ltr', 'Avaiable', 'Pepsi is a carbonated soft drink manufactured by PepsiCo. Originally created and developed in 1893 by Caleb Bradham and introduced as Brad\'s Drink, it was renamed as Pepsi-Cola in 1898, and then shortened to Pepsi in 1961.', 'a:1:{i:0;s:44:\"1632676411750ml-pepsi-cold-drink-500x500.jpg\";}', 'Active'),
(31, 49, 'Kitkat', 50.00, 10.00, '1 pc', 'Avaiable', 'Kit Kat is a chocolate-covered wafer bar confection created by Rowntree\'s of York, United Kingdom, and is now produced globally by Nestlé, except in the United States, where it is made under license by the H. B. Reese Candy Company, a division of the Hershey Company.', 'a:1:{i:0;s:31:\"1632677403kitkat-brand-page.png\";}', 'Active'),
(32, 49, 'Mentos', 125.00, 10.00, '1 pc', 'Avaiable', 'Mentos (stylised as mentos) are a brand of packaged scotch mints sold in stores and vending machines. ', 'a:1:{i:0;s:34:\"163267754891Vg3t5kqEL._SL1500_.jpg\";}', 'Active'),
(33, 49, 'Boomer', 5.00, 0.00, '1pc', 'Out Of Stock', 'With Wrigley\'s Boomer Strawberry Flavoured Bubble Gum, treat yourself to the explosively fruity flavor of a fun and delicious bubble gum. This delicious chewing', 'a:1:{i:0;s:21:\"1632677667images.jfif\";}', 'Active'),
(34, 49, 'Cadbury Choclairs Gold 117 Candies', 400.00, 0.00, '725 Gm', 'Avaiable', 'The luscious new candy contains an indulgent brownie flavor in its caramel and rich Cadbury chocolate at its center\r\nA sweet home pack of your favorite chocolatiers\r\nExperience the yummy flavor of chocolate as soon as you bite into the candy', 'a:1:{i:0;s:34:\"163267787271VoCACMrSL._SL1500_.jpg\";}', 'Inactive'),
(35, 35, 'Cadbury Oreo - Creme Biscuit, Vanilla, Family Pack', 150.00, 10.00, '300 g', 'Avaiable', 'Cadbury Oreo family pack includes 3 delicious vanilla flavoured Oreo cookies, each of 100 gm. Oreo sandwich creme biscuit brings together the rich, smooth taste of vanilla creme filling with the bold taste of two crunchy chocolate wafers. Take a delicious break with an Oreo cookie, the perfect anytime snack.', 'a:1:{i:0;s:86:\"16326495411207396_3-cadbury-oreo-creme-biscuit-vanilla-family-pack-300-g-pack-of-3.jpg\";}', 'Active'),
(36, 44, 'Fresho Onion', 50.00, 5.00, '1kg', 'Avaiable', 'About the Product\r\nOnion is a vegetable which is almost like a staple in Indian food. This is also known to be one of the essential ingredients of raw salads. They come in different colours like white, red or yellow and are quite in demand in cold salads and hot soups.\r\nYou can dice, slice or cut it in rings and put it in burgers and sandwiches. Onions emit a sharp flavour and fragrance once they are fried; it is due to the sulphur compound in the vegetable.Onions are known to be rich in biotin.\r\nMost of the flavonoids which are known as anti-oxidants are concentrated more in the outer layers, so when you peel off the layers, you should remove as little as possible.', 'a:1:{i:0;s:38:\"163264967110000148_30-fresho-onion.jpg\";}', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchid` int(10) NOT NULL,
  `prodid` int(10) NOT NULL,
  `typeid` int(10) NOT NULL,
  `custid` int(10) NOT NULL,
  `bilid` int(10) NOT NULL,
  `entry_type` varchar(25) NOT NULL,
  `qty` float(10,2) NOT NULL,
  `price` double(10,2) NOT NULL,
  `discount_price` float(10,2) NOT NULL,
  `comment` text NOT NULL,
  `purchasestatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchid`, `prodid`, `typeid`, `custid`, `bilid`, `entry_type`, `qty`, `price`, `discount_price`, `comment`, `purchasestatus`) VALUES
(1, 54, 12, 65, 12, '', 12.00, 15.00, 1.00, '', ''),
(2, 20, 7, 1, 2, 'Purchase', 10.00, 50.00, 0.00, '', 'Active'),
(3, 24, 0, 1, 2, 'Purchase', 25.00, 40.00, 0.00, '', 'Active'),
(4, 27, 0, 1, 2, 'Purchase', 50.00, 25.00, 0.00, '', 'Active'),
(5, 30, 20, 1, 3, 'Purchase', 10.00, 30.00, 0.00, '', 'Active'),
(6, 30, 21, 1, 3, 'Purchase', 25.00, 75.00, 0.00, '', 'Active'),
(7, 31, 0, 1, 3, 'Purchase', 100.00, 40.00, 0.00, '', 'Active'),
(8, 32, 0, 1, 3, 'Purchase', 100.00, 100.00, 0.00, '', 'Active'),
(9, 33, 0, 1, 3, 'Purchase', 50.00, 3.00, 0.00, '', 'Active'),
(10, 21, 16, 1, 4, 'Purchase', 10.00, 100.00, 0.00, '', 'Active'),
(24, 30, 20, 13, 6, 'Invoice', 5.00, 45.00, 10.00, '', 'Active'),
(25, 30, 22, 13, 6, 'Invoice', 10.00, 150.00, 25.00, '', 'Active'),
(26, 31, 0, 13, 6, 'Invoice', 20.00, 50.00, 10.00, '', 'Active'),
(27, 32, 0, 13, 6, 'Invoice', 1.00, 125.00, 10.00, '', 'Active'),
(28, 30, 20, 13, 7, 'Invoice', 10.00, 45.00, 10.00, '', 'Active'),
(29, 30, 23, 13, 7, 'Invoice', 1.00, 300.00, 0.00, '', 'Active'),
(30, 32, 0, 13, 7, 'Invoice', 10.00, 125.00, 10.00, '', 'Active'),
(31, 35, 0, 1, 8, 'Purchase', 100.00, 10.00, 0.00, '', 'Active'),
(32, 36, 25, 1, 8, 'Purchase', 10.00, 40.00, 0.00, '', 'Active'),
(33, 33, 0, 1, 8, 'Purchase', 1000.00, 5.00, 0.00, '', 'Active'),
(34, 36, 25, 15, 9, 'Invoice', 10.00, 50.00, 10.00, '', 'Active'),
(35, 35, 0, 15, 9, 'Invoice', 25.00, 150.00, 10.00, '', 'Active'),
(38, 20, 7, 2, 10, 'Invoice', 1.00, 100.00, 10.00, '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffid` int(10) NOT NULL,
  `city_id` int(11) NOT NULL,
  `staff_type` varchar(25) NOT NULL,
  `staffname` varchar(25) NOT NULL,
  `loginid` varchar(30) NOT NULL,
  `apassword` varchar(255) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffid`, `city_id`, `staff_type`, `staffname`, `loginid`, `apassword`, `emailid`, `contactno`, `status`) VALUES
(1, 0, 'Admin', 'Mr. admin', 'admin', 'd94354ac9cf3024f57409bd74eec6b4c', 'admin@gmail.com', '789456123', 'Active'),
(4, 3, 'Staff', 'Raj kiran', 'rajkiran', '25f9e794323b453885f5181f1b624d0b', 'rajkiran@gmail.com', '7894561230', 'Active'),
(5, 3, 'Staff', 'Rajesh kumar', 'rajeshkumar', 'c62d929e7b7e7b6165923a5dfc60cb56', 'rajeshkumar@gamilo.com', '7894561230', 'Active'),
(6, 3, 'Staff', 'Ptere', 'rajkiran', '25f9e794323b453885f5181f1b624d0b', 'rajkiran@gmail.com', '7894561230', 'Active'),
(9, 6, 'Staff', 'Peter zoor', 'peter', '435427a4d30be41e2dd45614dfbca74e', 'peter@gmail.com', '7894561230', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `typeid` int(10) NOT NULL,
  `prodid` int(10) NOT NULL,
  `color` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `cost` double(10,2) NOT NULL,
  `discount` double(10,2) NOT NULL,
  `unit` varchar(25) NOT NULL,
  `stockstatus` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`typeid`, `prodid`, `color`, `image`, `cost`, `discount`, `unit`, `stockstatus`, `status`) VALUES
(7, 20, 'Red', '1631874648apple-royal-gala-4-pcs-0-20201118 (1).jpg', 100.00, 10.00, 'KG', 'Available', 'Active'),
(16, 21, '', '1631875014', 50.00, 5.00, '1 KG', 'Available', 'Active'),
(17, 21, '', '1631875043', 100.00, 10.00, '2KG', 'Available', 'Active'),
(18, 21, '', '1631875098', 150.00, 25.00, '3 KG', 'Available', 'Active'),
(19, 21, '', '1631875127', 200.00, 50.00, '5 KGs', 'Available', 'Active'),
(20, 30, '', '1632676628750ml-pepsi-cold-drink-500x500.jpg', 45.00, 10.00, '1/2 Ltr', 'Available', 'Active'),
(21, 30, '', '1632676663750ml-pepsi-cold-drink-500x500.jpg', 90.00, 20.00, '1 Ltr', 'Available', 'Active'),
(22, 30, '', '1632680929640x640.jpg', 150.00, 25.00, '2 Ltr', 'Available', 'Active'),
(23, 30, '', '1632676920download (3).jfif', 300.00, 0.00, '5 Ltr', 'Out of Stock', 'Active'),
(24, 30, '', '1632676825download (2).jfif', 5000.00, 0.00, '10 Ltr', 'Available', 'Inactive'),
(25, 36, '', '163264972710000148_30-fresho-onion.jpg', 50.00, 10.00, '1 kg', 'Available', 'Active'),
(26, 36, '', '163264975110000148_30-fresho-onion.jpg', 100.00, 10.00, '2 kg', 'Available', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`addressid`),
  ADD KEY `custid` (`custid`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`bilid`),
  ADD KEY `custid` (`custid`),
  ADD KEY `addressid` (`addressid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prodid`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchid`),
  ADD KEY `prodid` (`prodid`,`typeid`,`custid`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffid`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`typeid`),
  ADD KEY `prodid` (`prodid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `addressid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `bilid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `custid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prodid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staffid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `typeid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
