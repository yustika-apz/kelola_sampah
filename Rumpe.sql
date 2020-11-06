/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 10.1.35-MariaDB : Database - k1520264_rumpe
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`k1520264_rumpe` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `k1520264_rumpe`;

/*Table structure for table `brand` */

DROP TABLE IF EXISTS `brand`;

CREATE TABLE `brand` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `namaUsaha` varchar(32) NOT NULL,
  `namaPemilik` varchar(32) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `createdby` int(5) NOT NULL DEFAULT '1',
  `createddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedby` int(5) NOT NULL DEFAULT '1',
  `updateddate` datetime NOT NULL,
  `isused` char(1) CHARACTER SET utf8mb4 NOT NULL DEFAULT '1',
  `isactivated` char(1) CHARACTER SET utf8mb4 NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `brand` */

insert  into `brand`(`id`,`namaUsaha`,`namaPemilik`,`phone`,`email`,`address`,`createdby`,`createddate`,`updatedby`,`updateddate`,`isused`,`isactivated`) values 
(2,'Aqua','Frame','085359198820','brand@gmail.com','jl. S.M.Raja gg. P.Harapan no.85 Medan',1,'2020-08-26 15:55:53',0,'0000-00-00 00:00:00','1','1');

/*Table structure for table `brand_waste` */

DROP TABLE IF EXISTS `brand_waste`;

CREATE TABLE `brand_waste` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_lapak` bigint(20) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `merk` varchar(25) NOT NULL,
  `total` decimal(50,1) NOT NULL DEFAULT '0.0',
  `createdby` int(5) NOT NULL DEFAULT '1',
  `createddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedby` int(5) NOT NULL DEFAULT '1',
  `updateddate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `isused` int(1) NOT NULL DEFAULT '1',
  `isactivated` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `brand_waste` */

insert  into `brand_waste`(`id`,`id_lapak`,`jenis`,`merk`,`total`,`createdby`,`createddate`,`updatedby`,`updateddate`,`isused`,`isactivated`) values 
(1,6,'HDPE','Aqua',12.0,1,'2020-08-14 17:07:40',1,'2020-08-14 17:07:40',1,1),
(2,5,'HDPE','Mizone',3.0,1,'2020-09-19 13:04:09',1,'2020-09-19 06:04:09',1,1),
(3,5,'PP','Aqua',6.0,1,'2020-09-23 07:40:21',1,'2020-09-23 00:40:21',1,1),
(4,5,'HDPE','ale ale',2.0,1,'2020-09-23 00:40:04',1,'2020-09-23 00:40:04',1,1);

/*Table structure for table `client` */

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_lapak` bigint(20) NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tagging` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1.png',
  `createdby` int(5) NOT NULL DEFAULT '1',
  `createddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedby` int(5) NOT NULL DEFAULT '1',
  `updateddate` datetime NOT NULL,
  `isused` char(1) CHARACTER SET utf8mb4 NOT NULL DEFAULT '1',
  `isactivated` char(1) CHARACTER SET utf8mb4 NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `client` */

insert  into `client`(`id`,`id_lapak`,`username`,`name`,`email`,`phone`,`address`,`tagging`,`foto`,`createdby`,`createddate`,`updatedby`,`updateddate`,`isused`,`isactivated`) values 
(2,6,'stellasitinjak','Stella Sitinjak','stella@gmail.com','085359198820','jl. S.M.Raja gg. P.Harapan no.85 Medan','','1.png',1,'2020-08-10 17:10:28',0,'0000-00-00 00:00:00','1','1'),
(5,5,'Horan','Niall Horan','lala@gmail.com','085359198821','jl. S.M.Raja gg. P.Harapan no.86 Medan','','Horan.jpg',1,'2020-08-10 17:11:32',0,'2020-08-10 10:11:32','1','1'),
(6,5,'Yoongi','Min Yoongi','yoongi@gmail.com','085359198820','jl. S.M.Raja gg. P.Harapan no.85 Medan',NULL,'1.png',1,'2020-09-11 03:13:30',1,'2020-09-11 03:13:30','1','1'),
(7,5,'Namjoon','Kim','namjoon@gmail.com','085359198820','jl. S.M.Raja gg. P.Harapan no.85 Medan',NULL,'1.png',1,'2020-09-11 04:35:24',1,'2020-09-11 04:35:24','1','1');

/*Table structure for table `factory` */

DROP TABLE IF EXISTS `factory`;

CREATE TABLE `factory` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `namaUsaha` varchar(32) NOT NULL,
  `namaPemilik` varchar(32) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `createdby` int(5) NOT NULL DEFAULT '1',
  `createddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedby` int(5) NOT NULL DEFAULT '1',
  `updateddate` datetime NOT NULL,
  `isused` char(1) NOT NULL DEFAULT '1',
  `isactivated` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `factory` */

insert  into `factory`(`id`,`namaUsaha`,`namaPemilik`,`phone`,`email`,`address`,`createdby`,`createddate`,`updatedby`,`updateddate`,`isused`,`isactivated`) values 
(4,'GreenField','Tire','085359198820','factory@gmail.com','jl. S.M.Raja gg. P.Harapan no.85 Medan',1,'2020-08-16 15:12:29',0,'0000-00-00 00:00:00','1','1'),
(5,'Factory Maju','Dian','085359198820','dian@gmail.com','jl. Abadi',1,'2020-09-23 00:42:12',1,'2020-09-23 00:42:12','1','1');

/*Table structure for table `lapak` */

DROP TABLE IF EXISTS `lapak`;

CREATE TABLE `lapak` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `namaUsaha` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namaPemilik` varchar(23) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jlhWaste` decimal(50,1) NOT NULL,
  `jlhPemulung` int(20) NOT NULL,
  `createdby` int(5) NOT NULL DEFAULT '1',
  `createddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedby` int(5) NOT NULL DEFAULT '1',
  `updateddate` datetime NOT NULL,
  `isused` char(1) CHARACTER SET utf8mb4 NOT NULL DEFAULT '1',
  `isactivated` char(1) CHARACTER SET utf8mb4 NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `lapak` */

insert  into `lapak`(`id`,`namaUsaha`,`namaPemilik`,`phone`,`email`,`address`,`jlhWaste`,`jlhPemulung`,`createdby`,`createddate`,`updatedby`,`updateddate`,`isused`,`isactivated`) values 
(5,'Maju Bersama','Rim','085359198820','lapak@gmail.com','jl. S.M.Raja gg. P.Harapan no.85 Medan',26.3,2,1,'2020-10-06 17:22:14',0,'2020-10-06 10:22:14','1','1'),
(6,'Jaya Abadi','Light','085359198820','lapaks@gmail.com','jl. S.M.Raja gg. P.Harapan no.85 Medan',24.0,3,1,'2020-08-27 23:49:26',1,'2020-08-14 08:45:25','1','1'),
(7,'BukaLapak','lapakin','085359198820','lapakin@gmail.com','jl. S.M.Raja gg. P.Harapan no.85 Medan',12.0,10,1,'2020-10-17 02:41:44',1,'2020-10-17 02:41:44','1','1');

/*Table structure for table `lapak_waste` */

DROP TABLE IF EXISTS `lapak_waste`;

CREATE TABLE `lapak_waste` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_lapak` bigint(20) NOT NULL,
  `jlhPlastik` decimal(50,1) NOT NULL,
  `hargaPlastik` int(255) NOT NULL,
  `jlhKertas` decimal(50,1) NOT NULL,
  `hargaKertas` int(255) NOT NULL,
  `jlhBesi` decimal(50,1) NOT NULL,
  `hargaBesi` int(255) NOT NULL,
  `foto1` varchar(50) NOT NULL,
  `foto2` varchar(50) DEFAULT NULL,
  `foto3` varchar(50) DEFAULT NULL,
  `createdby` int(5) NOT NULL DEFAULT '1',
  `createddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedby` int(5) NOT NULL DEFAULT '1',
  `updateddate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `isused` int(1) NOT NULL DEFAULT '1',
  `isactivated` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `lapak_waste` */

insert  into `lapak_waste`(`id`,`id_lapak`,`jlhPlastik`,`hargaPlastik`,`jlhKertas`,`hargaKertas`,`jlhBesi`,`hargaBesi`,`foto1`,`foto2`,`foto3`,`createdby`,`createddate`,`updatedby`,`updateddate`,`isused`,`isactivated`) values 
(1,5,4.3,2100,7.3,3000,6.7,4000,'51.jpg','61.jpeg',NULL,1,'2020-08-27 13:15:01',1,'2020-09-23 00:38:00',1,1),
(2,6,0.0,2200,4.0,3500,10.0,3600,'61.jpeg','51.jpg',NULL,1,'2020-08-27 13:26:00',1,'0000-00-00 00:00:00',1,1);

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  `createdby` int(5) NOT NULL DEFAULT '1',
  `createddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedby` int(5) NOT NULL,
  `updateddate` datetime NOT NULL,
  `isused` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `isactivated` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`,`createdby`,`createddate`,`updatedby`,`updateddate`,`isused`,`isactivated`) values 
(1,'2020_07_05_064815_create_client',1,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00','1','1'),
(3,'2020_07_06_092054_create_lapak_table',2,1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00','1','1');

/*Table structure for table `picker` */

DROP TABLE IF EXISTS `picker`;

CREATE TABLE `picker` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_lapak` bigint(20) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(20) NOT NULL,
  `foto` varchar(50) NOT NULL DEFAULT '1.png',
  `createdby` int(5) NOT NULL DEFAULT '1',
  `createddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedby` int(5) NOT NULL DEFAULT '1',
  `updateddate` datetime NOT NULL,
  `isused` char(1) NOT NULL DEFAULT '1',
  `isactivated` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `picker` */

insert  into `picker`(`id`,`id_lapak`,`name`,`address`,`phone`,`email`,`foto`,`createdby`,`createddate`,`updatedby`,`updateddate`,`isused`,`isactivated`) values 
(1,5,'Chen','jl.in aja dulu','085359198820','chen@gmail.com','1.png',1,'2020-07-16 12:05:28',1,'2020-07-16 12:05:28','1','1'),
(2,6,'Frame','jl.Kedamaian','085359198820','frame@gmail.com','1.png',1,'2020-08-14 08:44:18',1,'2020-08-14 08:44:18','1','1'),
(3,6,'Tire','Jl. Akhir','085359198820','tire@gmail.com','1.png',1,'2020-08-14 08:44:53',1,'2020-08-14 08:44:53','1','1'),
(4,6,'Valve','Jl.Awal','085359198820','valve@gmail.com','1.png',1,'2020-08-14 08:45:23',1,'2020-08-14 08:45:23','1','1'),
(5,5,'lala','jl. S.M.Raja gg. P.Harapan no.85 Medan','085359198820','lalas@gmail.com','1.png',1,'2020-10-06 10:22:12',1,'2020-10-06 10:22:12','1','1');

/*Table structure for table `sales` */

DROP TABLE IF EXISTS `sales`;

CREATE TABLE `sales` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_client` bigint(20) NOT NULL,
  `id_picker` bigint(20) NOT NULL DEFAULT '0',
  `jenis` varchar(10) NOT NULL,
  `tanggal` varchar(10) NOT NULL,
  `jam` varchar(2) NOT NULL,
  `menit` int(2) NOT NULL,
  `location` varchar(255) NOT NULL,
  `beratTotal` decimal(50,1) DEFAULT NULL,
  `status` int(5) NOT NULL DEFAULT '0',
  `createdby` int(5) NOT NULL DEFAULT '1',
  `createddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedby` int(5) NOT NULL DEFAULT '1',
  `updateddate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `isused` char(1) NOT NULL DEFAULT '1',
  `isactivated` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*Data for the table `sales` */

insert  into `sales`(`id`,`id_client`,`id_picker`,`jenis`,`tanggal`,`jam`,`menit`,`location`,`beratTotal`,`status`,`createdby`,`createddate`,`updatedby`,`updateddate`,`isused`,`isactivated`) values 
(2,5,0,'Donasi','2020-08-03','5',20,'Jl. Almamater, Padang Bulan, Kec. Medan Baru, Kota Medan, Sumatera Utara 20222, Indonesia',3.0,0,1,'2020-08-17 21:42:33',1,'2020-08-17 21:42:33','1','0'),
(3,5,1,'Jual','2020-08-03','15',41,'02, Jl. Turi Ujung No.2, Teladan Bar., Kec. Medan Kota, Kota Medan, Sumatera Utara 20216, Indonesia',2.0,1,1,'2020-09-23 07:37:58',1,'2020-09-23 00:37:58','1','1'),
(4,5,1,'Jual','2020-08-03','15',42,'02, Jl. Turi Ujung No.2, Teladan Bar., Kec. Medan Kota, Kota Medan, Sumatera Utara 20216, Indonesia',3.8,0,1,'2020-09-11 10:44:21',1,'2020-09-11 03:44:21','1','0'),
(5,2,3,'Donasi','2020-08-14','13',50,'Jl. Almamater, Padang Bulan, Kec. Medan Baru, Kota Medan, Sumatera Utara 20222, Indonesia',2.0,1,1,'2020-08-17 21:42:47',1,'2020-08-17 21:42:47','1','1'),
(6,6,1,'Donasi','2020-09-11','15',35,'jl. S.M.Raja gg. P.Harapan no.85 Medan',NULL,0,1,'2020-09-11 10:56:50',1,'2020-09-11 10:56:50','1','1'),
(7,5,1,'Jual','2020-09-11','8',35,'jl. S.M.Raja gg. P.Harapan no.86 Medan',NULL,1,1,'2020-09-11 10:57:24',1,'2020-09-11 03:57:24','1','1'),
(8,7,1,'Donasi','2020-09-11','16',55,'02, Jl. Turi Ujung No.2, Teladan Bar., Kec. Medan Kota, Kota Medan, Sumatera Utara 20216, Indonesia',NULL,1,1,'2020-09-11 11:48:29',1,'2020-09-11 04:48:29','1','1'),
(9,7,0,'Jual','2020-09-11','4',15,'jl. S.M.Raja gg. P.Harapan no.85 Medan',NULL,0,1,'2020-09-11 04:40:36',1,'2020-09-11 04:40:36','1','1'),
(10,7,0,'Jual','2020-09-11','12',30,'jl. S.M.Raja gg. P.Harapan no.85 Medan',NULL,0,1,'2020-09-11 04:41:35',1,'2020-09-11 04:41:35','1','1'),
(11,7,0,'Jual','2020-09-11','17',40,'jl. S.M.Raja gg. P.Harapan no.85 Medan',NULL,0,1,'2020-09-11 04:42:23',1,'2020-09-11 04:42:23','1','1'),
(12,5,0,'Donasi','2020-10-15','16',15,'jl. S.M.Raja gg. P.Harapan no.86 Medan',NULL,0,1,'2020-10-15 13:44:56',1,'2020-10-15 13:44:56','1','1');

/*Table structure for table `salesdet` */

DROP TABLE IF EXISTS `salesdet`;

CREATE TABLE `salesdet` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_sales` bigint(20) NOT NULL,
  `beratBesi` decimal(50,1) NOT NULL DEFAULT '0.0',
  `beratKertas` decimal(50,1) NOT NULL DEFAULT '0.0',
  `beratPlastik` decimal(50,1) NOT NULL DEFAULT '0.0',
  `beratTotal` decimal(50,1) NOT NULL DEFAULT '0.0',
  `foto` varchar(50) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `createdby` int(5) NOT NULL DEFAULT '1',
  `updatedby` int(5) NOT NULL DEFAULT '1',
  `createddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateddate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `isused` char(1) NOT NULL DEFAULT '1',
  `isactivated` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `salesdet` */

insert  into `salesdet`(`id`,`id_sales`,`beratBesi`,`beratKertas`,`beratPlastik`,`beratTotal`,`foto`,`keterangan`,`createdby`,`updatedby`,`createddate`,`updateddate`,`isused`,`isactivated`) values 
(1,1,2.0,0.0,1.0,3.0,'1.jpg','Aqua',1,1,'2020-08-11 22:34:53','2020-08-11 22:34:53','1','0'),
(2,2,0.0,2.0,1.0,3.0,'2.jpg','Mizone',1,1,'2020-08-11 22:34:54','2020-08-11 22:34:54','1','0'),
(3,3,2.0,0.4,0.0,2.4,'3.jpg','AleAle',1,1,'2020-09-23 07:37:51','2020-09-23 00:37:51','1','1'),
(4,4,2.4,0.1,1.3,3.8,'4.jpg','AleAle',1,1,'2020-09-11 10:44:22','2020-09-11 03:44:22','1','0'),
(5,5,0.0,2.0,0.0,2.0,'5.jpg','Pocari',1,1,'2020-08-11 22:34:58','2020-08-11 22:34:58','1','1'),
(6,6,0.2,3.2,0.0,3.4,'6.jpg','Mizone',1,1,'2020-09-11 10:21:16','2020-09-11 03:21:15','1','1'),
(7,7,1.2,1.1,1.0,3.3,'7.jpg','sampah masyarakat',1,1,'2020-09-11 10:57:16','2020-09-11 03:57:16','1','1'),
(8,8,2.1,1.3,0.0,3.4,'8.png','Buletin, Kompas',1,1,'2020-09-11 11:48:15','2020-09-11 04:48:15','1','1'),
(9,9,0.0,0.0,3.0,3.0,'9.jpg','Mizone',1,1,'2020-09-11 04:40:36','2020-09-11 04:40:36','1','1'),
(10,10,0.0,3.0,0.0,3.0,'10.jpg','Kompas',1,1,'2020-09-11 04:41:35','2020-09-11 04:41:35','1','1'),
(11,11,3.0,0.0,0.0,3.0,'11.jpg','Besi',1,1,'2020-09-11 04:42:23','2020-09-11 04:42:23','1','1'),
(12,12,0.0,1.0,0.3,1.3,'12.png','aleale',1,1,'2020-10-15 13:44:57','2020-10-15 13:44:57','1','1');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `email` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdby` int(5) NOT NULL DEFAULT '1',
  `createddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedby` int(5) NOT NULL DEFAULT '1',
  `updateddate` datetime NOT NULL,
  `isused` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `isactivated` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`email`,`password`,`jenis`,`createdby`,`createddate`,`updatedby`,`updateddate`,`isused`,`isactivated`) values 
('brand@gmail.com','$2y$10$7XQODfgZDQ63.CANBIbmyupVdIJRWGQoZmtSgvwMS3Z32Yrf0jaWi','brand',1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00','1','1'),
('chen@gmail.com','$2y$10$SSReOIHjNEu9FtCh87miruWGudR24Zk7MvPvHpFzKrsEE46c8S.1G','picker',1,'2020-07-16 13:17:28',1,'2020-07-16 13:17:28','1','1'),
('dian@gmail.com','$2y$10$gSyHKQN1xsa7UWCNe4KsieXL7ex6FfEfkFvv0pcfJyaER5S2qIEti','factory',1,'2020-09-23 00:42:12',1,'2020-09-23 00:42:12','1','1'),
('factory@gmail.com','$2y$10$mz/BZOnUqEN0Y.Wn9uyYxOpdkHnbyA9XgYFqIU8W5xExuGS/L6WH.','factory',1,'2020-08-16 15:10:06',0,'0000-00-00 00:00:00','1','1'),
('frame@gmail.com','$2y$10$VWa9vQ2UaMcnh5gkxOsWIOtMklJrEcnxWeS9M8koAicz.kMyKRwK2','picker',1,'2020-08-14 08:44:19',1,'2020-08-14 08:44:19','1','1'),
('lala@gmail.com','$2y$10$iwSb6a3.252P6wNXvflFyOifjA9TDY2iN6BW3a4k9v1vtpA/p7oda','client',1,'2020-08-08 17:05:53',0,'2020-08-08 10:05:53','1','1'),
('lalas@gmail.com','$2y$10$iUAbHWgQULnVLqyQ4dYFF.kbbRrW7vwA3A24N/SZ.lMI/H6YBrHWG','picker',1,'2020-10-06 10:22:13',1,'2020-10-06 10:22:13','1','1'),
('lapak@gmail.com','$2y$10$TUEGEuzk8Ie8B2LVIoyKmuhsgj3iD13prXJuwei9nxx2omTpl2Z7u','lapak',1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00','1','1'),
('lapakin@gmail.com','$2y$10$b9L8TOZjrRjdAMvBTzyLi.nzjSDWJjqJnm7w447xs9uEJ2pvCKemy','lapak',1,'2020-10-17 02:41:45',1,'2020-10-17 02:41:45','1','1'),
('lapaks@gmail.com','$2y$10$maAd/vKX//nrfWBd14il4OSihHDcVLjDhQ9xiivjg7NAa7jKBNlye','lapak',1,'2020-07-14 13:43:36',1,'2020-07-14 13:43:36','1','1'),
('namjoon@gmail.com','$2y$10$Wh6LGL/F47kzJ67L1UKiZONswRWRkEAZ/dbKAr56QlM0S91.Qmdu2','client',1,'2020-09-11 04:35:24',1,'2020-09-11 04:35:24','1','1'),
('stella@gmail.com','$2y$10$ibDSMZ6iD2qlrFrMY9oG0elfgt.m.5/LuRKXr210QNXV6g/e7wqve','client',1,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00','1','1'),
('tire@gmail.com','$2y$10$V/soI.Q3EHrxX5RcvFLlZ.09ijjcGqwze0o6a5aAuYXeF/JoyKgbG','picker',1,'2020-08-14 08:44:53',1,'2020-08-14 08:44:53','1','1'),
('valve@gmail.com','$2y$10$Thj6cI.12XQw7sueSa6N/u190yrXOlOA71Rmp9sEGaeaNzPNbEz9K','picker',1,'2020-08-14 08:45:23',1,'2020-08-14 08:45:23','1','1'),
('yoongi@gmail.com','$2y$10$4eDx9wzRqsW8Xldhil8E5.l9DxdxhliAq4V/EXpFTxEHdCIAJMx6i','client',1,'2020-09-11 03:13:31',1,'2020-09-11 03:13:31','1','1');

/*Table structure for table `waste_sales` */

DROP TABLE IF EXISTS `waste_sales`;

CREATE TABLE `waste_sales` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_factory` bigint(20) NOT NULL,
  `id_lapak` bigint(20) NOT NULL,
  `beratTotal` int(50) NOT NULL,
  `payment` varchar(10) NOT NULL DEFAULT '0',
  `status` int(5) NOT NULL DEFAULT '0',
  `createdby` int(5) NOT NULL DEFAULT '1',
  `createddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedby` int(5) NOT NULL DEFAULT '1',
  `updateddate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `isused` int(1) NOT NULL DEFAULT '1',
  `isactivated` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*Data for the table `waste_sales` */

insert  into `waste_sales`(`id`,`id_factory`,`id_lapak`,`beratTotal`,`payment`,`status`,`createdby`,`createddate`,`updatedby`,`updateddate`,`isused`,`isactivated`) values 
(3,4,6,3,'emoney',1,1,'2020-08-28 09:34:36',1,'2020-08-29 14:05:34',1,1),
(4,4,6,3,'bank',2,1,'2020-08-28 15:27:53',1,'2020-08-29 21:26:14',1,1),
(5,4,5,2,'emoney',1,1,'2020-08-28 15:29:12',1,'2020-08-30 16:07:41',1,0),
(7,4,6,3,'emoney',3,1,'2020-08-29 07:31:58',1,'2020-08-29 21:26:20',1,1),
(9,4,6,5,'bank',4,1,'2020-08-29 14:29:23',1,'2020-08-30 16:09:46',1,1),
(10,4,6,1,'emoney',1,1,'2020-08-29 14:31:30',1,'2020-08-29 14:31:48',1,1),
(18,4,5,5,'bank',1,1,'2020-08-30 09:31:32',1,'2020-08-30 09:34:03',1,1),
(19,4,5,8,'emoney',1,1,'2020-08-30 09:35:29',1,'2020-08-30 09:35:38',1,1),
(21,4,5,1,'bank',1,1,'2020-08-30 13:58:35',1,'2020-08-30 13:59:08',1,1),
(22,4,5,3,'emoney',1,1,'2020-09-11 03:47:42',1,'2020-09-11 03:49:22',1,0),
(23,4,5,2,'bank',1,1,'2020-09-11 03:53:00',1,'2020-09-11 03:54:01',1,1),
(24,4,5,3,'0',0,1,'2020-09-11 05:05:00',1,'2020-09-11 05:05:00',1,1),
(25,4,5,4,'0',0,1,'2020-09-17 10:13:47',1,'2020-09-17 17:14:30',1,1),
(26,4,5,3,'bank',1,1,'2020-10-15 13:48:53',1,'2020-10-15 13:50:47',1,1);

/*Table structure for table `waste_salesdet` */

DROP TABLE IF EXISTS `waste_salesdet`;

CREATE TABLE `waste_salesdet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_waste_sales` bigint(20) NOT NULL,
  `beratPlastik` int(50) NOT NULL DEFAULT '0',
  `beratKertas` int(50) NOT NULL DEFAULT '0',
  `beratBesi` int(50) NOT NULL DEFAULT '0',
  `firstName` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `address` text,
  `keterangan` varchar(255) DEFAULT NULL,
  `createdby` int(5) NOT NULL DEFAULT '1',
  `createddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedby` int(5) NOT NULL DEFAULT '1',
  `updateddate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `isused` int(1) NOT NULL DEFAULT '1',
  `isactivated` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `waste_salesdet` */

insert  into `waste_salesdet`(`id`,`id_waste_sales`,`beratPlastik`,`beratKertas`,`beratBesi`,`firstName`,`lastName`,`email`,`phone`,`address`,`keterangan`,`createdby`,`createddate`,`updatedby`,`updateddate`,`isused`,`isactivated`) values 
(2,3,0,1,2,NULL,NULL,NULL,NULL,'jl.kedamaian','cepetan',1,'2020-08-28 09:34:36',1,'2020-08-29 15:34:39',1,1),
(3,4,0,2,1,'Anna','Horan','anna@gmail.com','08123456789','jl.kaki','buruan',1,'2020-08-28 15:27:53',1,'2020-08-29 13:16:55',1,1),
(4,5,2,0,0,NULL,NULL,NULL,NULL,'jl.aja',NULL,1,'2020-08-28 15:29:12',1,'2020-08-30 16:08:08',1,0),
(5,7,0,3,0,NULL,NULL,NULL,NULL,'jl.aman',NULL,1,'2020-08-29 07:31:58',1,'2020-08-30 16:07:54',1,1),
(7,9,0,0,5,NULL,NULL,NULL,NULL,'jl.lah','buruan yo',1,'2020-08-29 14:29:23',1,'2020-08-30 16:09:01',1,1),
(8,10,0,0,1,NULL,NULL,NULL,NULL,'jl. S.M.Raja gg. P.Harapan no.85 Medan','jimin-shiii',1,'2020-08-29 14:31:30',1,'2020-08-30 16:08:57',1,1),
(16,18,5,0,0,NULL,NULL,NULL,NULL,'jl. S.M.Raja gg. P.Harapan no.85 Medan','try again',1,'2020-08-30 09:31:33',1,'2020-08-30 09:34:04',1,1),
(17,19,8,0,0,NULL,NULL,NULL,NULL,'jl. S.M.Raja gg. P.Harapan no.85 Medan','halah',1,'2020-08-30 09:35:29',1,'2020-08-30 09:35:38',1,1),
(19,21,1,0,0,NULL,NULL,NULL,NULL,'jl. S.M.Raja gg. P.Harapan no.85 Medan','jlkdfjlsg',1,'2020-08-30 13:58:35',1,'2020-08-30 13:59:08',1,1),
(20,22,0,1,2,NULL,NULL,NULL,NULL,'jl. S.M.Raja gg. P.Harapan no.85 Medan','capcai perkapean',1,'2020-09-11 03:47:43',1,'2020-09-11 03:49:24',1,0),
(21,23,0,0,2,'Kim','Namjoon','namjoon@gmail.com','085359198820','Jl. Tj. Sari Asri Utara II No.1, Antapani Wetan, Kec. Antapani, Kota Bandung, Jawa Barat 40291, Indonesia',NULL,1,'2020-09-11 03:53:00',1,'2020-09-11 03:54:58',1,1),
(22,24,2,1,0,NULL,NULL,NULL,NULL,'jl. S.M.Raja gg. P.Harapan no.85 Medan',NULL,1,'2020-09-11 05:05:01',1,'2020-09-11 05:05:01',1,1),
(23,25,1,1,2,NULL,NULL,NULL,NULL,'jl. S.M.Raja gg. P.Harapan no.85 Medan',NULL,1,'2020-09-17 10:13:47',1,'2020-09-17 17:14:40',1,1),
(24,26,0,3,0,NULL,NULL,NULL,NULL,'jl. S.M.Raja gg. P.Harapan no.85 Medan',NULL,1,'2020-10-15 13:48:53',1,'2020-10-15 13:48:53',1,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
