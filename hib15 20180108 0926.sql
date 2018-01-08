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
-- Create schema hibernate15
--

CREATE DATABASE IF NOT EXISTS hibernate15;
USE hibernate15;

--
-- Definition of table `lead`
--

DROP TABLE IF EXISTS `lead`;
CREATE TABLE `lead` (
  `l_id` int(11) NOT NULL,
  `l_name` varchar(25) NOT NULL,
  `t_id` int(11) NOT NULL,
  PRIMARY KEY (`l_id`),
  KEY `FK_mind_1` (`t_id`),
  CONSTRAINT `FK_mind_1` FOREIGN KEY (`t_id`) REFERENCES `track` (`t_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lead`
--

/*!40000 ALTER TABLE `lead` DISABLE KEYS */;
INSERT INTO `lead` (`l_id`,`l_name`,`t_id`) VALUES 
 (78,'billu',888),
 (100,'ronaldo',1000),
 (1000,'wijqwo',10001),
 (8756,'remo',889),
 (8758,'remo',8845);
/*!40000 ALTER TABLE `lead` ENABLE KEYS */;


--
-- Definition of table `minds`
--

DROP TABLE IF EXISTS `minds`;
CREATE TABLE `minds` (
  `m_id` int(11) NOT NULL,
  `m_name` varchar(25) NOT NULL,
  `l_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`m_id`),
  KEY `FK_minds_1` (`l_id`),
  CONSTRAINT `FK_minds_1` FOREIGN KEY (`l_id`) REFERENCES `lead` (`l_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `minds`
--

/*!40000 ALTER TABLE `minds` DISABLE KEYS */;
INSERT INTO `minds` (`m_id`,`m_name`,`l_id`) VALUES 
 (999,'check',78);
/*!40000 ALTER TABLE `minds` ENABLE KEYS */;


--
-- Definition of table `track`
--

DROP TABLE IF EXISTS `track`;
CREATE TABLE `track` (
  `t_id` int(11) NOT NULL,
  `t_name` varchar(25) NOT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track`
--

/*!40000 ALTER TABLE `track` DISABLE KEYS */;
INSERT INTO `track` (`t_id`,`t_name`) VALUES 
 (1,'EAI'),
 (3,'SDET'),
 (4,'AEM'),
 (11,'football'),
 (888,'WebTechnology'),
 (889,'rt'),
 (1000,'soccer'),
 (8845,'rt'),
 (10001,'wow');
/*!40000 ALTER TABLE `track` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
