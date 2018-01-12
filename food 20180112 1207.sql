-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.53-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema foodorder
--

CREATE DATABASE IF NOT EXISTS foodorder;
USE foodorder;

--
-- Definition of table `foodcategories_fooditems`
--

DROP TABLE IF EXISTS `foodcategories_fooditems`;
CREATE TABLE `foodcategories_fooditems` (
  `FoodCategoriesTable_categoryId` int(11) NOT NULL,
  `foodItems_foodId` int(11) NOT NULL,
  PRIMARY KEY (`FoodCategoriesTable_categoryId`,`foodItems_foodId`),
  KEY `FK_fk39iyx5s5q3hxe4nuacguh3v` (`foodItems_foodId`),
  KEY `FK_8yw5bosusgai664l1j7i8i136` (`FoodCategoriesTable_categoryId`),
  CONSTRAINT `FK_8yw5bosusgai664l1j7i8i136` FOREIGN KEY (`FoodCategoriesTable_categoryId`) REFERENCES `foodcategoriestable` (`categoryId`),
  CONSTRAINT `FK_fk39iyx5s5q3hxe4nuacguh3v` FOREIGN KEY (`foodItems_foodId`) REFERENCES `fooditemstable` (`foodId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodcategories_fooditems`
--

/*!40000 ALTER TABLE `foodcategories_fooditems` DISABLE KEYS */;
INSERT INTO `foodcategories_fooditems` (`FoodCategoriesTable_categoryId`,`foodItems_foodId`) VALUES 
 (1,1),
 (2,3),
 (2,4),
 (2,5),
 (2,6);
/*!40000 ALTER TABLE `foodcategories_fooditems` ENABLE KEYS */;


--
-- Definition of table `foodcategoriestable`
--

DROP TABLE IF EXISTS `foodcategoriestable`;
CREATE TABLE `foodcategoriestable` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryType` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodcategoriestable`
--

/*!40000 ALTER TABLE `foodcategoriestable` DISABLE KEYS */;
INSERT INTO `foodcategoriestable` (`categoryId`,`categoryName`,`categoryType`,`price`) VALUES 
 (1,'Tea','Beverage',7),
 (2,'Thali','Veg',60);
/*!40000 ALTER TABLE `foodcategoriestable` ENABLE KEYS */;


--
-- Definition of table `fooditemstable`
--

DROP TABLE IF EXISTS `fooditemstable`;
CREATE TABLE `fooditemstable` (
  `foodId` int(11) NOT NULL AUTO_INCREMENT,
  `foodName` varchar(255) DEFAULT NULL,
  `foodType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`foodId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fooditemstable`
--

/*!40000 ALTER TABLE `fooditemstable` DISABLE KEYS */;
INSERT INTO `fooditemstable` (`foodId`,`foodName`,`foodType`) VALUES 
 (1,'Tea','Beverage'),
 (2,NULL,NULL),
 (3,'rajma','veg'),
 (4,'Rice','veg'),
 (5,'Roti','veg'),
 (6,'dal','veg'),
 (7,'sweets','extra');
/*!40000 ALTER TABLE `fooditemstable` ENABLE KEYS */;


--
-- Definition of table `mealday`
--

DROP TABLE IF EXISTS `mealday`;
CREATE TABLE `mealday` (
  `dayId` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dayId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mealday`
--

/*!40000 ALTER TABLE `mealday` DISABLE KEYS */;
INSERT INTO `mealday` (`dayId`,`day`) VALUES 
 (1,'Monday');
/*!40000 ALTER TABLE `mealday` ENABLE KEYS */;


--
-- Definition of table `mealday_mealtype`
--

DROP TABLE IF EXISTS `mealday_mealtype`;
CREATE TABLE `mealday_mealtype` (
  `MealDay_dayId` int(11) NOT NULL,
  `mealType_mealId` int(11) NOT NULL,
  PRIMARY KEY (`MealDay_dayId`,`mealType_mealId`),
  UNIQUE KEY `UK_1seol96uot21nriplgsrj4jeh` (`mealType_mealId`),
  KEY `FK_1seol96uot21nriplgsrj4jeh` (`mealType_mealId`),
  KEY `FK_ql1qdneaalo35cqg0602egr15` (`MealDay_dayId`),
  CONSTRAINT `FK_1seol96uot21nriplgsrj4jeh` FOREIGN KEY (`mealType_mealId`) REFERENCES `mealtypetable` (`mealId`),
  CONSTRAINT `FK_ql1qdneaalo35cqg0602egr15` FOREIGN KEY (`MealDay_dayId`) REFERENCES `mealday` (`dayId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mealday_mealtype`
--

/*!40000 ALTER TABLE `mealday_mealtype` DISABLE KEYS */;
INSERT INTO `mealday_mealtype` (`MealDay_dayId`,`mealType_mealId`) VALUES 
 (1,1);
/*!40000 ALTER TABLE `mealday_mealtype` ENABLE KEYS */;


--
-- Definition of table `mealtype_foodcategories`
--

DROP TABLE IF EXISTS `mealtype_foodcategories`;
CREATE TABLE `mealtype_foodcategories` (
  `MealTypeTable_mealId` int(11) NOT NULL,
  `foodCategories_categoryId` int(11) NOT NULL,
  PRIMARY KEY (`MealTypeTable_mealId`,`foodCategories_categoryId`),
  UNIQUE KEY `UK_bb3tqij4g40v3h8oq88ghr6v1` (`foodCategories_categoryId`),
  KEY `FK_bb3tqij4g40v3h8oq88ghr6v1` (`foodCategories_categoryId`),
  KEY `FK_hxjdvs6ol9x7seh3ukmimvvjc` (`MealTypeTable_mealId`),
  CONSTRAINT `FK_bb3tqij4g40v3h8oq88ghr6v1` FOREIGN KEY (`foodCategories_categoryId`) REFERENCES `foodcategoriestable` (`categoryId`),
  CONSTRAINT `FK_hxjdvs6ol9x7seh3ukmimvvjc` FOREIGN KEY (`MealTypeTable_mealId`) REFERENCES `mealtypetable` (`mealId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mealtype_foodcategories`
--

/*!40000 ALTER TABLE `mealtype_foodcategories` DISABLE KEYS */;
INSERT INTO `mealtype_foodcategories` (`MealTypeTable_mealId`,`foodCategories_categoryId`) VALUES 
 (1,1),
 (1,2);
/*!40000 ALTER TABLE `mealtype_foodcategories` ENABLE KEYS */;


--
-- Definition of table `mealtypetable`
--

DROP TABLE IF EXISTS `mealtypetable`;
CREATE TABLE `mealtypetable` (
  `mealId` int(11) NOT NULL AUTO_INCREMENT,
  `mealTiming` varchar(255) DEFAULT NULL,
  `mealTypeId` int(11) DEFAULT NULL,
  `mealTypeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mealId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mealtypetable`
--

/*!40000 ALTER TABLE `mealtypetable` DISABLE KEYS */;
INSERT INTO `mealtypetable` (`mealId`,`mealTiming`,`mealTypeId`,`mealTypeName`) VALUES 
 (1,'7:00 a.m. - 9:00 a.m.',1,'Breakfast');
/*!40000 ALTER TABLE `mealtypetable` ENABLE KEYS */;


--
-- Definition of table `userpass`
--

DROP TABLE IF EXISTS `userpass`;
CREATE TABLE `userpass` (
  `upid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `pass` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`upid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userpass`
--

/*!40000 ALTER TABLE `userpass` DISABLE KEYS */;
INSERT INTO `userpass` (`upid`,`username`,`pass`) VALUES 
 (1,'admin','admin');
/*!40000 ALTER TABLE `userpass` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
