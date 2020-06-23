/*
SQLyog Ultimate v8.32 
MySQL - 5.5.49 : Database - sixuan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sixuan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sixuan`;

/*Table structure for table `0tt_cases` */

DROP TABLE IF EXISTS `0tt_cases`;

CREATE TABLE `0tt_cases` (
  `ID` varchar(32) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `content` longtext,
  `content2` longtext,
  `createDate` datetime DEFAULT NULL,
  `description` longtext,
  `englishName` varchar(255) DEFAULT NULL,
  `imageHref` varchar(255) DEFAULT NULL,
  `imageHrefs` varchar(255) DEFAULT NULL,
  `isShow` varchar(255) DEFAULT NULL,
  `keywords` longtext,
  `name` varchar(255) DEFAULT NULL,
  `readNumber` int(11) NOT NULL,
  `sortOrder` int(11) NOT NULL,
  `style` varchar(255) DEFAULT NULL,
  `summary` longtext,
  `title` varchar(255) DEFAULT NULL,
  `casesType` varchar(32) DEFAULT NULL,
  `changjing` varchar(32) DEFAULT NULL,
  `jiaReFangShi` varchar(32) DEFAULT NULL,
  `productType` varchar(32) DEFAULT NULL,
  `renshu` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK7EED4CF4E328C939` (`changjing`),
  KEY `FK7EED4CF48C4D37CB` (`renshu`),
  KEY `FK7EED4CF414657297` (`jiaReFangShi`),
  KEY `FK7EED4CF487DD3319` (`casesType`),
  KEY `FK7EED4CF4F40A46B1` (`productType`),
  CONSTRAINT `FK7EED4CF414657297` FOREIGN KEY (`jiaReFangShi`) REFERENCES `0tt_jiarefangshi_type` (`ID`),
  CONSTRAINT `FK7EED4CF487DD3319` FOREIGN KEY (`casesType`) REFERENCES `0tt_cases_type` (`ID`),
  CONSTRAINT `FK7EED4CF48C4D37CB` FOREIGN KEY (`renshu`) REFERENCES `0tt_renshu_type` (`ID`),
  CONSTRAINT `FK7EED4CF4E328C939` FOREIGN KEY (`changjing`) REFERENCES `0tt_changjng_type` (`ID`),
  CONSTRAINT `FK7EED4CF4F40A46B1` FOREIGN KEY (`productType`) REFERENCES `0tt_product_type` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `0tt_cases` */

insert  into `0tt_cases`(`ID`,`author`,`content`,`content2`,`createDate`,`description`,`englishName`,`imageHref`,`imageHrefs`,`isShow`,`keywords`,`name`,`readNumber`,`sortOrder`,`style`,`summary`,`title`,`casesType`,`changjing`,`jiaReFangShi`,`productType`,`renshu`) values ('40286a81729e424b01729e63d16c001a',NULL,'<p>dafdafd</p>',NULL,'2020-06-01 00:00:00',NULL,NULL,'/img/server/upload/img/photosucai/20200611/img5_1591806192660.jpg,',NULL,'y',NULL,'上海电气集团公司',0,1,NULL,'上海电气旗下有电站、输配电、重工、轨道交通、机电一体化、机床、环保、电梯、印刷机械等多个产业集团，公司集工程设计、产品开发、设备制造、工程成套和技术服务为一体',NULL,NULL,NULL,NULL,'40286a81729e424b01729e5af8970010',NULL),('40286a81729e424b01729e645751001b',NULL,'<p>dasfadf</p>',NULL,'2020-06-01 00:00:00',NULL,NULL,'/img/server/upload/img/photosucai/20200611/img6_1591806201601.jpg,',NULL,'y',NULL,'上海交通大学医学院附属新华医院',0,2,NULL,'上海交通大学医学院附属新华医院创建于1958年,是新中国成立以来上海自行设计建设的首家综合性医院。',NULL,NULL,NULL,NULL,'40286a81729e424b01729e5af8970010',NULL),('40286a81729e424b01729e6994e9001c',NULL,'<p>adfadsfda</p>',NULL,'2020-05-05 00:00:00',NULL,NULL,'/img/server/upload/img/photosucai/20200611/img8_1591806251125.jpg,',NULL,'y',NULL,'上海振华港机集团有限公司',0,14,NULL,'公司拥有 20余年海运经验,船运设计实力强大,并在积极开拓海上安装、海底安装业务。',NULL,NULL,NULL,NULL,'40286a81729e424b01729e5af8970010',NULL),('40286a81729e424b01729f09f8b00036',NULL,'',NULL,'2020-06-01 00:00:00',NULL,NULL,'/img/server/upload/img/photosucai/20200611/img7_1591806226065.jpg,',NULL,'y',NULL,'上海通用汽车',0,3,NULL,'上海通用汽车有限公司成立于1997年6月12日，由上海汽车工业（集团）总公司、通用汽车公司各出资50%组建而成',NULL,NULL,NULL,NULL,'40286a81729e424b01729e5af8970010',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
