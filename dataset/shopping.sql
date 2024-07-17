-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2023 at 06:10 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'vidhiitaliya1234', 'vidhi123456', '2023-03-28 10:51:56', ''),
(2,'jensisabhaya','jenu123456','2023-03-28 10:51:56',''),
(4, 'hiraparanayan98', 'Nayan#76238', '2023-02-27 10:49:55', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(4, 'Electronics', 'Electronic Products', '2021-12-24 19:19:32', '22-02-2022 11:02:53 PM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(7, 5, '2', 1, '2022-03-08 16:38:05', 'COD', 'Delivered'),
(8, 5, '20', 1, '2022-03-08 16:42:55', 'Internet Banking', 'Delivered'),
(9, 5, '18', 1, '2022-03-08 16:44:56', 'Debit / Credit card', NULL),
(10, 6, '2', 1, '2023-01-25 12:01:53', 'Debit / Credit card', NULL),
(11, 7, '2', 1, '2023-02-22 06:48:39', 'COD', NULL),
(12, 7, '3', 1, '2023-02-22 06:48:39', 'COD', NULL),
(13, 8, '2', 1, '2023-03-01 06:36:52', 'COD', NULL),
(14, 9, '1', 1, '2023-04-06 03:27:53', 'COD', NULL),
(15, 9, '3', 1, '2023-04-06 03:29:48', 'COD', NULL),
(16, 9, '2', 1, '2023-04-06 05:29:35', 'COD', NULL),
(17, 9, '2', 1, '2023-04-06 06:45:42', 'COD', NULL),
(18, 8, '4', 1, '2023-04-24 05:14:40', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(6, 7, 'Delivered', 'Product Delivered ', '2022-03-08 16:47:29'),
(7, 8, 'Delivered', 'Delivered', '2022-03-08 17:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2022-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2022-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2022-02-26 20:59:19'),
(5, 2, 1, 2, 3, 'vidhi', 'best quality', 'best device', '2023-01-28 15:53:42'),
(6, 3, 5, 1, 2, 'disha', 'best quality', 'good', '2023-04-03 02:56:12');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'IKALL Z9 (Blue,3GB RAM, 32GB Internal Memory)', 'IKALL', 4999, 0, '<ul><li>Blue | 3GB RAM | 32GB Internal Memory<br></li>\n<li>8MP Rear Camera | 5MP Front Camera | Made in India<br></li>\n<li>6 Inch Display | Made in India | 4G VolTe\n<br></li>\n<li>Android 10 with 1.3 Ghz Quad Core<br></li>\n<li>1 Year manufacturing warranty for mobile and 6 months for accessories<br></li></ul>', 'IKALL Z9.jpg', 'IKALL Z9back.jpg', 'IKALL Z9info.jpg', 1200, 'In Stock', '2022-12-12 16:54:35', ''),
(2, 4, 4, 'Apple iPhone 14 pro max (Silver, 128 GB)', 'Apple ', 132990, 0, '<div class=\"_2PF8IO\" style=\"box-sizing: border-box; margin: 0px 0px 0px 110px; padding: 0px; flex: 1 1 0%; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\">\n<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\">\n<li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">17.00 cm (6.7-inch) Super Retina XDR display </li>\n<li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">48MP Main camera for up to 4x greater resolution</li>\n<li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Cinematic mode now in 4K Dolby Vision up to 30 fps</li>\n<li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Action mode for smooth, steady, handheld videos</li>\n<li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Dynamic Island, a magical new way to interact with iPhone</li></ul>\n</div>', 'iphone14promax.jpg', 'iphoneback.jpg', 'iphoneinfo.jpg', 0, 'In Stock', '2022-12-21 16:59:00', ''),
(3, 4, 4, 'Redmi Note 12 Pro(Light blue,With128 GB Storage)  ', 'Redmi', 24599, 0, '<br><div><ol><li>6 GB RAM | 128 GB ROM</li>\n<li>6.94 cm (6.67 inch) Full HD Display</li>\n<li>50MP + 8MP + 2MP | 16MP Front Camera<br></li>\n<li>5000 mAh Lithium Polymer Battery<br></li>\n<li>Mediatek Dimensity 1080 Processor<br></li></ol></div>', 'redminote12pro.jpg', 'redminoteback.jpg', 'redminoteinfo.jpg', 0, 'In Stock', '2021-12-04 04:03:15', ''),
(4, 4, 4, 'Mi 10T 5G (Cosmic Black, 8GB RAM, 128GB Storage)', 'Mi', 23599, 0, '<ul><li>6GB RAM, 128GB Storage<br></li>\n<li>395 ppi pixel density, 20:9 Aspect Ratio display<br></li>\n<li>Triple Rear Camera (64MP + 13MP + 5MP) | 20MP Front Camera<br></li>\n<li>1 Lithium Polymer batteries required. (included)<br></li>\n<li>Qualcomm Snapdragon 430 Processor<br></li></ul>', 'Mi 10T 5G.jpg', 'Mi 10T 5G back.jpg', 'Mi 10T 5G in.jpg', 45, 'In Stock', '2021-12-04 04:04:43', ''),
(5, 4, 4, 'Samsung Galaxy M32 5G (Sky Blue, 8GB RAM, 128GB Storage)', 'Samsung', 18999, 0, '<ul><li>Sky Blue | 8GB RAM |128GB Storage<br></li>\n<li>16.55 centimeters (6.5-inch) TFT - Infinity V-cut display<br></li>\n<li>48MP (F 1.8) main camera + 8MP (F2.2) Ultra wide camera+ 5MP (F2.4) depth camera + 2MP (2.4) Macro Camera| 13MP (F2.2) front camera<br></li>\n<li>5000 mAh Battery<br></li>\n<li>Latest Android v11.0, One UI 3.1 operating system,<br></li></ul>', 'Samsung Galaxy M33.jpg', 'Samsung Galaxy M33back.jpg', 'Samsung Galaxy M33info.jpg', 0, 'In Stock', '2021-12-04 04:06:17', ''),
(6, 4, 4, 'OnePlus 10 Pro 5G (Emerald Forest, 12GB RAM, 256GB Storage)', 'OnePlus', 66999, 0, '<ul><li>Emerald Forest, 12GB RAM, 256GB Storage<br></li>\n<li>Display: 6.7 Inches; 120 Hz QHD+ Fluid AMOLED with LTPO; Resolution: 3216 x 1440; Aspect Ratio: 20:9<br></li>\n<li>Camera: 48MP Main Camera with Sony IMX 789 Lens (OIS enabled), 50MP Ultra-wide angle camera & 8MP Tele photo lens; Front (Selfie) Camera: 32MP; Flash: Dual LED<br></li>\n<li>Battery & Charging: 5000 mAh with 80W SuperVOOC<br></li>\n<li>Operating System: Oxygen OS based on Android 12. Processor: Qualcomm Snapdragon 8 Gen 1<br></li></ul>', 'OnePlus 10 Pro 5G.jpg', 'OnePlus 10 Pro 5Gback.jpg', 'OnePlus 10 Pro 5Ginfo.jpg', 35, 'In Stock', '2021-12-04 04:08:07', ''),
(7, 4, 4, 'Tecno Spark 8C (Turquoise Cyan ,3GB RAM,64GB Storage)', 'Tecno', 7399, 0, '<ul><li>Turquoise Cyan | 3GB RAM |64GB Storage<br></li>\n<li>6.6\" HD+ Dot Notch display | 180Hz touch sampling rate for smooth touch response<br></li>\n<li>13MP rear Dual Camera and Dual Flashlight | 8MP Selfie camera with front flash| Multiple AI modes like Portrait, HDR, Smile Shot, AI Scene Detection | Shoot good quality 1080P Time-lapse, Slow Motion videos<br></li>\n<li>5000mAh battery with up to 89 days long standby<br></li>\n<li>IPX2 Splash Resistant | DTS Sound Enhancement | SoPlay 2.0 Music Mixer | HiParty Connected Music<br></li></ul>', 'Tecno Spark 8C.jpg', 'Tecno Spark 8Cback.jpg', 'Tecno Spark 8Cinfo.jpg', 20, 'In Stock', '2021-12-04 04:10:17', ''),
(8, 4, 4, 'Oppo A78 5G (Glowing Black, 8GB RAM, 128 Storage)', 'Oppo', 18999, 0, '<ul>\n<li>Glowing Black | 8 GB RAM | 128 Storage<br></li>\n<li>5000 mAh Battery with 33W SUPERVOOC Charger<br></li>\n<li>50MP AI Camera<br></li>\n<li>90Hz Refresh Rate <br></li>\n<li>OS	Android 13.0 | Cellular Technology	LTE<br></li>\n</ul>', 'OppoA785G.jpg', 'Oppoback.jpg', 'Oppoinfo.jpg', 0, 'In Stock', '2021-12-04 04:11:54', ''),
(9, 4, 5, 'iQOO Z6 5G (Chromatic Blue, 6GB RAM, 128GB Storage)', 'iQOO', 16999, 0, '<ul><li>Chromatic Blue | 6GB RAM |128GB Storage<br></li>\n<li>iQOO Z6 5G comes with a large 5000mAh battery keeps going longer, for a more enjoyable gaming and video experience. It also comes 18W Fast Charging technology that juices up the battery quickly.<br></li>\n<li>Equipped with 50MP Eye Autofocus main camera, it is designed to tackle the out-of-focus problem. The feature performs fast Eye Autofocus at a high refresh rate, allowing the camera to maintain a stable and clear focus on the subjects in movement.<br></li>\n<li>Headphones jack: 3.5 mm, Form factor: Bar, Operating system: Funtouch OS 12 based on Android 12, Display type: LCD<br></li>\n<li>Snapdragon 695 5G Mobile Platform allows you to level up your performance with efficient 6nm Process, with an ANTUTU Score of 410563. Also, we get a 15% improved CPU performance & improved 30% GPU performance (As compared to Snapdragon 690G)<br></li>\n</ul>', 'iQOOZ65G.jpg', 'iQOOZ65Gback.jpg', 'iQOOZ65Ginfo.jpg', 10, 'In Stock', '2021-12-04 04:17:03', ''),
(10, 4, 6, 'HP Victus Gaming Latest AMD Ryzen 5', 'Hp', 56960, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">\r\nHP Victus Gaming Latest AMD Ryzen 5 5600H Processor 16.1 inch(40.9 cm) FHD Gaming Laptop (8GB RAM/512GB SSD/4GB Radeon RX5500M Graphics/B&O/Backlit KB/Win 10/MS Office/Xbox Game Pass),16-E0162ax\r\n</span>\r\n\r\n<ul><li>BUILT FOR PLAY – The Victus by HP 16.1 inch Gaming Laptop PC has what you need to play: a powerful AMD processor and Radeon graphics, an upgraded cooling system, a high-resolution, fast display, and OMEN Gaming Hub.<br></li>\r\n<li>NEXT-GEN GRAPHICS – Experience incredible visuals to elevate all of your gameplay with an AMD Radeon RX 5500M graphics card that’s equipped with 4 GB of GDDR6 dedicated memory and PCI Express 4.0 support for speedier data-transfers.\r\n<br></li>\r\n<li> IMMERSIVE DISPLAY – Enjoy vibrant, crystal-clear images with 178-degree wide-viewing angles on this FHD (1920 x 1080) IPS, micro-edge display; plus, this screen’s non-reflective and low-gloss design means you\'ll get less glare while outside in the sun or under bright lights.\r\n<br></li>\r\n<li>UNCOMPROMISING PERFORMANCE – This thin and light laptop lacks nothing in power, packing the speedy 6-core AMD Ryzen 5 5600H mobile processor and up to 4.2 GHz max boost clock.<br></li>\r\n<li>MEMORY AND STORAGE – With 8 GB of RAM, you’ll get a boost to system responsiveness and improved frame rates while gaming. Also, experience shorter load times and faster boot-ups thanks to your laptop computer’s 512 GB of PCIe NVMe M.2 SSD storage.\r\n <br></li>\r\n<li>WINDOWS 11 HOME AND WARRANTY – From a rejuvenated Start menu to new ways to connect, the Windows 11 OS is the place to think, express, and create in a natural way. Protect your purchase with the 1-year limited warranty.<br></li>\r\n</ul>', '1.jpg', '1back.jpg', '1info.jpg', 0, 'In Stock', '2023-01-28 15:44:08', NULL),
(11, 4, 6, 'HP 14s, 12th Gen Intel Core i5', 'HP', 58899, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">\nHP 14s, 12th Gen Intel Core i5 16GB RAM/512GB SSD 14-inch(35.6 cm) Micro-Edge, FHD Laptop/Intel Iris Xe Graphics/Alexa/Dual Speakers/Win 11/Backlit KB/MSO 2021/1.41 Kg, 14s-dy5005TU\n</span>\n\n<ul><li>Processor: 11th Gen Intel Core i3-1115G4 | Speed: 3.0 GHz (Base) - 4.1 GHz (Max) | 2 Cores | 4 Threads | 6 MB Cache<br></li>\n<li>Display: 15.6\" FHD (1920x1080) | TN Technology | 250Nits Brightness Anti Glare || Memory and Storage: 8GB RAM DDR4-3200, Upgradable Up to 12GB | 256 GB SSD\n<br></li>\n<li>OS and Software: Windows 11 Home 64 | Office Home and Student 2021 | Xbox GamePass Ultimate 3-month subscription*\n<br></li>\n<li>Battery Life: 45Wh | Upto 6 Hours | Rapid Charge (Up to 80% in 1 Hour) | Design: 4 side narrow bezel | 1.99 cm Thickness and 1.65 kg Weight<br></li>\n<li> Camera (Built-in): 720p with Privacy Shutter | Fixed Focus | Integrated Dual Array Microphone || Audio: 2x 1.5W Stereo Speakers | HD Audio | Dolby Audio<br></li>\n<li>Smart Learning Features : Lenovo Aware | Whisper Voice | Eye Care<br></li>\n</ul>', 'hpi5.jpg', 'hpi5inf01.jpg', 'hpi5info2.jpg', 0, 'In Stock', '2021-12-04 04:26:17', ''),
(12, 4, 6, 'Lenovo IdeaPad Slim 3 Intel Core i3 11th Gen', 'Lenovo', 33990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">\nLenovo IdeaPad Slim 3 Intel Core i3 11th Gen 15.6\" (39.62cm) FHD IPS Thin & Light Laptop (8GB/512GB SDD/Windows 11/Office 2021/2Yr Warranty/3months Game Pass/Platinum Grey/1.7Kg), 81X800LAIN\n</span>\n\n<ul><li>Processor: 11th Gen Intel Core i3-1115G4 | Speed: 3.0 GHz (Base) - 4.1 GHz (Max) | 2 Cores | 4 Threads | 6 MB Cache<br></li>\n<li>Display: 15.6\" FHD (1920x1080) | TN Technology | 250Nits Brightness Anti Glare || Memory and Storage: 8GB RAM DDR4-3200, Upgradable Up to 12GB | 256 GB SSD\n<br></li>\n<li>OS and Software: Windows 11 Home 64 | Office Home and Student 2021 | Xbox GamePass Ultimate 3-month subscription*\n<br></li>\n<li>Battery Life: 45Wh | Upto 6 Hours | Rapid Charge (Up to 80% in 1 Hour) | Design: 4 side narrow bezel | 1.99 cm Thickness and 1.65 kg Weight<br></li>\n<li> Camera (Built-in): 720p with Privacy Shutter | Fixed Focus | Integrated Dual Array Microphone || Audio: 2x 1.5W Stereo Speakers | HD Audio | Dolby Audio<br></li>\n<li>Smart Learning Features : Lenovo Aware | Whisper Voice | Eye Care<br></li>\n</ul>', 'Lenovoi3.jpg', 'Lenovoi3info1.jpg', 'Lenovoi3info2.jpg', 0, 'In Stock', '2021-12-04 04:28:17', ''),
(13, 4, 6, 'Dell Inspiron 5320 Laptop, i7', 'Dell', 89999, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Dell Inspiron 5320 Laptop, i7-1260P, 16GB LPDDR5, 512GB SSD, Integrated, 13.3\" (33.78Cms) QHD+ WVA AG 300 nits, Win 11+ MSO\'21, Platinum Silver (D560754WIN9S, 1.25Kgs)</span>\n<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Turbo SIlver, 2.19 kg)</span>\n<br><div><ul>\n<li>Processor: i7-1260P (3.40 GHz up to 4.70 GHz) 18MB Cache, 12 Cores<br></li>\n<li>RAM & Storage: 16GB LPDDR5, 512GB SSD<br></li>\n<li>Graphics & Display: INTEGRATED, 13.3\" QHD+ WVA AG 300 nits LBL with Compfort View Plus\n<br></li>\n<li>Keyboard & Warranty: Backlit Keyboard + Fingerprint Reader, 1 Year Onsite Hardware Service<br></li>\n<li>USB & Ports: 1 HDMI out 1.4 ((display output @ up to 1920x1080 60Hz, 24bpp)), 1 USB 3.2 Gen 1 Type-A, 2 Thunderbolt 4.0 (PowerDelivery & DisplayPort), 1 Audio Jack<br></li>\n<li><br></li>\n</ul></div>', 'dell.jpg', 'dell1.jpg', 'dell2.jpg', 0, 'In Stock', '2021-12-04 04:30:24', ''),
(14, 4, 6, 'HP Pavilion Plus, 12th Gen Intel Core i7', 'hp', 94208, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">HP Pavilion Plus, 12th Gen Intel Core i7 16GB RAM/1TB SSD 14 inch(35.6 cm)Creator Laptop with OLED,UWVA,Eye Safe Laptop/Intel Iris Xe Graphics/Backlit KB/B&O/FPR/Win 11/Alexa Built-in/MSO,14-eh0024TU</span>\n<div><ul><li>Do Check Partner offer section for Exciting offers from HP; Processor: Intel Core i7-12700H (up to 4.7 GHz with Intel Turbo Boost Technology, 24 MB L3 cache, 14 cores, 20 threads) |Memory & Storage: 16 GB DDR4-3200 MHz RAM | Storage: 1 TB SSD<br></li>\n<li>Display & Graphics : 35.6 cm (14\") diagonal, 2.8K, OLED, 90 Hz, UWVA, micro-edge, BrightView, Low Blue Light, 400 nits, HDR Brightness: 500 nits 243 ppi, 2880 x 1800, TUV Certified eye safe display |Graphics: Intel Iris Xe Graphics<br></li>\n<li>Operating System & Preinstalled Software: Windows 11 Home 64 Plus Single Language | Microsoft Office Home & Student 2021| McAfee LiveSafe (30 days free trial as default) |Pre-installed Alexa built-in- Your life simplified with Alexa. Just ask Alexa to check your calendar, create to-do lists, shopping lists, play music, set reminders, get latest news and control smart home.<br></li>\n<li>Ports: 2 SuperSpeed USB Type-C 10Gbps signaling rate (USB Power Delivery, DisplayPort 1.4, HP Sleep and Charge), 2 SuperSpeed USB Type-A 5Gbps signaling rate, 1 headphone/microphone combo, 1 AC smart pin, 1 HDMI 2.1<br></li>\n<li>Form Factor: Netbook; Hard Disk Interface: Solid State; Wireless Communication Technology: Wi-Fi<br></li></ul></div>', 'hpi7.jpg', 'hpi71.jpg', 'hpi72.jpg', 0, 'In Stock', '2021-12-04 04:32:15', ''),
(15, 3, 8, 'iQOO Neo 6 5G (Maverick Orange, 12GB RAM, 256GB Storage)', 'iQOO', 33999, 0, '<ul><li>iQOO Neo 6 5G (Maverick Orange, 12GB RAM, 256GB Storage) <br></li>\n<li>Snapdragon 870 5G Mobile Platform which is a 7nm process technology. (* Only snapdragon 870 in this segment launched in 2022<br></li>\n<li>80W FlashCharge Technology with 4700mAh Battery<br></li>\n<li>120Hz E4 AMOLED Display | 1300nits Peak Brightness | 6000000:1 Contrast Ratio | SGS Eye Care Certificate | HDR 10+ | Netflix HDR\n<br></li>\n<li>90 FPS Gaming Support in NEW STATE MOBILE and BGMI (Downloaded from third party source)<br></li>\n<li>64MP OIS Main Camera with GW1P sensor, 8MP Wide Angle Camera & 2MP Macro Camera<br></li>\n</ul>', 'iQoo1.jpg', 'iQoo2.jpg', 'iQoo3.jpg', 50, 'In Stock', '2021-12-04 04:35:13', ''),
(16, 3, 8, 'Samsung Galaxy S23 Ultra 5G (Green, 12GB, 256GB Storage)', 'Samsung', 124999, 0, '<ul><li> Low light. Camera. Action - A Pro-grade Camera grabs brighter photos and video, dusk to dawn. The intelligent pixel sensor adapts to low light with Nightography and the camera lens tones down flare for clearer captures<br></li>\n<li>200MP. Wow-worthy resolution - Resolution on the Wide-angle Camera has nearly doubled, delivering strikingly clear photos. Zoom and crop your shots for a whole new view —or leave it intact for brilliant detail, corner to corner.<br></li>\n<li>More innovation, less footprint – Galaxy S23 Ultra\'s striking symmetrical design returns with one major difference: recycled and eco-conscious materials. From the metal frame to the glass finish, it\'s polished with fresh new colors inspired by nature.<br></li>\n<li>Power for those who don\'t pause - Your quest for epic mobile gaming is over. Snapdragon 8 Gen 2 Mobile Platform for Galaxy optimizes and streamlines your device for silky smooth games —without draining the battery<br></li>\n\n\n</ul>', 'galaxy1.jpg', 'galaxy2.jpg', 'galaxy4.jpg', 30, 'In Stock', '2021-12-04 04:36:23', ''),
(17, 3, 8, 'OnePlus Nord CE 2 Lite 5G (Black Dusk, 6GB RAM, 128GB Storage)', 'OnePlus', 18999, 0, '<ul>\n<li>Camera: 64MP Main Camera with EIS; 2MP Depth Lens and 2MP Macro Lens; Front (Selfie) Camera: 16MP Sony IMX471 <br></li>\n<li> Camera Features: AI scene enhancement, Dual-View Video, HDR, Night Portrait, Panorama Mode, Retouch Filters, 1080p video at 30 fps, SLO-MO: 720p video at 120 fps, TIME-LAPSE: 1080p video at 30 fps, Video editor, Face unlock, Screen flash, HDR, NIGHT,<br></li>\n<li>Display: 6.59 Inches; 120 Hz Refresh Rate; Support sRGB, Display P3; Resolution: 2412 x 1080 pixels 402ppi; Aspect Ratio: 20:9<br></li>\n<li>Operating System: Oxygen OS based on Android 12 <br></li>\n<li>Display Features: Dark mode <br></li>\n<li> Battery & Charging: 5000 mAh with 33W SuperVOOC<br></li>\n</ul>', 'oneplus1.jpg', 'oneplus2.jpg', 'oneplus3.jpg', 0, 'In Stock', '2021-12-04 04:40:37', ''),
(18, 3, 8, 'Lava Blaze 5G (Glass Green, 6GB RAM, UFS 2.2 128GB Storage) ', 'Lava', 11999, 0, '<ul>\n<li>Supports All India 5G Bands - All sub-6mm-wave bands being auctioned and bought by Operators in India<br></li>\n<li>6+3*GB RAM with UFS 2.2 compliant 128GB ROM, Expandable up to 1 TB (*Virtual RAM)<br></li>\n<li>16.55cm(6.5\") HD+ 90Hz Display with Widevine L1 DRM Protection - Enjoy all your Content in High Resolution\n<br></li>\n<li>Clean Android 12 OS and Anonymous Call Recording | 2K Video Recording with EIS support | 5000mAh Lithium Polymer Battery | Side Fingerprint Sensor\n<br></li>\n<li>Superior performance with octa-core 2.2GHz MediaTek Dimensity 700 processor<br></li>\n</ul>', 'lava.jpg', 'lava1.jpg', 'lava3.jpg', 0, 'In Stock', '2021-12-04 04:42:27', ''),
(19, 6, 12, 'Redmi 10 Power (Sporty Orange, 8GB RAM, 128GB Storage)', 'Xiaomi', 11999, 0, '<ul><li>Processor: Snapdragon 680 6nm Octa-core processor; Up to 2.4GHz clock speed<br></li>\n<li>Camera: 50 MP Primary Rear Camera with 2MP Portrait Lens| 5 MP Front camera\n<br></li>\n<li>Display: HD+ (720x1650) IPS LCD Display; 17.01 centimeters(6.7 inch); 20.6:9 aspect ratio\n<br></li>\n<li>Battery: 6000 mAh large battery with 18W fast charging support(10W in-box) and Type-C connectivity<br></li>\n<li>Memory, Storage & SIM: 8GB RAM | 128GB UFS 2.2 storage expandable up to 512GB with dedicated SD card slot | Dual SIM (nano+nano) dual standby (4G+4G)\n<br></li></ul>', 'Redmi10Power.jpg', 'Redmi10 Powerback.jpg', 'Redmi10 Powerinfo.jpg', 45, 'In Stock', '2021-12-10 20:16:03', ''),
(20, 6, 12, 'Samsung Galaxy M13 (Aqua Green, 4GB, 64GB Storage)', 'Samsung', 10999, 5000, '<ul><li>Upto 12GB RAM with RAM Plus | 64GB internal memory expandable up to 1TB| Dual Sim (Nano)<br></li>\n<li>6000mAh lithium-ion battery, 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase\n<br></li>\n<li>50MP+5MP+2MP Triple camera setup- True 50MP (F1.8) main camera +5MP(F2.2)+ 2MP (F2.4) | 8MP (F2.2) front cam \n<br></li>\n<li>Android 12,One UI Core 4 with a powerful Octa Core Processor<br></li>\n<li>16.72 centimeters (6.6-inch) FHD+ LCD - infinity O Display, FHD+ resolution with 1080 x 2408 pixels resolution, 401 PPI with 16M color\n<br></li></ul>', 'Samsung Galaxy M13.jpg', 'Samsung Galaxy M13back.jpg', 'Samsung Galaxy M13info.jpg', 0, 'In Stock', '2021-12-10 20:19:22', ''),
(21, 4, 4, 'Vivo Y16 (Drizzling Gold, 4GB RAM, 64GB Storage)', 'Vivo', 12999, 70000, '<ul><li>Drizzling Gold | 4GB RAM |64GB Storage<br></li>\n<li>13MP+2MP Rear Camera | 5MP Selfie Camera<br></li>\n<li>16.55 cm (6.51\" inch) HD+ LCD Display<br></li>\n<li>Memory & SIM: 4GB RAM | 64GB internal memory<br></li>\n<li>10W fast charging with 5000mAh battery<br></li>\n</ul>', 'Vivo Y16.jpg', 'Vivo Y16back.jpg', 'Vivo Y16info.jpg', 100, 'In Stock', '2022-02-22 17:49:20', NULL),
(23, 6, 4, 'Lava Blaze 5G (Glass Green, 4GB RAM, UFS 2.2 128GB Storage) ', 'Lava', 10999, 0, '<ul><li>Glass Green| 4GB RAM| UFS 2.2 |128GB Storage<br></li>\n<li>16.55cm(6.5\") HD+ IPS Display with Widevine L1 DRM Protection - Enjoy all your Content in High Resolution<br></li>\n<li>Clean Android 12 OS with Anonymous Call Recording | 2K Video Recording with EIS support | 5000mAh Lithium Polymer Battery\n<br></li>\n<li>4+3*GB RAM with UFS 2.2 compliant 128GB ROM, Expandable up to 1 TB (*Virtual RAM)<br></li>\n<li>Superior performance with octa-core 2.2GHz MediaTek Dimensity 700 processor<br></li>\n</ul>', '1.jpg', '1back.jpg', '3info.jpg', 0, 'In Stock', '2023-01-28 05:28:07', NULL),
(24, 4, 6, 'ASUS VivoBook 14 (2021), Intel Core i5-1135G7 11th Gen', 'ASUS', 49990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">\nASUS VivoBook 14 (2021), Intel Core i5-1135G7 11th Gen, 14-inch (35.56 cms) FHD Thin and Light Laptop (8GB/1TB HDD + 256GB SSD/Office 2021/Windows 11/Iris Xe Graphics/Silver/1.6 Kg), X415EA-EK572WS\n</span>\n<ul><li>Processor: 11th Gen Intel Core i5-1135G7 Processor, 2.4 GHz Base Speed, Up to 4.2 GHz Max Turbo Speed, 4 cores, 8 Threads, 8MB Cache<br></li>\n<li> Memory & Storage: 8GB (4GB onboard + 4GB SO-DIMM) DDR4 3200MHz Dual Channel RAM, Upgradeable up to 12GB using 1x SO-DIMM Slot with, | Storage: 1TB HDD 2.5-inch SATA 5400RPM + 256GB M.2 NVMe PCIe SSD\n<br></li>\n<li>Design & battery: Up to 19.9mm Thin | NanoEdge Bezels | Thin and Light Laptop | Laptop weight: 1.6 kg | 37WHrs, 2-cell Li-ion battery | Up to 6 hours battery life ;Note: Battery life depends on conditions of usage<br><li>\n<li>Display: 14-Inch (35.56 cms) LED-Backlit, FHD (1920 x 1080) 16:9, 220nits, NanoEdge bezel, Anti-Glare Plane with 45% NTSC, 82% Screen-To-Body Ratio<br></li>\n<li>Operating System: Pre-loaded Windows 11 Home with lifetime validity | Software Included: Office Home and Student 2021<br></li>\n<li>Graphics: Integrated Intel UHD Graphics\n<br></li>\n</ul>\n', 'ASUSVivoBook.jpg', 'ASUSVivoBookback.jpg', 'ASUSVivoBookinfo.jpg', 0, 'In Stock', '2023-01-28 05:52:00', NULL),
(25, 5, 10, 'Samsung Galaxy Book3 Pro Intel 13th Gen i7 ', 'Samsung', 139990, -20, '<ul>\r\n<li>Processor: 13th Generation Intel Core i7-1360P processor (2.2 GHz up to 5.0 GHz 18 MB L3 Cache) | Memory: 16 GB LPDDR5 Memory | Storage: 1 TB NVMe SSD | Intel Iris Xe Graphics<br></li>\r\n<li>Operating System: Windows 11 Home | Pre-Installed Software: MS Office Home & Student 2021, Galaxy Ecosystem Apps<br></li>\r\n<li>Display: 14\" (35.56 cm), Dynamic AMOLED 2X, 3K WQXGA+ (2880 x 1800) resolution| 16:10 Aspect Ratio | 120Hz | 500nits HDR |Design: Aluminum body with 11.3mm thinness and 1.17kg<br></li>\r\n<li>Ports: 2 Thunderbolt 4-USB Type-C, 1 USB Type-A, 1 HDMI, MicroSD Multi-media Card Reader, 1 Headphone out/Mic-in Combo, | Wi-Fi 6E | Without CD-drive |Battery: 63 Wh, Charger: 65 W USB Type-C Adapter<br></li>\r\n<li>Camera: 1080p, Intelligent Video Call Solution with Intel Collaboration| Quad AKG Speakers, Dolby Atmos | Microphone: 1 Headphone out/Mic-in Combo | Keyboard: Keyboard (Backlit),| FingerPrint Reader<br></li>\r\n</ul>', '12.jpg', '11.jpg', '13.jpg', 0, 'In Stock', '2023-03-03 04:36:36', NULL),
(26, 5, 10, 'Lenovo E41-55 HD 220 Nits Antiglare Thin and Light Laptop', 'Lenovo', 38000, 0, '<ul>\r\n<li>Upto 11-hour battery life on a full charge gives you ample time to finish your tasks with 45 Whr Li-polymer battery. It supports fast charge too.<br></li>\r\n<li>Ensure that your laptop’s power consumption is in check while in low power modes with the help of ENERGY STAR 8.0 compliance, thus making it energy and cost efficient and other sustainability certifications.<br></li>\r\n<li>Do you love multitasking? You’ll love the array of ports that come with this laptop! With USB 2.0 Type A, USB 3.1 Gen1 Type A, USB Type-C, HDMI, you can enjoy connectivity with ease.<br></li>\r\n<li>AMD ATHLON GOLD-A3150U Processor<br></li>\r\n<li>Operating system: DOS<br></li>\r\n</ul>', '1.jpg', 'q1.jpg', 'q2.jpg', 0, 'In Stock', '2023-03-03 04:53:11', NULL),
(27, 5, 10, 'Apple 2022 MacBook Air Laptop', 'Apple', 139990, 0, '<ul>\r\n<li>STRIKINGLY THIN DESIGN – The redesigned MacBook Air is more portable than ever and weighs just 1.24 kg (2.7 pounds). It’s the ultra-capable laptop that lets you work, play or create just about anything — anywhere.<br><li>\r\n<li>SUPERCHARGED BY M2 – Get more done faster with a next-generation 8-core CPU, up to 10-core GPU and up to 24GB of unified memory.<br><li>\r\n<li>UP TO 18 HOURS OF BATTERY LIFE – Go all day and into the night, thanks to the power-efficient performance of the Apple M2 chip.<br><li>\r\n<li>BIG, BEAUTIFUL DISPLAY – The 34.46-centimetre (13.6-inch) Liquid Retina display features over 500 nits of brightness, P3 wide colour and support for one billion colours for vibrant images and incredible detail.<br><li>\r\n<li>ADVANCED CAMERA AND AUDIO – Look sharp and sound great with a 1080p FaceTime HD camera, three-mic array and four-speaker sound system with Spatial Audio.<br><li>\r\n\r\n</ul>', 'a4.jpg', 'a2.jpg', 'a3.jpg', 0, 'In Stock', '2023-03-03 06:21:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(4, 4, 'Mobiles', '2021-11-30 16:55:48', ''),
(6, 4, 'Laptops', '2021-12-04 04:13:00', ''),
(8, 3, 'Comics', '2021-12-04 04:13:54', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(37, 'vidhu@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-22 06:43:00', NULL, 1),
(39, 'selja123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-03-01 06:35:17', NULL, 1),
(40, 'darshan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-06 03:27:34', '06-04-2023 09:01:23 AM', 1),
(41, 'darshan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-06 05:29:18', '06-04-2023 12:12:14 PM', 1),
(42, 'darshan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-06 06:45:29', NULL, 1),
(43, 'selja123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-24 05:14:22', NULL, 1),
(44, 'selja123@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-24 07:36:11', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(7, 'vidhi italiya', 'vidhu@gmail.com', 1234567891, '25d55ad283aa400af464c76d713c07ad', '22,bhyflo;', 'gujarat', 'surat', 680546, '11,hjbdasjf', 'gujarat', 'surat', 440087, '2023-02-22 06:42:40', NULL),
(8, 'selja  rupavatiya', 'selja123@gmail.com', 3453216767, 'd8d7c91df16841ab43127013ca53d5fa', '12A,sarita high', 'gujarat', 'surat', 440087, '12A,sarita high', 'gujarat', 'surat', 440087, '2023-03-01 06:34:58', NULL),
(9, 'darshan italiya', 'darshan@gmail.com', 9428641658, '3d4cf11b4474c78d0afe542498795af0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-06 03:26:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2021-12-27 18:53:17'),
(2, 6, 3, '2023-01-25 06:34:19'),
(3, 6, 2, '2023-01-25 12:03:36'),
(4, 6, 2, '2023-01-25 12:03:48'),
(5, 6, 2, '2023-01-25 12:04:02'),
(6, 9, 2, '2023-04-06 03:31:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
