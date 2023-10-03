/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 5.5.42 : Database - attributebasedencryptedsearch
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`attributebasedencryptedsearch` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `attributebasedencryptedsearch`;

/*Table structure for table `files` */

DROP TABLE IF EXISTS `files`;

CREATE TABLE `files` (
  `fileid` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `rank_` int(50) unsigned DEFAULT NULL,
  `key_` varchar(45) NOT NULL DEFAULT '',
  `title` varchar(45) DEFAULT NULL,
  `keyword` varchar(45) DEFAULT NULL,
  `cat` varchar(45) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`fileid`,`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `files` */

/*Table structure for table `regpage` */

DROP TABLE IF EXISTS `regpage`;

CREATE TABLE `regpage` (
  `name` varchar(45) NOT NULL DEFAULT '',
  `userid` varchar(45) NOT NULL DEFAULT '',
  `pass` varchar(45) NOT NULL DEFAULT '',
  `mail` varchar(45) NOT NULL DEFAULT '',
  `age` varchar(45) NOT NULL DEFAULT '',
  `loc` varchar(45) NOT NULL DEFAULT '',
  `sex` varchar(45) NOT NULL DEFAULT '',
  `time_` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `utype` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `regpage` */

insert  into `regpage`(`name`,`userid`,`pass`,`mail`,`age`,`loc`,`sex`,`time_`,`utype`) values 
('raju','raju','raju','nagasrinu482@gmail.com','2021-12-29','lbnagar','male','2022-01-27 18:09:23','user'),
('rani','rani','rani','voidmain.projects@gmail.com','1990-05-10','vizag','female','2022-01-27 18:21:33','user'),
('srinu','srinu','srinu','nagasrinu482@gmail.com','2022-01-06','dilsukhnagar','male','2022-01-27 18:08:49','owner');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `user` varchar(45) NOT NULL,
  `filename` varchar(45) NOT NULL,
  `owner` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`id`,`name`,`user`,`filename`,`owner`) values 
(1,'Ui6KHaXW','raju','Django.txt','srinu'),
(2,'Ui6KHaXW','rani','Django.txt','srinu'),
(3,'UKMwjxPzO','raju','Django.txt','srinu');

/*Table structure for table `userfiles` */

DROP TABLE IF EXISTS `userfiles`;

CREATE TABLE `userfiles` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `userid` varchar(500) DEFAULT NULL,
  `filename` varchar(500) DEFAULT NULL,
  `filekey` varchar(500) DEFAULT NULL,
  `edit` varchar(500) DEFAULT NULL,
  `view` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `userfiles` */

insert  into `userfiles`(`id`,`userid`,`filename`,`filekey`,`edit`,`view`) values 
(1,'raju','Django.txt','UKMwjxPzO','yes','yes');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
