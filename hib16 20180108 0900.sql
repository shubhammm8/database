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
-- Create schema hibernate16
--

CREATE DATABASE IF NOT EXISTS hibernate16;
USE hibernate16;

--
-- Definition of table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
CREATE TABLE `candidate` (
  `can_id` int(11) NOT NULL AUTO_INCREMENT,
  `can_name` varchar(25) NOT NULL,
  `party` varchar(25) NOT NULL,
  `con_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`can_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` (`can_id`,`can_name`,`party`,`con_id`) VALUES 
 (1,'hariprasad','Congress',1),
 (2,'Ramprasad','BJP',2),
 (3,'Ramprasad','BJP',3);
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;


--
-- Definition of table `constituency`
--

DROP TABLE IF EXISTS `constituency`;
CREATE TABLE `constituency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `constituency`
--

/*!40000 ALTER TABLE `constituency` DISABLE KEYS */;
INSERT INTO `constituency` (`id`,`name`) VALUES 
 (1,'Jayanagar'),
 (2,'Gayanagar'),
 (3,'Gayanagar');
/*!40000 ALTER TABLE `constituency` ENABLE KEYS */;


--
-- Definition of table `fifa17`
--

DROP TABLE IF EXISTS `fifa17`;
CREATE TABLE `fifa17` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `gameplayed` int(11) NOT NULL,
  `gamewon` int(11) NOT NULL,
  `gamelost` int(11) NOT NULL,
  `gd` int(11) NOT NULL,
  `bestagainst` varchar(50) DEFAULT NULL,
  `highscore` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fifa17`
--

/*!40000 ALTER TABLE `fifa17` DISABLE KEYS */;
INSERT INTO `fifa17` (`id`,`name`,`gameplayed`,`gamewon`,`gamelost`,`gd`,`bestagainst`,`highscore`) VALUES 
 (1,'Shubham',1,0,1,-5,'none',-1),
 (2,'Gourab',1,1,0,1,'vidit',1);
/*!40000 ALTER TABLE `fifa17` ENABLE KEYS */;


--
-- Definition of table `lead`
--

DROP TABLE IF EXISTS `lead`;
CREATE TABLE `lead` (
  `l_id` int(11) NOT NULL,
  `l_name` varchar(25) DEFAULT NULL,
  `t_id` int(11) NOT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lead`
--

/*!40000 ALTER TABLE `lead` DISABLE KEYS */;
INSERT INTO `lead` (`l_id`,`l_name`,`t_id`) VALUES 
 (1,'Prem',1),
 (2,'Deepak',2),
 (3,'Rounak',3),
 (4,'SOMEONE',4),
 (34,'SMURTHY',2),
 (75,'SatyaPrakash',5),
 (221,'sdfghjhfdf',221),
 (222,'pappuu',9879),
 (987,'qwertyuiop',5);
/*!40000 ALTER TABLE `lead` ENABLE KEYS */;


--
-- Definition of table `mind`
--

DROP TABLE IF EXISTS `mind`;
CREATE TABLE `mind` (
  `m_id` int(11) NOT NULL,
  `m_name` varchar(25) NOT NULL,
  `l_id` int(11) NOT NULL,
  `l_name` varchar(25) NOT NULL,
  `t_id` int(11) NOT NULL,
  `t_name` varchar(25) NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mind`
--

/*!40000 ALTER TABLE `mind` DISABLE KEYS */;
INSERT INTO `mind` (`m_id`,`m_name`,`l_id`,`l_name`,`t_id`,`t_name`) VALUES 
 (1,'qwertyui',12,'zxcvbnm',1,'EAI'),
 (2,'Vidit',34,'sdfghj',1,'EAI'),
 (3,'Shubham',1,'Prem',1,'EAI'),
 (4,'Chandan',2,'Vivek',2,'Java'),
 (5,'Rajat',3,'XYZ',3,'AEM'),
 (6,'Bhagwat',4,'XYZz',4,'SDET'),
 (7,'Navami',1,'Preemmm',1,'EAI'),
 (8,'Ashish',2,'Vivek',2,'JAVA'),
 (9,'Suraj',123,'Prem',34,'EAI'),
 (10,'Messi',100,'Barcelona',100,'LaLiga');
/*!40000 ALTER TABLE `mind` ENABLE KEYS */;


--
-- Definition of table `minds`
--

DROP TABLE IF EXISTS `minds`;
CREATE TABLE `minds` (
  `m_id` int(11) NOT NULL,
  `m_name` varchar(25) DEFAULT NULL,
  `l_id` int(11) NOT NULL,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `minds`
--

/*!40000 ALTER TABLE `minds` DISABLE KEYS */;
INSERT INTO `minds` (`m_id`,`m_name`,`l_id`) VALUES 
 (1,'Sooraj',1),
 (2,'Navneet',1),
 (3,'sachin',2),
 (4,'Satvender',3),
 (5,'Reshav',3),
 (6,'xyz',3),
 (7,'SMARTBOY',4),
 (68,'LAMPAK',34),
 (153,'SAchaniya',75),
 (4397,'LOL',2),
 (4567,'dfghjk',34),
 (5678,'qwertyuiopp',987),
 (9876,'poiuyt',34),
 (12345,'Lalllu',222);
/*!40000 ALTER TABLE `minds` ENABLE KEYS */;


--
-- Definition of table `msg`
--

DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg` (
  `id` int(11) NOT NULL,
  `too` varchar(30) DEFAULT NULL,
  `fromm` varchar(30) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msg`
--

/*!40000 ALTER TABLE `msg` DISABLE KEYS */;
INSERT INTO `msg` (`id`,`too`,`fromm`,`msg`) VALUES 
 (1,'Suraj','Shubham','LEts PLay FIFA BROOOOOOOOOOO!!!');
/*!40000 ALTER TABLE `msg` ENABLE KEYS */;


--
-- Definition of table `msgg`
--

DROP TABLE IF EXISTS `msgg`;
CREATE TABLE `msgg` (
  `id` int(11) NOT NULL,
  `too` varchar(25) NOT NULL,
  `fromm` varchar(25) NOT NULL,
  `mg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msgg`
--

/*!40000 ALTER TABLE `msgg` DISABLE KEYS */;
INSERT INTO `msgg` (`id`,`too`,`fromm`,`mg`) VALUES 
 (0,'ytre','qwertyui',NULL),
 (1,'shubham','Rajat','ye 2.0 k baad next update kab aayegi'),
 (2,'Khil','Prem','AE Khil! get the chocolate'),
 (3,'NAvneet','shubham','Aur bhai kaisa hai?'),
 (4,'Rajesh','shubham','Live Love Laugh'),
 (5,'KHIL','NAVNEET','If you will give me something then I will be happy to receive it'),
 (7,'suri','Shubham','you suck'),
 (104,'check','check','wertyuiopj'),
 (123,'qidb','asdfghp','ye le'),
 (477,'qidb','asdfghpfg','ye le'),
 (5678,'IDK','Someone','meaningless');
/*!40000 ALTER TABLE `msgg` ENABLE KEYS */;


--
-- Definition of table `track`
--

DROP TABLE IF EXISTS `track`;
CREATE TABLE `track` (
  `t_id` int(11) NOT NULL,
  `t_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track`
--

/*!40000 ALTER TABLE `track` DISABLE KEYS */;
INSERT INTO `track` (`t_id`,`t_name`) VALUES 
 (1,'EAI/BPM'),
 (2,'JAVA'),
 (3,'SAP'),
 (4,'SDET'),
 (5,'AEM'),
 (221,'xsww'),
 (9879,'chommuuu');
/*!40000 ALTER TABLE `track` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
