/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 8.0.30 : Database - db_fashion_arista
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `carts` */

DROP TABLE IF EXISTS `carts`;

CREATE TABLE `carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `quantity` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `carts` */

insert  into `carts`(`id`,`product_id`,`user_id`,`quantity`,`deleted_at`,`created_at`,`updated_at`) values (13,2,5,1,'2023-02-01 09:49:23','2023-02-01 08:08:11','2023-02-01 09:49:23');
insert  into `carts`(`id`,`product_id`,`user_id`,`quantity`,`deleted_at`,`created_at`,`updated_at`) values (14,2,5,1,'2023-02-07 00:59:35','2023-02-01 09:53:25','2023-02-07 00:59:35');
insert  into `carts`(`id`,`product_id`,`user_id`,`quantity`,`deleted_at`,`created_at`,`updated_at`) values (15,1,5,1,'2023-02-07 01:10:46','2023-02-07 01:10:30','2023-02-07 01:10:46');
insert  into `carts`(`id`,`product_id`,`user_id`,`quantity`,`deleted_at`,`created_at`,`updated_at`) values (16,2,5,1,'2023-02-07 03:07:20','2023-02-07 03:07:07','2023-02-07 03:07:20');

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`,`photo`,`slug`,`deleted_at`,`created_at`,`updated_at`) values (1,'Crewneck','assets/category/cKOhg74MZjix1uzdh6q8YQD5weVJ0td1btUxy0Wt.jpg','crewneck',NULL,'2023-01-27 16:41:10','2023-02-03 02:38:36');
insert  into `categories`(`id`,`name`,`photo`,`slug`,`deleted_at`,`created_at`,`updated_at`) values (2,'Kaos','assets/category/70JfSstqZm8aMUjt3jfxdj0VgXEbCrwXW81v2Uhi.jpg','kaos',NULL,'2023-01-27 16:41:10','2023-01-27 16:41:34');
insert  into `categories`(`id`,`name`,`photo`,`slug`,`deleted_at`,`created_at`,`updated_at`) values (3,'Kemeja','assets/category/DQQuQs9zoNjBTUfNIgqdmvxaVBHSMOW7MU3Ktq3X.jpg','kemeja',NULL,'2023-01-27 16:41:10','2023-02-03 02:40:49');
insert  into `categories`(`id`,`name`,`photo`,`slug`,`deleted_at`,`created_at`,`updated_at`) values (4,'Celana','assets/category/HQROoJwbtw7P4MmSIv7wrJ2w77PCHIKBSAhQUIUa.jpg','celana',NULL,'2023-01-27 16:41:10','2023-01-27 16:42:41');
insert  into `categories`(`id`,`name`,`photo`,`slug`,`deleted_at`,`created_at`,`updated_at`) values (5,'Apa Saja','assets/category/XMRkcrY91it8BPKVIFf9dOjkH5plKKkyhAJ46uey.jpg','apa-saja','2023-01-27 16:42:13','2023-01-27 16:41:10','2023-01-27 16:42:13');

/*Table structure for table `cities` */

DROP TABLE IF EXISTS `cities`;

CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `province_id` int unsigned NOT NULL,
  `city_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=898 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `cities` */

insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (1,1,17,'Badung','2023-01-27 08:39:25','2023-01-27 08:39:25');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (2,1,32,'Bangli','2023-01-27 08:39:25','2023-01-27 08:39:25');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (3,1,94,'Buleleng','2023-01-27 08:39:25','2023-01-27 08:39:25');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (4,1,114,'Denpasar','2023-01-27 08:39:25','2023-01-27 08:39:25');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (5,1,128,'Gianyar','2023-01-27 08:39:25','2023-01-27 08:39:25');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (6,1,161,'Jembrana','2023-01-27 08:39:25','2023-01-27 08:39:25');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (7,1,170,'Karangasem','2023-01-27 08:39:25','2023-01-27 08:39:25');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (8,1,197,'Klungkung','2023-01-27 08:39:25','2023-01-27 08:39:25');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (9,1,447,'Tabanan','2023-01-27 08:39:25','2023-01-27 08:39:25');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (10,2,27,'Bangka','2023-01-27 08:39:26','2023-01-27 08:39:26');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (11,2,28,'Bangka Barat','2023-01-27 08:39:26','2023-01-27 08:39:26');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (12,2,29,'Bangka Selatan','2023-01-27 08:39:26','2023-01-27 08:39:26');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (13,2,30,'Bangka Tengah','2023-01-27 08:39:26','2023-01-27 08:39:26');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (14,2,56,'Belitung','2023-01-27 08:39:26','2023-01-27 08:39:26');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (15,2,57,'Belitung Timur','2023-01-27 08:39:26','2023-01-27 08:39:26');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (16,2,334,'Pangkal Pinang','2023-01-27 08:39:26','2023-01-27 08:39:26');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (17,3,106,'Cilegon','2023-01-27 08:39:27','2023-01-27 08:39:27');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (18,3,232,'Lebak','2023-01-27 08:39:27','2023-01-27 08:39:27');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (19,3,331,'Pandeglang','2023-01-27 08:39:27','2023-01-27 08:39:27');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (20,3,402,'Serang','2023-01-27 08:39:27','2023-01-27 08:39:27');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (21,3,403,'Serang','2023-01-27 08:39:27','2023-01-27 08:39:27');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (22,3,455,'Tangerang','2023-01-27 08:39:27','2023-01-27 08:39:27');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (23,3,456,'Tangerang','2023-01-27 08:39:27','2023-01-27 08:39:27');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (24,3,457,'Tangerang Selatan','2023-01-27 08:39:27','2023-01-27 08:39:27');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (25,4,62,'Bengkulu','2023-01-27 08:39:31','2023-01-27 08:39:31');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (26,4,63,'Bengkulu Selatan','2023-01-27 08:39:31','2023-01-27 08:39:31');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (27,4,64,'Bengkulu Tengah','2023-01-27 08:39:31','2023-01-27 08:39:31');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (28,4,65,'Bengkulu Utara','2023-01-27 08:39:31','2023-01-27 08:39:31');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (29,4,175,'Kaur','2023-01-27 08:39:31','2023-01-27 08:39:31');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (30,4,183,'Kepahiang','2023-01-27 08:39:31','2023-01-27 08:39:31');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (31,4,233,'Lebong','2023-01-27 08:39:31','2023-01-27 08:39:31');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (32,4,294,'Muko Muko','2023-01-27 08:39:31','2023-01-27 08:39:31');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (33,4,379,'Rejang Lebong','2023-01-27 08:39:31','2023-01-27 08:39:31');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (34,4,397,'Seluma','2023-01-27 08:39:31','2023-01-27 08:39:31');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (35,5,39,'Bantul','2023-01-27 08:39:33','2023-01-27 08:39:33');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (36,5,135,'Gunung Kidul','2023-01-27 08:39:33','2023-01-27 08:39:33');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (37,5,210,'Kulon Progo','2023-01-27 08:39:33','2023-01-27 08:39:33');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (38,5,419,'Sleman','2023-01-27 08:39:33','2023-01-27 08:39:33');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (39,5,501,'Yogyakarta','2023-01-27 08:39:33','2023-01-27 08:39:33');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (40,6,151,'Jakarta Barat','2023-01-27 08:39:37','2023-01-27 08:39:37');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (41,6,152,'Jakarta Pusat','2023-01-27 08:39:37','2023-01-27 08:39:37');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (42,6,153,'Jakarta Selatan','2023-01-27 08:39:37','2023-01-27 08:39:37');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (43,6,154,'Jakarta Timur','2023-01-27 08:39:37','2023-01-27 08:39:37');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (44,6,155,'Jakarta Utara','2023-01-27 08:39:37','2023-01-27 08:39:37');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (45,6,189,'Kepulauan Seribu','2023-01-27 08:39:37','2023-01-27 08:39:37');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (46,7,77,'Boalemo','2023-01-27 08:39:39','2023-01-27 08:39:39');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (47,7,88,'Bone Bolango','2023-01-27 08:39:39','2023-01-27 08:39:39');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (48,7,129,'Gorontalo','2023-01-27 08:39:39','2023-01-27 08:39:39');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (49,7,130,'Gorontalo','2023-01-27 08:39:39','2023-01-27 08:39:39');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (50,7,131,'Gorontalo Utara','2023-01-27 08:39:39','2023-01-27 08:39:39');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (51,7,361,'Pohuwato','2023-01-27 08:39:39','2023-01-27 08:39:39');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (52,8,50,'Batang Hari','2023-01-27 08:39:40','2023-01-27 08:39:40');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (53,8,97,'Bungo','2023-01-27 08:39:40','2023-01-27 08:39:40');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (54,8,156,'Jambi','2023-01-27 08:39:40','2023-01-27 08:39:40');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (55,8,194,'Kerinci','2023-01-27 08:39:40','2023-01-27 08:39:40');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (56,8,280,'Merangin','2023-01-27 08:39:40','2023-01-27 08:39:40');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (57,8,293,'Muaro Jambi','2023-01-27 08:39:40','2023-01-27 08:39:40');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (58,8,393,'Sarolangun','2023-01-27 08:39:40','2023-01-27 08:39:40');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (59,8,442,'Sungaipenuh','2023-01-27 08:39:40','2023-01-27 08:39:40');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (60,8,460,'Tanjung Jabung Barat','2023-01-27 08:39:40','2023-01-27 08:39:40');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (61,8,461,'Tanjung Jabung Timur','2023-01-27 08:39:40','2023-01-27 08:39:40');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (62,8,471,'Tebo','2023-01-27 08:39:40','2023-01-27 08:39:40');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (63,9,22,'Bandung','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (64,9,23,'Bandung','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (65,9,24,'Bandung Barat','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (66,9,34,'Banjar','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (67,9,54,'Bekasi','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (68,9,55,'Bekasi','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (69,9,78,'Bogor','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (70,9,79,'Bogor','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (71,9,103,'Ciamis','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (72,9,104,'Cianjur','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (73,9,107,'Cimahi','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (74,9,108,'Cirebon','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (75,9,109,'Cirebon','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (76,9,115,'Depok','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (77,9,126,'Garut','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (78,9,149,'Indramayu','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (79,9,171,'Karawang','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (80,9,211,'Kuningan','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (81,9,252,'Majalengka','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (82,9,332,'Pangandaran','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (83,9,376,'Purwakarta','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (84,9,428,'Subang','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (85,9,430,'Sukabumi','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (86,9,431,'Sukabumi','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (87,9,440,'Sumedang','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (88,9,468,'Tasikmalaya','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (89,9,469,'Tasikmalaya','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (90,10,37,'Banjarnegara','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (91,10,41,'Banyumas','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (92,10,49,'Batang','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (93,10,76,'Blora','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (94,10,91,'Boyolali','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (95,10,92,'Brebes','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (96,10,105,'Cilacap','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (97,10,113,'Demak','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (98,10,134,'Grobogan','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (99,10,163,'Jepara','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (100,10,169,'Karanganyar','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (101,10,177,'Kebumen','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (102,10,181,'Kendal','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (103,10,196,'Klaten','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (104,10,209,'Kudus','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (105,10,249,'Magelang','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (106,10,250,'Magelang','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (107,10,344,'Pati','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (108,10,348,'Pekalongan','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (109,10,349,'Pekalongan','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (110,10,352,'Pemalang','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (111,10,375,'Purbalingga','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (112,10,377,'Purworejo','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (113,10,380,'Rembang','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (114,10,386,'Salatiga','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (115,10,398,'Semarang','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (116,10,399,'Semarang','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (117,10,427,'Sragen','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (118,10,433,'Sukoharjo','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (119,10,445,'Surakarta (Solo)','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (120,10,472,'Tegal','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (121,10,473,'Tegal','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (122,10,476,'Temanggung','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (123,10,497,'Wonogiri','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (124,10,498,'Wonosobo','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (125,11,31,'Bangkalan','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (126,11,42,'Banyuwangi','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (127,11,51,'Batu','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (128,11,74,'Blitar','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (129,11,75,'Blitar','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (130,11,80,'Bojonegoro','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (131,11,86,'Bondowoso','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (132,11,133,'Gresik','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (133,11,160,'Jember','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (134,11,164,'Jombang','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (135,11,178,'Kediri','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (136,11,179,'Kediri','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (137,11,222,'Lamongan','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (138,11,243,'Lumajang','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (139,11,247,'Madiun','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (140,11,248,'Madiun','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (141,11,251,'Magetan','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (142,11,255,'Malang','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (143,11,256,'Malang','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (144,11,289,'Mojokerto','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (145,11,290,'Mojokerto','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (146,11,305,'Nganjuk','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (147,11,306,'Ngawi','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (148,11,317,'Pacitan','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (149,11,330,'Pamekasan','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (150,11,342,'Pasuruan','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (151,11,343,'Pasuruan','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (152,11,363,'Ponorogo','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (153,11,369,'Probolinggo','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (154,11,370,'Probolinggo','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (155,11,390,'Sampang','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (156,11,409,'Sidoarjo','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (157,11,418,'Situbondo','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (158,11,441,'Sumenep','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (159,11,444,'Surabaya','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (160,11,487,'Trenggalek','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (161,11,489,'Tuban','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (162,11,492,'Tulungagung','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (163,12,61,'Bengkayang','2023-01-27 08:39:48','2023-01-27 08:39:48');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (164,12,168,'Kapuas Hulu','2023-01-27 08:39:48','2023-01-27 08:39:48');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (165,12,176,'Kayong Utara','2023-01-27 08:39:48','2023-01-27 08:39:48');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (166,12,195,'Ketapang','2023-01-27 08:39:48','2023-01-27 08:39:48');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (167,12,208,'Kubu Raya','2023-01-27 08:39:48','2023-01-27 08:39:48');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (168,12,228,'Landak','2023-01-27 08:39:48','2023-01-27 08:39:48');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (169,12,279,'Melawi','2023-01-27 08:39:48','2023-01-27 08:39:48');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (170,12,364,'Pontianak','2023-01-27 08:39:48','2023-01-27 08:39:48');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (171,12,365,'Pontianak','2023-01-27 08:39:48','2023-01-27 08:39:48');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (172,12,388,'Sambas','2023-01-27 08:39:48','2023-01-27 08:39:48');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (173,12,391,'Sanggau','2023-01-27 08:39:48','2023-01-27 08:39:48');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (174,12,395,'Sekadau','2023-01-27 08:39:48','2023-01-27 08:39:48');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (175,12,415,'Singkawang','2023-01-27 08:39:48','2023-01-27 08:39:48');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (176,12,417,'Sintang','2023-01-27 08:39:48','2023-01-27 08:39:48');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (177,13,18,'Balangan','2023-01-27 08:39:51','2023-01-27 08:39:51');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (178,13,33,'Banjar','2023-01-27 08:39:51','2023-01-27 08:39:51');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (179,13,35,'Banjarbaru','2023-01-27 08:39:51','2023-01-27 08:39:51');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (180,13,36,'Banjarmasin','2023-01-27 08:39:51','2023-01-27 08:39:51');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (181,13,43,'Barito Kuala','2023-01-27 08:39:51','2023-01-27 08:39:51');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (182,13,143,'Hulu Sungai Selatan','2023-01-27 08:39:51','2023-01-27 08:39:51');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (183,13,144,'Hulu Sungai Tengah','2023-01-27 08:39:51','2023-01-27 08:39:51');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (184,13,145,'Hulu Sungai Utara','2023-01-27 08:39:51','2023-01-27 08:39:51');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (185,13,203,'Kotabaru','2023-01-27 08:39:51','2023-01-27 08:39:51');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (186,13,446,'Tabalong','2023-01-27 08:39:51','2023-01-27 08:39:51');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (187,13,452,'Tanah Bumbu','2023-01-27 08:39:51','2023-01-27 08:39:51');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (188,13,454,'Tanah Laut','2023-01-27 08:39:51','2023-01-27 08:39:51');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (189,13,466,'Tapin','2023-01-27 08:39:51','2023-01-27 08:39:51');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (190,14,44,'Barito Selatan','2023-01-27 08:39:52','2023-01-27 08:39:52');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (191,14,45,'Barito Timur','2023-01-27 08:39:52','2023-01-27 08:39:52');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (192,14,46,'Barito Utara','2023-01-27 08:39:52','2023-01-27 08:39:52');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (193,14,136,'Gunung Mas','2023-01-27 08:39:52','2023-01-27 08:39:52');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (194,14,167,'Kapuas','2023-01-27 08:39:52','2023-01-27 08:39:52');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (195,14,174,'Katingan','2023-01-27 08:39:52','2023-01-27 08:39:52');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (196,14,205,'Kotawaringin Barat','2023-01-27 08:39:52','2023-01-27 08:39:52');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (197,14,206,'Kotawaringin Timur','2023-01-27 08:39:52','2023-01-27 08:39:52');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (198,14,221,'Lamandau','2023-01-27 08:39:52','2023-01-27 08:39:52');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (199,14,296,'Murung Raya','2023-01-27 08:39:52','2023-01-27 08:39:52');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (200,14,326,'Palangka Raya','2023-01-27 08:39:52','2023-01-27 08:39:52');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (201,14,371,'Pulang Pisau','2023-01-27 08:39:52','2023-01-27 08:39:52');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (202,14,405,'Seruyan','2023-01-27 08:39:52','2023-01-27 08:39:52');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (203,14,432,'Sukamara','2023-01-27 08:39:52','2023-01-27 08:39:52');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (204,15,19,'Balikpapan','2023-01-27 08:39:53','2023-01-27 08:39:53');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (205,15,66,'Berau','2023-01-27 08:39:53','2023-01-27 08:39:53');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (206,15,89,'Bontang','2023-01-27 08:39:53','2023-01-27 08:39:53');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (207,15,214,'Kutai Barat','2023-01-27 08:39:53','2023-01-27 08:39:53');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (208,15,215,'Kutai Kartanegara','2023-01-27 08:39:53','2023-01-27 08:39:53');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (209,15,216,'Kutai Timur','2023-01-27 08:39:53','2023-01-27 08:39:53');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (210,15,341,'Paser','2023-01-27 08:39:53','2023-01-27 08:39:53');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (211,15,354,'Penajam Paser Utara','2023-01-27 08:39:53','2023-01-27 08:39:53');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (212,15,387,'Samarinda','2023-01-27 08:39:53','2023-01-27 08:39:53');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (213,16,96,'Bulungan (Bulongan)','2023-01-27 08:39:55','2023-01-27 08:39:55');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (214,16,257,'Malinau','2023-01-27 08:39:55','2023-01-27 08:39:55');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (215,16,311,'Nunukan','2023-01-27 08:39:55','2023-01-27 08:39:55');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (216,16,450,'Tana Tidung','2023-01-27 08:39:55','2023-01-27 08:39:55');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (217,16,467,'Tarakan','2023-01-27 08:39:55','2023-01-27 08:39:55');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (218,17,48,'Batam','2023-01-27 08:39:56','2023-01-27 08:39:56');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (219,17,71,'Bintan','2023-01-27 08:39:56','2023-01-27 08:39:56');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (220,17,172,'Karimun','2023-01-27 08:39:56','2023-01-27 08:39:56');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (221,17,184,'Kepulauan Anambas','2023-01-27 08:39:56','2023-01-27 08:39:56');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (222,17,237,'Lingga','2023-01-27 08:39:56','2023-01-27 08:39:56');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (223,17,302,'Natuna','2023-01-27 08:39:56','2023-01-27 08:39:56');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (224,17,462,'Tanjung Pinang','2023-01-27 08:39:56','2023-01-27 08:39:56');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (225,18,21,'Bandar Lampung','2023-01-27 08:39:57','2023-01-27 08:39:57');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (226,18,223,'Lampung Barat','2023-01-27 08:39:57','2023-01-27 08:39:57');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (227,18,224,'Lampung Selatan','2023-01-27 08:39:57','2023-01-27 08:39:57');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (228,18,225,'Lampung Tengah','2023-01-27 08:39:57','2023-01-27 08:39:57');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (229,18,226,'Lampung Timur','2023-01-27 08:39:57','2023-01-27 08:39:57');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (230,18,227,'Lampung Utara','2023-01-27 08:39:57','2023-01-27 08:39:57');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (231,18,282,'Mesuji','2023-01-27 08:39:57','2023-01-27 08:39:57');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (232,18,283,'Metro','2023-01-27 08:39:57','2023-01-27 08:39:57');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (233,18,355,'Pesawaran','2023-01-27 08:39:57','2023-01-27 08:39:57');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (234,18,356,'Pesisir Barat','2023-01-27 08:39:57','2023-01-27 08:39:57');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (235,18,368,'Pringsewu','2023-01-27 08:39:57','2023-01-27 08:39:57');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (236,18,458,'Tanggamus','2023-01-27 08:39:57','2023-01-27 08:39:57');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (237,18,490,'Tulang Bawang','2023-01-27 08:39:57','2023-01-27 08:39:57');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (238,18,491,'Tulang Bawang Barat','2023-01-27 08:39:57','2023-01-27 08:39:57');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (239,18,496,'Way Kanan','2023-01-27 08:39:57','2023-01-27 08:39:57');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (240,19,14,'Ambon','2023-01-27 08:39:58','2023-01-27 08:39:58');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (241,19,99,'Buru','2023-01-27 08:39:58','2023-01-27 08:39:58');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (242,19,100,'Buru Selatan','2023-01-27 08:39:58','2023-01-27 08:39:58');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (243,19,185,'Kepulauan Aru','2023-01-27 08:39:58','2023-01-27 08:39:58');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (244,19,258,'Maluku Barat Daya','2023-01-27 08:39:58','2023-01-27 08:39:58');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (245,19,259,'Maluku Tengah','2023-01-27 08:39:58','2023-01-27 08:39:58');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (246,19,260,'Maluku Tenggara','2023-01-27 08:39:58','2023-01-27 08:39:58');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (247,19,261,'Maluku Tenggara Barat','2023-01-27 08:39:58','2023-01-27 08:39:58');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (248,19,400,'Seram Bagian Barat','2023-01-27 08:39:58','2023-01-27 08:39:58');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (249,19,401,'Seram Bagian Timur','2023-01-27 08:39:58','2023-01-27 08:39:58');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (250,19,488,'Tual','2023-01-27 08:39:58','2023-01-27 08:39:58');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (251,20,138,'Halmahera Barat','2023-01-27 08:39:59','2023-01-27 08:39:59');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (252,20,139,'Halmahera Selatan','2023-01-27 08:39:59','2023-01-27 08:39:59');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (253,20,140,'Halmahera Tengah','2023-01-27 08:39:59','2023-01-27 08:39:59');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (254,20,141,'Halmahera Timur','2023-01-27 08:39:59','2023-01-27 08:39:59');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (255,20,142,'Halmahera Utara','2023-01-27 08:39:59','2023-01-27 08:39:59');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (256,20,191,'Kepulauan Sula','2023-01-27 08:39:59','2023-01-27 08:39:59');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (257,20,372,'Pulau Morotai','2023-01-27 08:39:59','2023-01-27 08:39:59');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (258,20,477,'Ternate','2023-01-27 08:39:59','2023-01-27 08:39:59');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (259,20,478,'Tidore Kepulauan','2023-01-27 08:39:59','2023-01-27 08:39:59');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (260,21,1,'Aceh Barat','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (261,21,2,'Aceh Barat Daya','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (262,21,3,'Aceh Besar','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (263,21,4,'Aceh Jaya','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (264,21,5,'Aceh Selatan','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (265,21,6,'Aceh Singkil','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (266,21,7,'Aceh Tamiang','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (267,21,8,'Aceh Tengah','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (268,21,9,'Aceh Tenggara','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (269,21,10,'Aceh Timur','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (270,21,11,'Aceh Utara','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (271,21,20,'Banda Aceh','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (272,21,59,'Bener Meriah','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (273,21,72,'Bireuen','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (274,21,127,'Gayo Lues','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (275,21,230,'Langsa','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (276,21,235,'Lhokseumawe','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (277,21,300,'Nagan Raya','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (278,21,358,'Pidie','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (279,21,359,'Pidie Jaya','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (280,21,384,'Sabang','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (281,21,414,'Simeulue','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (282,21,429,'Subulussalam','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (283,22,68,'Bima','2023-01-27 08:40:03','2023-01-27 08:40:03');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (284,22,69,'Bima','2023-01-27 08:40:03','2023-01-27 08:40:03');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (285,22,118,'Dompu','2023-01-27 08:40:03','2023-01-27 08:40:03');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (286,22,238,'Lombok Barat','2023-01-27 08:40:03','2023-01-27 08:40:03');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (287,22,239,'Lombok Tengah','2023-01-27 08:40:03','2023-01-27 08:40:03');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (288,22,240,'Lombok Timur','2023-01-27 08:40:03','2023-01-27 08:40:03');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (289,22,241,'Lombok Utara','2023-01-27 08:40:03','2023-01-27 08:40:03');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (290,22,276,'Mataram','2023-01-27 08:40:03','2023-01-27 08:40:03');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (291,22,438,'Sumbawa','2023-01-27 08:40:03','2023-01-27 08:40:03');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (292,22,439,'Sumbawa Barat','2023-01-27 08:40:03','2023-01-27 08:40:03');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (293,23,13,'Alor','2023-01-27 08:40:04','2023-01-27 08:40:04');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (294,23,58,'Belu','2023-01-27 08:40:04','2023-01-27 08:40:04');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (295,23,122,'Ende','2023-01-27 08:40:04','2023-01-27 08:40:04');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (296,23,125,'Flores Timur','2023-01-27 08:40:04','2023-01-27 08:40:04');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (297,23,212,'Kupang','2023-01-27 08:40:04','2023-01-27 08:40:04');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (298,23,213,'Kupang','2023-01-27 08:40:04','2023-01-27 08:40:04');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (299,23,234,'Lembata','2023-01-27 08:40:04','2023-01-27 08:40:04');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (300,23,269,'Manggarai','2023-01-27 08:40:04','2023-01-27 08:40:04');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (301,23,270,'Manggarai Barat','2023-01-27 08:40:04','2023-01-27 08:40:04');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (302,23,271,'Manggarai Timur','2023-01-27 08:40:04','2023-01-27 08:40:04');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (303,23,301,'Nagekeo','2023-01-27 08:40:04','2023-01-27 08:40:04');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (304,23,304,'Ngada','2023-01-27 08:40:04','2023-01-27 08:40:04');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (305,23,383,'Rote Ndao','2023-01-27 08:40:04','2023-01-27 08:40:04');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (306,23,385,'Sabu Raijua','2023-01-27 08:40:04','2023-01-27 08:40:04');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (307,23,412,'Sikka','2023-01-27 08:40:04','2023-01-27 08:40:04');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (308,23,434,'Sumba Barat','2023-01-27 08:40:04','2023-01-27 08:40:04');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (309,23,435,'Sumba Barat Daya','2023-01-27 08:40:04','2023-01-27 08:40:04');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (310,23,436,'Sumba Tengah','2023-01-27 08:40:04','2023-01-27 08:40:04');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (311,23,437,'Sumba Timur','2023-01-27 08:40:04','2023-01-27 08:40:04');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (312,23,479,'Timor Tengah Selatan','2023-01-27 08:40:04','2023-01-27 08:40:04');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (313,23,480,'Timor Tengah Utara','2023-01-27 08:40:04','2023-01-27 08:40:04');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (314,24,16,'Asmat','2023-01-27 08:40:05','2023-01-27 08:40:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (315,24,67,'Biak Numfor','2023-01-27 08:40:05','2023-01-27 08:40:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (316,24,90,'Boven Digoel','2023-01-27 08:40:05','2023-01-27 08:40:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (317,24,111,'Deiyai (Deliyai)','2023-01-27 08:40:05','2023-01-27 08:40:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (318,24,117,'Dogiyai','2023-01-27 08:40:05','2023-01-27 08:40:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (319,24,150,'Intan Jaya','2023-01-27 08:40:05','2023-01-27 08:40:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (320,24,157,'Jayapura','2023-01-27 08:40:05','2023-01-27 08:40:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (321,24,158,'Jayapura','2023-01-27 08:40:05','2023-01-27 08:40:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (322,24,159,'Jayawijaya','2023-01-27 08:40:05','2023-01-27 08:40:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (323,24,180,'Keerom','2023-01-27 08:40:05','2023-01-27 08:40:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (324,24,193,'Kepulauan Yapen (Yapen Waropen)','2023-01-27 08:40:05','2023-01-27 08:40:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (325,24,231,'Lanny Jaya','2023-01-27 08:40:05','2023-01-27 08:40:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (326,24,263,'Mamberamo Raya','2023-01-27 08:40:05','2023-01-27 08:40:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (327,24,264,'Mamberamo Tengah','2023-01-27 08:40:05','2023-01-27 08:40:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (328,24,274,'Mappi','2023-01-27 08:40:05','2023-01-27 08:40:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (329,24,281,'Merauke','2023-01-27 08:40:05','2023-01-27 08:40:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (330,24,284,'Mimika','2023-01-27 08:40:05','2023-01-27 08:40:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (331,24,299,'Nabire','2023-01-27 08:40:05','2023-01-27 08:40:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (332,24,303,'Nduga','2023-01-27 08:40:06','2023-01-27 08:40:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (333,24,335,'Paniai','2023-01-27 08:40:06','2023-01-27 08:40:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (334,24,347,'Pegunungan Bintang','2023-01-27 08:40:06','2023-01-27 08:40:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (335,24,373,'Puncak','2023-01-27 08:40:06','2023-01-27 08:40:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (336,24,374,'Puncak Jaya','2023-01-27 08:40:06','2023-01-27 08:40:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (337,24,392,'Sarmi','2023-01-27 08:40:06','2023-01-27 08:40:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (338,24,443,'Supiori','2023-01-27 08:40:06','2023-01-27 08:40:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (339,24,484,'Tolikara','2023-01-27 08:40:06','2023-01-27 08:40:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (340,24,495,'Waropen','2023-01-27 08:40:06','2023-01-27 08:40:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (341,24,499,'Yahukimo','2023-01-27 08:40:06','2023-01-27 08:40:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (342,24,500,'Yalimo','2023-01-27 08:40:06','2023-01-27 08:40:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (343,25,124,'Fakfak','2023-01-27 08:40:07','2023-01-27 08:40:07');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (344,25,165,'Kaimana','2023-01-27 08:40:07','2023-01-27 08:40:07');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (345,25,272,'Manokwari','2023-01-27 08:40:07','2023-01-27 08:40:07');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (346,25,273,'Manokwari Selatan','2023-01-27 08:40:07','2023-01-27 08:40:07');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (347,25,277,'Maybrat','2023-01-27 08:40:07','2023-01-27 08:40:07');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (348,25,346,'Pegunungan Arfak','2023-01-27 08:40:07','2023-01-27 08:40:07');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (349,25,378,'Raja Ampat','2023-01-27 08:40:07','2023-01-27 08:40:07');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (350,25,424,'Sorong','2023-01-27 08:40:07','2023-01-27 08:40:07');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (351,25,425,'Sorong','2023-01-27 08:40:07','2023-01-27 08:40:07');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (352,25,426,'Sorong Selatan','2023-01-27 08:40:07','2023-01-27 08:40:07');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (353,25,449,'Tambrauw','2023-01-27 08:40:07','2023-01-27 08:40:07');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (354,25,474,'Teluk Bintuni','2023-01-27 08:40:07','2023-01-27 08:40:07');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (355,25,475,'Teluk Wondama','2023-01-27 08:40:07','2023-01-27 08:40:07');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (356,26,60,'Bengkalis','2023-01-27 08:40:10','2023-01-27 08:40:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (357,26,120,'Dumai','2023-01-27 08:40:10','2023-01-27 08:40:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (358,26,147,'Indragiri Hilir','2023-01-27 08:40:10','2023-01-27 08:40:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (359,26,148,'Indragiri Hulu','2023-01-27 08:40:10','2023-01-27 08:40:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (360,26,166,'Kampar','2023-01-27 08:40:10','2023-01-27 08:40:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (361,26,187,'Kepulauan Meranti','2023-01-27 08:40:10','2023-01-27 08:40:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (362,26,207,'Kuantan Singingi','2023-01-27 08:40:10','2023-01-27 08:40:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (363,26,350,'Pekanbaru','2023-01-27 08:40:10','2023-01-27 08:40:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (364,26,351,'Pelalawan','2023-01-27 08:40:10','2023-01-27 08:40:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (365,26,381,'Rokan Hilir','2023-01-27 08:40:10','2023-01-27 08:40:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (366,26,382,'Rokan Hulu','2023-01-27 08:40:10','2023-01-27 08:40:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (367,26,406,'Siak','2023-01-27 08:40:10','2023-01-27 08:40:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (368,27,253,'Majene','2023-01-27 08:40:12','2023-01-27 08:40:12');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (369,27,262,'Mamasa','2023-01-27 08:40:12','2023-01-27 08:40:12');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (370,27,265,'Mamuju','2023-01-27 08:40:12','2023-01-27 08:40:12');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (371,27,266,'Mamuju Utara','2023-01-27 08:40:12','2023-01-27 08:40:12');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (372,27,362,'Polewali Mandar','2023-01-27 08:40:12','2023-01-27 08:40:12');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (373,28,38,'Bantaeng','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (374,28,47,'Barru','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (375,28,87,'Bone','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (376,28,95,'Bulukumba','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (377,28,123,'Enrekang','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (378,28,132,'Gowa','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (379,28,162,'Jeneponto','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (380,28,244,'Luwu','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (381,28,245,'Luwu Timur','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (382,28,246,'Luwu Utara','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (383,28,254,'Makassar','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (384,28,275,'Maros','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (385,28,328,'Palopo','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (386,28,333,'Pangkajene Kepulauan','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (387,28,336,'Parepare','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (388,28,360,'Pinrang','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (389,28,396,'Selayar (Kepulauan Selayar)','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (390,28,408,'Sidenreng Rappang/Rapang','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (391,28,416,'Sinjai','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (392,28,423,'Soppeng','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (393,28,448,'Takalar','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (394,28,451,'Tana Toraja','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (395,28,486,'Toraja Utara','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (396,28,493,'Wajo','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (397,1,17,'Badung','2023-01-27 08:40:51','2023-01-27 08:40:51');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (398,1,32,'Bangli','2023-01-27 08:40:51','2023-01-27 08:40:51');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (399,1,94,'Buleleng','2023-01-27 08:40:51','2023-01-27 08:40:51');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (400,1,114,'Denpasar','2023-01-27 08:40:51','2023-01-27 08:40:51');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (401,1,128,'Gianyar','2023-01-27 08:40:51','2023-01-27 08:40:51');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (402,1,161,'Jembrana','2023-01-27 08:40:51','2023-01-27 08:40:51');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (403,1,170,'Karangasem','2023-01-27 08:40:51','2023-01-27 08:40:51');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (404,1,197,'Klungkung','2023-01-27 08:40:51','2023-01-27 08:40:51');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (405,1,447,'Tabanan','2023-01-27 08:40:51','2023-01-27 08:40:51');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (406,2,27,'Bangka','2023-01-27 08:40:52','2023-01-27 08:40:52');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (407,2,28,'Bangka Barat','2023-01-27 08:40:52','2023-01-27 08:40:52');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (408,2,29,'Bangka Selatan','2023-01-27 08:40:52','2023-01-27 08:40:52');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (409,2,30,'Bangka Tengah','2023-01-27 08:40:52','2023-01-27 08:40:52');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (410,2,56,'Belitung','2023-01-27 08:40:52','2023-01-27 08:40:52');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (411,2,57,'Belitung Timur','2023-01-27 08:40:52','2023-01-27 08:40:52');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (412,2,334,'Pangkal Pinang','2023-01-27 08:40:52','2023-01-27 08:40:52');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (413,3,106,'Cilegon','2023-01-27 08:40:53','2023-01-27 08:40:53');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (414,3,232,'Lebak','2023-01-27 08:40:53','2023-01-27 08:40:53');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (415,3,331,'Pandeglang','2023-01-27 08:40:53','2023-01-27 08:40:53');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (416,3,402,'Serang','2023-01-27 08:40:53','2023-01-27 08:40:53');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (417,3,403,'Serang','2023-01-27 08:40:53','2023-01-27 08:40:53');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (418,3,455,'Tangerang','2023-01-27 08:40:53','2023-01-27 08:40:53');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (419,3,456,'Tangerang','2023-01-27 08:40:53','2023-01-27 08:40:53');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (420,3,457,'Tangerang Selatan','2023-01-27 08:40:53','2023-01-27 08:40:53');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (421,4,62,'Bengkulu','2023-01-27 08:40:54','2023-01-27 08:40:54');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (422,4,63,'Bengkulu Selatan','2023-01-27 08:40:54','2023-01-27 08:40:54');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (423,4,64,'Bengkulu Tengah','2023-01-27 08:40:54','2023-01-27 08:40:54');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (424,4,65,'Bengkulu Utara','2023-01-27 08:40:54','2023-01-27 08:40:54');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (425,4,175,'Kaur','2023-01-27 08:40:54','2023-01-27 08:40:54');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (426,4,183,'Kepahiang','2023-01-27 08:40:54','2023-01-27 08:40:54');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (427,4,233,'Lebong','2023-01-27 08:40:54','2023-01-27 08:40:54');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (428,4,294,'Muko Muko','2023-01-27 08:40:54','2023-01-27 08:40:54');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (429,4,379,'Rejang Lebong','2023-01-27 08:40:54','2023-01-27 08:40:54');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (430,4,397,'Seluma','2023-01-27 08:40:54','2023-01-27 08:40:54');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (431,5,39,'Bantul','2023-01-27 08:40:56','2023-01-27 08:40:56');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (432,5,135,'Gunung Kidul','2023-01-27 08:40:56','2023-01-27 08:40:56');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (433,5,210,'Kulon Progo','2023-01-27 08:40:56','2023-01-27 08:40:56');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (434,5,419,'Sleman','2023-01-27 08:40:56','2023-01-27 08:40:56');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (435,5,501,'Yogyakarta','2023-01-27 08:40:56','2023-01-27 08:40:56');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (436,6,151,'Jakarta Barat','2023-01-27 08:40:57','2023-01-27 08:40:57');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (437,6,152,'Jakarta Pusat','2023-01-27 08:40:57','2023-01-27 08:40:57');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (438,6,153,'Jakarta Selatan','2023-01-27 08:40:57','2023-01-27 08:40:57');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (439,6,154,'Jakarta Timur','2023-01-27 08:40:57','2023-01-27 08:40:57');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (440,6,155,'Jakarta Utara','2023-01-27 08:40:57','2023-01-27 08:40:57');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (441,6,189,'Kepulauan Seribu','2023-01-27 08:40:57','2023-01-27 08:40:57');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (442,7,77,'Boalemo','2023-01-27 08:40:59','2023-01-27 08:40:59');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (443,7,88,'Bone Bolango','2023-01-27 08:40:59','2023-01-27 08:40:59');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (444,7,129,'Gorontalo','2023-01-27 08:40:59','2023-01-27 08:40:59');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (445,7,130,'Gorontalo','2023-01-27 08:40:59','2023-01-27 08:40:59');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (446,7,131,'Gorontalo Utara','2023-01-27 08:40:59','2023-01-27 08:40:59');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (447,7,361,'Pohuwato','2023-01-27 08:40:59','2023-01-27 08:40:59');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (448,8,50,'Batang Hari','2023-01-27 08:41:00','2023-01-27 08:41:00');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (449,8,97,'Bungo','2023-01-27 08:41:00','2023-01-27 08:41:00');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (450,8,156,'Jambi','2023-01-27 08:41:00','2023-01-27 08:41:00');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (451,8,194,'Kerinci','2023-01-27 08:41:00','2023-01-27 08:41:00');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (452,8,280,'Merangin','2023-01-27 08:41:00','2023-01-27 08:41:00');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (453,8,293,'Muaro Jambi','2023-01-27 08:41:00','2023-01-27 08:41:00');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (454,8,393,'Sarolangun','2023-01-27 08:41:00','2023-01-27 08:41:00');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (455,8,442,'Sungaipenuh','2023-01-27 08:41:00','2023-01-27 08:41:00');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (456,8,460,'Tanjung Jabung Barat','2023-01-27 08:41:00','2023-01-27 08:41:00');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (457,8,461,'Tanjung Jabung Timur','2023-01-27 08:41:00','2023-01-27 08:41:00');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (458,8,471,'Tebo','2023-01-27 08:41:00','2023-01-27 08:41:00');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (459,9,22,'Bandung','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (460,9,23,'Bandung','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (461,9,24,'Bandung Barat','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (462,9,34,'Banjar','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (463,9,54,'Bekasi','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (464,9,55,'Bekasi','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (465,9,78,'Bogor','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (466,9,79,'Bogor','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (467,9,103,'Ciamis','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (468,9,104,'Cianjur','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (469,9,107,'Cimahi','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (470,9,108,'Cirebon','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (471,9,109,'Cirebon','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (472,9,115,'Depok','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (473,9,126,'Garut','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (474,9,149,'Indramayu','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (475,9,171,'Karawang','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (476,9,211,'Kuningan','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (477,9,252,'Majalengka','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (478,9,332,'Pangandaran','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (479,9,376,'Purwakarta','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (480,9,428,'Subang','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (481,9,430,'Sukabumi','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (482,9,431,'Sukabumi','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (483,9,440,'Sumedang','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (484,9,468,'Tasikmalaya','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (485,9,469,'Tasikmalaya','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (486,10,37,'Banjarnegara','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (487,10,41,'Banyumas','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (488,10,49,'Batang','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (489,10,76,'Blora','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (490,10,91,'Boyolali','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (491,10,92,'Brebes','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (492,10,105,'Cilacap','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (493,10,113,'Demak','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (494,10,134,'Grobogan','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (495,10,163,'Jepara','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (496,10,169,'Karanganyar','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (497,10,177,'Kebumen','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (498,10,181,'Kendal','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (499,10,196,'Klaten','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (500,10,209,'Kudus','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (501,10,249,'Magelang','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (502,10,250,'Magelang','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (503,10,344,'Pati','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (504,10,348,'Pekalongan','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (505,10,349,'Pekalongan','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (506,10,352,'Pemalang','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (507,10,375,'Purbalingga','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (508,10,377,'Purworejo','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (509,10,380,'Rembang','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (510,10,386,'Salatiga','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (511,10,398,'Semarang','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (512,10,399,'Semarang','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (513,10,427,'Sragen','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (514,10,433,'Sukoharjo','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (515,10,445,'Surakarta (Solo)','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (516,10,472,'Tegal','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (517,10,473,'Tegal','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (518,10,476,'Temanggung','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (519,10,497,'Wonogiri','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (520,10,498,'Wonosobo','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (521,11,31,'Bangkalan','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (522,11,42,'Banyuwangi','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (523,11,51,'Batu','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (524,11,74,'Blitar','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (525,11,75,'Blitar','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (526,11,80,'Bojonegoro','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (527,11,86,'Bondowoso','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (528,11,133,'Gresik','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (529,11,160,'Jember','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (530,11,164,'Jombang','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (531,11,178,'Kediri','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (532,11,179,'Kediri','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (533,11,222,'Lamongan','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (534,11,243,'Lumajang','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (535,11,247,'Madiun','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (536,11,248,'Madiun','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (537,11,251,'Magetan','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (538,11,255,'Malang','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (539,11,256,'Malang','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (540,11,289,'Mojokerto','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (541,11,290,'Mojokerto','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (542,11,305,'Nganjuk','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (543,11,306,'Ngawi','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (544,11,317,'Pacitan','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (545,11,330,'Pamekasan','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (546,11,342,'Pasuruan','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (547,11,343,'Pasuruan','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (548,11,363,'Ponorogo','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (549,11,369,'Probolinggo','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (550,11,370,'Probolinggo','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (551,11,390,'Sampang','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (552,11,409,'Sidoarjo','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (553,11,418,'Situbondo','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (554,11,441,'Sumenep','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (555,11,444,'Surabaya','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (556,11,487,'Trenggalek','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (557,11,489,'Tuban','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (558,11,492,'Tulungagung','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (559,12,61,'Bengkayang','2023-01-27 08:41:07','2023-01-27 08:41:07');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (560,12,168,'Kapuas Hulu','2023-01-27 08:41:07','2023-01-27 08:41:07');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (561,12,176,'Kayong Utara','2023-01-27 08:41:07','2023-01-27 08:41:07');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (562,12,195,'Ketapang','2023-01-27 08:41:07','2023-01-27 08:41:07');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (563,12,208,'Kubu Raya','2023-01-27 08:41:07','2023-01-27 08:41:07');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (564,12,228,'Landak','2023-01-27 08:41:07','2023-01-27 08:41:07');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (565,12,279,'Melawi','2023-01-27 08:41:07','2023-01-27 08:41:07');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (566,12,364,'Pontianak','2023-01-27 08:41:07','2023-01-27 08:41:07');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (567,12,365,'Pontianak','2023-01-27 08:41:07','2023-01-27 08:41:07');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (568,12,388,'Sambas','2023-01-27 08:41:07','2023-01-27 08:41:07');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (569,12,391,'Sanggau','2023-01-27 08:41:08','2023-01-27 08:41:08');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (570,12,395,'Sekadau','2023-01-27 08:41:08','2023-01-27 08:41:08');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (571,12,415,'Singkawang','2023-01-27 08:41:08','2023-01-27 08:41:08');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (572,12,417,'Sintang','2023-01-27 08:41:08','2023-01-27 08:41:08');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (573,13,18,'Balangan','2023-01-27 08:41:09','2023-01-27 08:41:09');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (574,13,33,'Banjar','2023-01-27 08:41:09','2023-01-27 08:41:09');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (575,13,35,'Banjarbaru','2023-01-27 08:41:09','2023-01-27 08:41:09');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (576,13,36,'Banjarmasin','2023-01-27 08:41:09','2023-01-27 08:41:09');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (577,13,43,'Barito Kuala','2023-01-27 08:41:09','2023-01-27 08:41:09');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (578,13,143,'Hulu Sungai Selatan','2023-01-27 08:41:09','2023-01-27 08:41:09');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (579,13,144,'Hulu Sungai Tengah','2023-01-27 08:41:09','2023-01-27 08:41:09');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (580,13,145,'Hulu Sungai Utara','2023-01-27 08:41:09','2023-01-27 08:41:09');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (581,13,203,'Kotabaru','2023-01-27 08:41:09','2023-01-27 08:41:09');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (582,13,446,'Tabalong','2023-01-27 08:41:09','2023-01-27 08:41:09');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (583,13,452,'Tanah Bumbu','2023-01-27 08:41:09','2023-01-27 08:41:09');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (584,13,454,'Tanah Laut','2023-01-27 08:41:09','2023-01-27 08:41:09');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (585,13,466,'Tapin','2023-01-27 08:41:09','2023-01-27 08:41:09');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (586,14,44,'Barito Selatan','2023-01-27 08:41:10','2023-01-27 08:41:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (587,14,45,'Barito Timur','2023-01-27 08:41:10','2023-01-27 08:41:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (588,14,46,'Barito Utara','2023-01-27 08:41:10','2023-01-27 08:41:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (589,14,136,'Gunung Mas','2023-01-27 08:41:10','2023-01-27 08:41:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (590,14,167,'Kapuas','2023-01-27 08:41:10','2023-01-27 08:41:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (591,14,174,'Katingan','2023-01-27 08:41:10','2023-01-27 08:41:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (592,14,205,'Kotawaringin Barat','2023-01-27 08:41:10','2023-01-27 08:41:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (593,14,206,'Kotawaringin Timur','2023-01-27 08:41:10','2023-01-27 08:41:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (594,14,221,'Lamandau','2023-01-27 08:41:10','2023-01-27 08:41:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (595,14,296,'Murung Raya','2023-01-27 08:41:10','2023-01-27 08:41:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (596,14,326,'Palangka Raya','2023-01-27 08:41:10','2023-01-27 08:41:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (597,14,371,'Pulang Pisau','2023-01-27 08:41:10','2023-01-27 08:41:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (598,14,405,'Seruyan','2023-01-27 08:41:10','2023-01-27 08:41:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (599,14,432,'Sukamara','2023-01-27 08:41:10','2023-01-27 08:41:10');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (600,15,19,'Balikpapan','2023-01-27 08:41:11','2023-01-27 08:41:11');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (601,15,66,'Berau','2023-01-27 08:41:11','2023-01-27 08:41:11');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (602,15,89,'Bontang','2023-01-27 08:41:11','2023-01-27 08:41:11');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (603,15,214,'Kutai Barat','2023-01-27 08:41:11','2023-01-27 08:41:11');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (604,15,215,'Kutai Kartanegara','2023-01-27 08:41:11','2023-01-27 08:41:11');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (605,15,216,'Kutai Timur','2023-01-27 08:41:11','2023-01-27 08:41:11');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (606,15,341,'Paser','2023-01-27 08:41:11','2023-01-27 08:41:11');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (607,15,354,'Penajam Paser Utara','2023-01-27 08:41:11','2023-01-27 08:41:11');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (608,15,387,'Samarinda','2023-01-27 08:41:11','2023-01-27 08:41:11');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (609,16,96,'Bulungan (Bulongan)','2023-01-27 08:41:13','2023-01-27 08:41:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (610,16,257,'Malinau','2023-01-27 08:41:13','2023-01-27 08:41:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (611,16,311,'Nunukan','2023-01-27 08:41:13','2023-01-27 08:41:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (612,16,450,'Tana Tidung','2023-01-27 08:41:13','2023-01-27 08:41:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (613,16,467,'Tarakan','2023-01-27 08:41:13','2023-01-27 08:41:13');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (614,17,48,'Batam','2023-01-27 08:41:14','2023-01-27 08:41:14');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (615,17,71,'Bintan','2023-01-27 08:41:14','2023-01-27 08:41:14');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (616,17,172,'Karimun','2023-01-27 08:41:14','2023-01-27 08:41:14');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (617,17,184,'Kepulauan Anambas','2023-01-27 08:41:14','2023-01-27 08:41:14');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (618,17,237,'Lingga','2023-01-27 08:41:14','2023-01-27 08:41:14');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (619,17,302,'Natuna','2023-01-27 08:41:14','2023-01-27 08:41:14');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (620,17,462,'Tanjung Pinang','2023-01-27 08:41:14','2023-01-27 08:41:14');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (621,18,21,'Bandar Lampung','2023-01-27 08:41:15','2023-01-27 08:41:15');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (622,18,223,'Lampung Barat','2023-01-27 08:41:15','2023-01-27 08:41:15');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (623,18,224,'Lampung Selatan','2023-01-27 08:41:15','2023-01-27 08:41:15');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (624,18,225,'Lampung Tengah','2023-01-27 08:41:15','2023-01-27 08:41:15');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (625,18,226,'Lampung Timur','2023-01-27 08:41:15','2023-01-27 08:41:15');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (626,18,227,'Lampung Utara','2023-01-27 08:41:15','2023-01-27 08:41:15');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (627,18,282,'Mesuji','2023-01-27 08:41:15','2023-01-27 08:41:15');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (628,18,283,'Metro','2023-01-27 08:41:15','2023-01-27 08:41:15');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (629,18,355,'Pesawaran','2023-01-27 08:41:15','2023-01-27 08:41:15');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (630,18,356,'Pesisir Barat','2023-01-27 08:41:15','2023-01-27 08:41:15');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (631,18,368,'Pringsewu','2023-01-27 08:41:15','2023-01-27 08:41:15');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (632,18,458,'Tanggamus','2023-01-27 08:41:15','2023-01-27 08:41:15');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (633,18,490,'Tulang Bawang','2023-01-27 08:41:15','2023-01-27 08:41:15');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (634,18,491,'Tulang Bawang Barat','2023-01-27 08:41:15','2023-01-27 08:41:15');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (635,18,496,'Way Kanan','2023-01-27 08:41:15','2023-01-27 08:41:15');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (636,19,14,'Ambon','2023-01-27 08:41:17','2023-01-27 08:41:17');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (637,19,99,'Buru','2023-01-27 08:41:17','2023-01-27 08:41:17');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (638,19,100,'Buru Selatan','2023-01-27 08:41:17','2023-01-27 08:41:17');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (639,19,185,'Kepulauan Aru','2023-01-27 08:41:17','2023-01-27 08:41:17');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (640,19,258,'Maluku Barat Daya','2023-01-27 08:41:17','2023-01-27 08:41:17');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (641,19,259,'Maluku Tengah','2023-01-27 08:41:17','2023-01-27 08:41:17');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (642,19,260,'Maluku Tenggara','2023-01-27 08:41:17','2023-01-27 08:41:17');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (643,19,261,'Maluku Tenggara Barat','2023-01-27 08:41:17','2023-01-27 08:41:17');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (644,19,400,'Seram Bagian Barat','2023-01-27 08:41:17','2023-01-27 08:41:17');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (645,19,401,'Seram Bagian Timur','2023-01-27 08:41:17','2023-01-27 08:41:17');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (646,19,488,'Tual','2023-01-27 08:41:17','2023-01-27 08:41:17');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (647,20,138,'Halmahera Barat','2023-01-27 08:41:19','2023-01-27 08:41:19');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (648,20,139,'Halmahera Selatan','2023-01-27 08:41:19','2023-01-27 08:41:19');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (649,20,140,'Halmahera Tengah','2023-01-27 08:41:19','2023-01-27 08:41:19');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (650,20,141,'Halmahera Timur','2023-01-27 08:41:19','2023-01-27 08:41:19');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (651,20,142,'Halmahera Utara','2023-01-27 08:41:19','2023-01-27 08:41:19');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (652,20,191,'Kepulauan Sula','2023-01-27 08:41:19','2023-01-27 08:41:19');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (653,20,372,'Pulau Morotai','2023-01-27 08:41:19','2023-01-27 08:41:19');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (654,20,477,'Ternate','2023-01-27 08:41:19','2023-01-27 08:41:19');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (655,20,478,'Tidore Kepulauan','2023-01-27 08:41:19','2023-01-27 08:41:19');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (656,21,1,'Aceh Barat','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (657,21,2,'Aceh Barat Daya','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (658,21,3,'Aceh Besar','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (659,21,4,'Aceh Jaya','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (660,21,5,'Aceh Selatan','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (661,21,6,'Aceh Singkil','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (662,21,7,'Aceh Tamiang','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (663,21,8,'Aceh Tengah','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (664,21,9,'Aceh Tenggara','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (665,21,10,'Aceh Timur','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (666,21,11,'Aceh Utara','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (667,21,20,'Banda Aceh','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (668,21,59,'Bener Meriah','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (669,21,72,'Bireuen','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (670,21,127,'Gayo Lues','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (671,21,230,'Langsa','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (672,21,235,'Lhokseumawe','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (673,21,300,'Nagan Raya','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (674,21,358,'Pidie','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (675,21,359,'Pidie Jaya','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (676,21,384,'Sabang','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (677,21,414,'Simeulue','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (678,21,429,'Subulussalam','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (679,22,68,'Bima','2023-01-27 08:41:21','2023-01-27 08:41:21');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (680,22,69,'Bima','2023-01-27 08:41:21','2023-01-27 08:41:21');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (681,22,118,'Dompu','2023-01-27 08:41:21','2023-01-27 08:41:21');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (682,22,238,'Lombok Barat','2023-01-27 08:41:21','2023-01-27 08:41:21');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (683,22,239,'Lombok Tengah','2023-01-27 08:41:21','2023-01-27 08:41:21');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (684,22,240,'Lombok Timur','2023-01-27 08:41:21','2023-01-27 08:41:21');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (685,22,241,'Lombok Utara','2023-01-27 08:41:21','2023-01-27 08:41:21');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (686,22,276,'Mataram','2023-01-27 08:41:21','2023-01-27 08:41:21');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (687,22,438,'Sumbawa','2023-01-27 08:41:21','2023-01-27 08:41:21');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (688,22,439,'Sumbawa Barat','2023-01-27 08:41:21','2023-01-27 08:41:21');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (689,23,13,'Alor','2023-01-27 08:41:23','2023-01-27 08:41:23');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (690,23,58,'Belu','2023-01-27 08:41:23','2023-01-27 08:41:23');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (691,23,122,'Ende','2023-01-27 08:41:23','2023-01-27 08:41:23');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (692,23,125,'Flores Timur','2023-01-27 08:41:23','2023-01-27 08:41:23');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (693,23,212,'Kupang','2023-01-27 08:41:23','2023-01-27 08:41:23');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (694,23,213,'Kupang','2023-01-27 08:41:23','2023-01-27 08:41:23');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (695,23,234,'Lembata','2023-01-27 08:41:23','2023-01-27 08:41:23');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (696,23,269,'Manggarai','2023-01-27 08:41:23','2023-01-27 08:41:23');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (697,23,270,'Manggarai Barat','2023-01-27 08:41:23','2023-01-27 08:41:23');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (698,23,271,'Manggarai Timur','2023-01-27 08:41:23','2023-01-27 08:41:23');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (699,23,301,'Nagekeo','2023-01-27 08:41:23','2023-01-27 08:41:23');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (700,23,304,'Ngada','2023-01-27 08:41:23','2023-01-27 08:41:23');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (701,23,383,'Rote Ndao','2023-01-27 08:41:23','2023-01-27 08:41:23');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (702,23,385,'Sabu Raijua','2023-01-27 08:41:23','2023-01-27 08:41:23');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (703,23,412,'Sikka','2023-01-27 08:41:23','2023-01-27 08:41:23');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (704,23,434,'Sumba Barat','2023-01-27 08:41:23','2023-01-27 08:41:23');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (705,23,435,'Sumba Barat Daya','2023-01-27 08:41:23','2023-01-27 08:41:23');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (706,23,436,'Sumba Tengah','2023-01-27 08:41:23','2023-01-27 08:41:23');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (707,23,437,'Sumba Timur','2023-01-27 08:41:23','2023-01-27 08:41:23');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (708,23,479,'Timor Tengah Selatan','2023-01-27 08:41:23','2023-01-27 08:41:23');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (709,23,480,'Timor Tengah Utara','2023-01-27 08:41:23','2023-01-27 08:41:23');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (710,24,16,'Asmat','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (711,24,67,'Biak Numfor','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (712,24,90,'Boven Digoel','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (713,24,111,'Deiyai (Deliyai)','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (714,24,117,'Dogiyai','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (715,24,150,'Intan Jaya','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (716,24,157,'Jayapura','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (717,24,158,'Jayapura','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (718,24,159,'Jayawijaya','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (719,24,180,'Keerom','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (720,24,193,'Kepulauan Yapen (Yapen Waropen)','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (721,24,231,'Lanny Jaya','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (722,24,263,'Mamberamo Raya','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (723,24,264,'Mamberamo Tengah','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (724,24,274,'Mappi','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (725,24,281,'Merauke','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (726,24,284,'Mimika','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (727,24,299,'Nabire','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (728,24,303,'Nduga','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (729,24,335,'Paniai','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (730,24,347,'Pegunungan Bintang','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (731,24,373,'Puncak','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (732,24,374,'Puncak Jaya','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (733,24,392,'Sarmi','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (734,24,443,'Supiori','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (735,24,484,'Tolikara','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (736,24,495,'Waropen','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (737,24,499,'Yahukimo','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (738,24,500,'Yalimo','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (739,25,124,'Fakfak','2023-01-27 08:41:26','2023-01-27 08:41:26');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (740,25,165,'Kaimana','2023-01-27 08:41:26','2023-01-27 08:41:26');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (741,25,272,'Manokwari','2023-01-27 08:41:26','2023-01-27 08:41:26');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (742,25,273,'Manokwari Selatan','2023-01-27 08:41:26','2023-01-27 08:41:26');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (743,25,277,'Maybrat','2023-01-27 08:41:26','2023-01-27 08:41:26');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (744,25,346,'Pegunungan Arfak','2023-01-27 08:41:26','2023-01-27 08:41:26');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (745,25,378,'Raja Ampat','2023-01-27 08:41:26','2023-01-27 08:41:26');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (746,25,424,'Sorong','2023-01-27 08:41:26','2023-01-27 08:41:26');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (747,25,425,'Sorong','2023-01-27 08:41:26','2023-01-27 08:41:26');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (748,25,426,'Sorong Selatan','2023-01-27 08:41:26','2023-01-27 08:41:26');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (749,25,449,'Tambrauw','2023-01-27 08:41:26','2023-01-27 08:41:26');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (750,25,474,'Teluk Bintuni','2023-01-27 08:41:26','2023-01-27 08:41:26');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (751,25,475,'Teluk Wondama','2023-01-27 08:41:26','2023-01-27 08:41:26');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (752,26,60,'Bengkalis','2023-01-27 08:41:27','2023-01-27 08:41:27');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (753,26,120,'Dumai','2023-01-27 08:41:27','2023-01-27 08:41:27');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (754,26,147,'Indragiri Hilir','2023-01-27 08:41:27','2023-01-27 08:41:27');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (755,26,148,'Indragiri Hulu','2023-01-27 08:41:27','2023-01-27 08:41:27');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (756,26,166,'Kampar','2023-01-27 08:41:27','2023-01-27 08:41:27');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (757,26,187,'Kepulauan Meranti','2023-01-27 08:41:27','2023-01-27 08:41:27');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (758,26,207,'Kuantan Singingi','2023-01-27 08:41:27','2023-01-27 08:41:27');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (759,26,350,'Pekanbaru','2023-01-27 08:41:27','2023-01-27 08:41:27');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (760,26,351,'Pelalawan','2023-01-27 08:41:27','2023-01-27 08:41:27');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (761,26,381,'Rokan Hilir','2023-01-27 08:41:27','2023-01-27 08:41:27');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (762,26,382,'Rokan Hulu','2023-01-27 08:41:27','2023-01-27 08:41:27');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (763,26,406,'Siak','2023-01-27 08:41:27','2023-01-27 08:41:27');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (764,27,253,'Majene','2023-01-27 08:41:28','2023-01-27 08:41:28');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (765,27,262,'Mamasa','2023-01-27 08:41:28','2023-01-27 08:41:28');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (766,27,265,'Mamuju','2023-01-27 08:41:28','2023-01-27 08:41:28');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (767,27,266,'Mamuju Utara','2023-01-27 08:41:28','2023-01-27 08:41:28');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (768,27,362,'Polewali Mandar','2023-01-27 08:41:28','2023-01-27 08:41:28');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (769,28,38,'Bantaeng','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (770,28,47,'Barru','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (771,28,87,'Bone','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (772,28,95,'Bulukumba','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (773,28,123,'Enrekang','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (774,28,132,'Gowa','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (775,28,162,'Jeneponto','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (776,28,244,'Luwu','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (777,28,245,'Luwu Timur','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (778,28,246,'Luwu Utara','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (779,28,254,'Makassar','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (780,28,275,'Maros','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (781,28,328,'Palopo','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (782,28,333,'Pangkajene Kepulauan','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (783,28,336,'Parepare','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (784,28,360,'Pinrang','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (785,28,396,'Selayar (Kepulauan Selayar)','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (786,28,408,'Sidenreng Rappang/Rapang','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (787,28,416,'Sinjai','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (788,28,423,'Soppeng','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (789,28,448,'Takalar','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (790,28,451,'Tana Toraja','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (791,28,486,'Toraja Utara','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (792,28,493,'Wajo','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (793,29,25,'Banggai','2023-01-27 08:41:30','2023-01-27 08:41:30');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (794,29,26,'Banggai Kepulauan','2023-01-27 08:41:30','2023-01-27 08:41:30');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (795,29,98,'Buol','2023-01-27 08:41:30','2023-01-27 08:41:30');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (796,29,119,'Donggala','2023-01-27 08:41:30','2023-01-27 08:41:30');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (797,29,291,'Morowali','2023-01-27 08:41:30','2023-01-27 08:41:30');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (798,29,329,'Palu','2023-01-27 08:41:31','2023-01-27 08:41:31');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (799,29,338,'Parigi Moutong','2023-01-27 08:41:31','2023-01-27 08:41:31');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (800,29,366,'Poso','2023-01-27 08:41:31','2023-01-27 08:41:31');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (801,29,410,'Sigi','2023-01-27 08:41:31','2023-01-27 08:41:31');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (802,29,482,'Tojo Una-Una','2023-01-27 08:41:31','2023-01-27 08:41:31');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (803,29,483,'Toli-Toli','2023-01-27 08:41:31','2023-01-27 08:41:31');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (804,30,53,'Bau-Bau','2023-01-27 08:41:32','2023-01-27 08:41:32');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (805,30,85,'Bombana','2023-01-27 08:41:32','2023-01-27 08:41:32');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (806,30,101,'Buton','2023-01-27 08:41:32','2023-01-27 08:41:32');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (807,30,102,'Buton Utara','2023-01-27 08:41:32','2023-01-27 08:41:32');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (808,30,182,'Kendari','2023-01-27 08:41:32','2023-01-27 08:41:32');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (809,30,198,'Kolaka','2023-01-27 08:41:32','2023-01-27 08:41:32');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (810,30,199,'Kolaka Utara','2023-01-27 08:41:32','2023-01-27 08:41:32');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (811,30,200,'Konawe','2023-01-27 08:41:32','2023-01-27 08:41:32');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (812,30,201,'Konawe Selatan','2023-01-27 08:41:32','2023-01-27 08:41:32');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (813,30,202,'Konawe Utara','2023-01-27 08:41:32','2023-01-27 08:41:32');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (814,30,295,'Muna','2023-01-27 08:41:32','2023-01-27 08:41:32');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (815,30,494,'Wakatobi','2023-01-27 08:41:32','2023-01-27 08:41:32');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (816,31,73,'Bitung','2023-01-27 08:41:33','2023-01-27 08:41:33');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (817,31,81,'Bolaang Mongondow (Bolmong)','2023-01-27 08:41:33','2023-01-27 08:41:33');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (818,31,82,'Bolaang Mongondow Selatan','2023-01-27 08:41:33','2023-01-27 08:41:33');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (819,31,83,'Bolaang Mongondow Timur','2023-01-27 08:41:33','2023-01-27 08:41:33');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (820,31,84,'Bolaang Mongondow Utara','2023-01-27 08:41:33','2023-01-27 08:41:33');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (821,31,188,'Kepulauan Sangihe','2023-01-27 08:41:33','2023-01-27 08:41:33');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (822,31,190,'Kepulauan Siau Tagulandang Biaro (Sitaro)','2023-01-27 08:41:33','2023-01-27 08:41:33');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (823,31,192,'Kepulauan Talaud','2023-01-27 08:41:33','2023-01-27 08:41:33');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (824,31,204,'Kotamobagu','2023-01-27 08:41:33','2023-01-27 08:41:33');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (825,31,267,'Manado','2023-01-27 08:41:33','2023-01-27 08:41:33');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (826,31,285,'Minahasa','2023-01-27 08:41:33','2023-01-27 08:41:33');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (827,31,286,'Minahasa Selatan','2023-01-27 08:41:33','2023-01-27 08:41:33');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (828,31,287,'Minahasa Tenggara','2023-01-27 08:41:33','2023-01-27 08:41:33');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (829,31,288,'Minahasa Utara','2023-01-27 08:41:33','2023-01-27 08:41:33');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (830,31,485,'Tomohon','2023-01-27 08:41:33','2023-01-27 08:41:33');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (831,32,12,'Agam','2023-01-27 08:41:34','2023-01-27 08:41:34');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (832,32,93,'Bukittinggi','2023-01-27 08:41:34','2023-01-27 08:41:34');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (833,32,116,'Dharmasraya','2023-01-27 08:41:34','2023-01-27 08:41:34');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (834,32,186,'Kepulauan Mentawai','2023-01-27 08:41:34','2023-01-27 08:41:34');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (835,32,236,'Lima Puluh Koto/Kota','2023-01-27 08:41:34','2023-01-27 08:41:34');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (836,32,318,'Padang','2023-01-27 08:41:34','2023-01-27 08:41:34');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (837,32,321,'Padang Panjang','2023-01-27 08:41:34','2023-01-27 08:41:34');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (838,32,322,'Padang Pariaman','2023-01-27 08:41:34','2023-01-27 08:41:34');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (839,32,337,'Pariaman','2023-01-27 08:41:34','2023-01-27 08:41:34');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (840,32,339,'Pasaman','2023-01-27 08:41:34','2023-01-27 08:41:34');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (841,32,340,'Pasaman Barat','2023-01-27 08:41:34','2023-01-27 08:41:34');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (842,32,345,'Payakumbuh','2023-01-27 08:41:34','2023-01-27 08:41:34');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (843,32,357,'Pesisir Selatan','2023-01-27 08:41:34','2023-01-27 08:41:34');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (844,32,394,'Sawah Lunto','2023-01-27 08:41:34','2023-01-27 08:41:34');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (845,32,411,'Sijunjung (Sawah Lunto Sijunjung)','2023-01-27 08:41:34','2023-01-27 08:41:34');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (846,32,420,'Solok','2023-01-27 08:41:34','2023-01-27 08:41:34');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (847,32,421,'Solok','2023-01-27 08:41:34','2023-01-27 08:41:34');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (848,32,422,'Solok Selatan','2023-01-27 08:41:34','2023-01-27 08:41:34');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (849,32,453,'Tanah Datar','2023-01-27 08:41:34','2023-01-27 08:41:34');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (850,33,40,'Banyuasin','2023-01-27 08:41:37','2023-01-27 08:41:37');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (851,33,121,'Empat Lawang','2023-01-27 08:41:37','2023-01-27 08:41:37');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (852,33,220,'Lahat','2023-01-27 08:41:37','2023-01-27 08:41:37');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (853,33,242,'Lubuk Linggau','2023-01-27 08:41:37','2023-01-27 08:41:37');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (854,33,292,'Muara Enim','2023-01-27 08:41:37','2023-01-27 08:41:37');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (855,33,297,'Musi Banyuasin','2023-01-27 08:41:37','2023-01-27 08:41:37');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (856,33,298,'Musi Rawas','2023-01-27 08:41:37','2023-01-27 08:41:37');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (857,33,312,'Ogan Ilir','2023-01-27 08:41:37','2023-01-27 08:41:37');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (858,33,313,'Ogan Komering Ilir','2023-01-27 08:41:37','2023-01-27 08:41:37');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (859,33,314,'Ogan Komering Ulu','2023-01-27 08:41:37','2023-01-27 08:41:37');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (860,33,315,'Ogan Komering Ulu Selatan','2023-01-27 08:41:37','2023-01-27 08:41:37');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (861,33,316,'Ogan Komering Ulu Timur','2023-01-27 08:41:37','2023-01-27 08:41:37');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (862,33,324,'Pagar Alam','2023-01-27 08:41:37','2023-01-27 08:41:37');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (863,33,327,'Palembang','2023-01-27 08:41:37','2023-01-27 08:41:37');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (864,33,367,'Prabumulih','2023-01-27 08:41:37','2023-01-27 08:41:37');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (865,34,15,'Asahan','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (866,34,52,'Batu Bara','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (867,34,70,'Binjai','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (868,34,110,'Dairi','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (869,34,112,'Deli Serdang','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (870,34,137,'Gunungsitoli','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (871,34,146,'Humbang Hasundutan','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (872,34,173,'Karo','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (873,34,217,'Labuhan Batu','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (874,34,218,'Labuhan Batu Selatan','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (875,34,219,'Labuhan Batu Utara','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (876,34,229,'Langkat','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (877,34,268,'Mandailing Natal','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (878,34,278,'Medan','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (879,34,307,'Nias','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (880,34,308,'Nias Barat','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (881,34,309,'Nias Selatan','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (882,34,310,'Nias Utara','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (883,34,319,'Padang Lawas','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (884,34,320,'Padang Lawas Utara','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (885,34,323,'Padang Sidempuan','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (886,34,325,'Pakpak Bharat','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (887,34,353,'Pematang Siantar','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (888,34,389,'Samosir','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (889,34,404,'Serdang Bedagai','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (890,34,407,'Sibolga','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (891,34,413,'Simalungun','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (892,34,459,'Tanjung Balai','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (893,34,463,'Tapanuli Selatan','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (894,34,464,'Tapanuli Tengah','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (895,34,465,'Tapanuli Utara','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (896,34,470,'Tebing Tinggi','2023-01-27 08:41:38','2023-01-27 08:41:38');
insert  into `cities`(`id`,`province_id`,`city_id`,`name`,`created_at`,`updated_at`) values (897,34,481,'Toba Samosir','2023-01-27 08:41:38','2023-01-27 08:41:38');

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2014_10_12_000000_create_users_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (2,'2014_10_12_100000_create_password_resets_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (3,'2017_05_02_140432_create_provinces_tables',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (4,'2017_05_02_140444_create_regencies_tables',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (5,'2017_05_02_142019_create_districts_tables',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (6,'2017_05_02_143454_create_villages_tables',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (7,'2019_08_19_000000_create_failed_jobs_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (8,'2019_12_14_000001_create_personal_access_tokens_table',1);
insert  into `migrations`(`id`,`migration`,`batch`) values (9,'2022_08_07_124013_create_categories_table',2);
insert  into `migrations`(`id`,`migration`,`batch`) values (10,'2022_08_07_124438_create_products_table',2);
insert  into `migrations`(`id`,`migration`,`batch`) values (11,'2022_08_07_124627_create_product_galleries_table',2);
insert  into `migrations`(`id`,`migration`,`batch`) values (12,'2022_08_07_124759_create_carts_table',2);
insert  into `migrations`(`id`,`migration`,`batch`) values (13,'2022_08_07_125408_create_transactions_table',2);
insert  into `migrations`(`id`,`migration`,`batch`) values (14,'2022_08_07_125828_create_transaction_details_table',2);
insert  into `migrations`(`id`,`migration`,`batch`) values (15,'2022_08_08_025913_add_slug_to_products_table',3);
insert  into `migrations`(`id`,`migration`,`batch`) values (17,'2022_08_14_065308_drop_resi_to_transactions',5);
insert  into `migrations`(`id`,`migration`,`batch`) values (20,'2022_08_14_063820_add_transactions_to_transactions',6);
insert  into `migrations`(`id`,`migration`,`batch`) values (21,'2022_08_15_145911_add_name_to_transactions',7);
insert  into `migrations`(`id`,`migration`,`batch`) values (23,'2022_09_14_131356_add_shipping_to_transactions',8);
insert  into `migrations`(`id`,`migration`,`batch`) values (24,'2023_01_27_193044_create_returs_table',9);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `product_galleries` */

DROP TABLE IF EXISTS `product_galleries`;

CREATE TABLE `product_galleries` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `photos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_galleries_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `product_galleries` */

insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (1,'assets/products/V4g9EkW0lXVo3WEdakw2yBWo8gzbuthCg9anb8mk.jpg',1,'2023-01-27 07:01:34','2023-01-27 07:01:34','2023-01-27 07:01:34');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (2,'assets/products/wfJe6R7B8JLsIvISrYnla0x8nnkKDCMlyE7shiSK.jpg',1,'2023-01-27 07:01:34','2023-01-27 07:01:34','2023-01-27 07:01:34');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (3,'assets/products/ydcYMr3wqFUfShf1ZT689Shrrz0uK9vebWNUA9yC.jpg',1,'2023-01-27 07:01:34','2023-01-27 07:01:34','2023-01-27 07:01:34');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (4,'assets/products/pV18RWc493t8MfqaaL3DYjrHYWUS75RUgy40cXz8.jpg',1,'2023-01-27 07:01:34','2023-01-27 07:01:34','2023-01-27 07:01:34');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (5,'assets/products/9PwrSox1JmiSCUdoe1KK9nzvd8eYWaxGQxPUJ1hw.jpg',1,'2023-01-27 07:01:34','2023-01-27 07:01:34','2022-08-11 15:15:26');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (6,'assets/products/FOwCaxfAqMpYmrJwVmFvcHQwIzRqWCMxhKi3DTvc.jpg',1,'2023-01-27 07:01:34','2023-01-27 07:01:34','2023-01-27 17:23:01');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (7,'assets/products/Hv35DHeQwOiN4J3dzvRqMn56GPToBWnWg2W2SKCH.jpg',1,'2023-01-27 07:01:34','2023-01-27 07:01:34','2023-01-27 17:23:05');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (8,'assets/products/cS1FsXHcyzLlWNIFYdf2mXHDLe12Dd4dchDMoqKJ.jpg',1,'2023-01-27 07:01:34','2023-01-27 07:01:34','2023-01-27 07:01:24');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (9,'assets/products/ybas3xHlzKtiFCAmzlUQmdhWZ5U0jt77RKX0MxLy.png',1,'2023-01-27 07:01:34','2023-01-27 07:01:34','2023-01-27 07:01:43');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (10,'assets/products/pymveFPjTbIr3vWqhi3JSDy4bKgST2DTuACqwDoH.png',1,'2023-01-27 07:01:34','2023-01-27 07:01:56','2023-01-27 07:02:01');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (11,'assets/products/pymveFPjTbIr3vWqhi3JSDy4bKgST2DTuACqwDoH.png',1,'2023-01-27 07:01:34','2023-01-27 07:02:16','2023-01-27 10:04:20');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (12,'assets/products/FOwCaxfAqMpYmrJwVmFvcHQwIzRqWCMxhKi3DTvc.jpg',1,'2023-01-27 07:01:34','2023-01-27 10:05:31','2023-01-27 17:23:09');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (13,'assets/products/taufik.jpg',1,'2023-01-27 07:01:34','2023-01-27 10:11:26','2023-01-27 10:43:23');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (14,'assets/products/KX9zcu48yqa6yu9MY9o4evQ2S3xiBcZ4Uj9wtN6Y.jpg',1,'2023-01-27 07:01:34','2023-01-27 10:12:06','2023-01-27 10:22:12');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (15,'assets/products/sWPRYVNUG57YVFHZhL4YSpTI4cph1gJR03yr3FnQ.jpg',1,'2023-01-27 07:01:34','2023-01-27 10:20:28','2023-01-27 10:22:08');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (16,'assets/products/data.jpg',1,'2023-01-27 07:01:34','2023-01-27 10:22:21','2023-01-27 10:43:18');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (17,'assets/products/aNzzQB4uwKx3kaKt8ZUZqiNowPvA3pXhkM7Md75s.jpg',1,'2023-01-27 07:01:34','2023-01-27 10:50:07','2023-01-27 16:21:11');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (18,'assets/products/YkXJgjKlW633MVpzrPlIKF9mM2xM5gcWyAPzuOEp.jpg',1,'2023-01-27 07:01:34','2023-01-27 10:57:31','2023-01-27 11:03:09');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (19,'assets/products/PiCZ7EReKDZgwBWVTrTkx2ZA2N8UsiiPCOfENRC6.jpg',1,'2023-01-27 07:01:34','2023-01-27 10:57:44','2023-01-27 11:03:04');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (20,'assets/products/58N0Vy5B1hAPcmJwohm8VmspHGvbqcporPffbDzc.jpg',1,'2023-01-27 07:01:34','2023-01-27 11:02:54','2023-01-27 11:02:59');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (21,'assets/products/1iLWsKdX7eH8W7dJV4pmGq8DTsDOxG56jAZLX55f.jpg',1,NULL,'2023-01-27 17:23:27','2023-01-27 17:23:27');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (22,'assets/products/fBVqjCBAjqUkU4ZCQ0ONVtXJluDc1DkM8Ua6egAP.jpg',1,NULL,'2023-01-27 17:24:00','2023-01-27 17:24:00');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (23,'assets/products/Kxg0plYtXeOFEw0jMjTUOnglNX1y0KNRwS0QLo82.jpg',1,NULL,'2023-01-27 17:24:07','2023-01-27 17:24:07');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (24,'assets/products/63CfKQg0Kcibht4BCpObEZqYPVQNi74fE1YMBQ12.jpg',2,NULL,'2023-01-27 20:38:25','2023-01-27 20:38:25');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (25,'assets/products/fdRz5QLpbirfZ11e064KhWFVTPqRfXE3nnB66I6E.jpg',3,NULL,'2023-01-27 20:39:15','2023-01-27 20:39:15');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (26,'assets/products/P1MMPimrQupmCqLFCCQ4wp3I8neEAI0Mxsq8gSiJ.jpg',3,NULL,'2023-01-27 20:39:28','2023-01-27 20:39:28');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (27,'assets/products/AD0MDNJWcY8jx6Hy0Fzjfvat3jXmrwlR7CkOmWDt.jpg',3,NULL,'2023-01-27 20:39:37','2023-01-27 20:39:37');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (28,'assets/products/0vQqh9B74ZoGsRXeL4xLOMcoRySwAHRHGLQvXQkN.jpg',4,NULL,'2023-01-27 20:40:34','2023-01-27 20:40:34');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (29,'assets/products/ThAKa042DbTb26Z6vpDNCBtre8SndjCldUvXQPoF.jpg',4,NULL,'2023-01-27 20:40:45','2023-01-27 20:40:45');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (30,'assets/products/Mnhd56cOmWd478EZPPGFQiNG9WDrelGGNLZema86.jpg',4,NULL,'2023-01-27 20:40:52','2023-01-27 20:40:52');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (31,'assets/products/YWuCr5q20l2GJc8HxxljzQIKj4YrY0ZoD9W2IoCe.jpg',5,NULL,'2023-01-27 20:41:54','2023-01-27 20:41:54');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (32,'assets/products/bEHmdMMvaJ0kKEQT1syH5PwH0vpGR11TPKobmlNA.jpg',5,NULL,'2023-01-27 20:42:05','2023-01-27 20:42:05');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (33,'assets/products/tWN01H6lsCC0q1GlmcltpmTJBSi0Gx93izIERF8u.jpg',5,NULL,'2023-01-27 20:42:14','2023-01-27 20:42:14');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (34,'assets/products/NY00oV3XyfJE29OfwL2RiBJDSAN9yzd45ObteG7p.jpg',6,NULL,'2023-01-27 20:44:19','2023-01-27 20:44:19');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (35,'assets/products/o00baPIS8TbEJFeA8CKcibjnpgWyVfXZWasmRUc9.jpg',6,NULL,'2023-01-27 20:44:34','2023-01-27 20:44:34');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (36,'assets/products/lzlQ4mGRh2l4XdkRk41gadxgSD3iywek9O4zMcvb.jpg',6,NULL,'2023-01-27 20:46:29','2023-01-27 20:46:29');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (37,'assets/products/dNMUehIYAWqKub2YhjOxHwwzIQWoqTV0UTpDEhHN.jpg',7,NULL,'2023-01-27 20:50:29','2023-01-27 20:50:29');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (38,'assets/products/5UgDQMj1ihhnq1pmn1wFO1ByTbx4lNeqrRGYzZUW.jpg',7,NULL,'2023-01-27 20:50:42','2023-01-27 20:50:42');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (39,'assets/products/XAS9MIEuh1mjoiU6f1LEfxnbM4dZhFuenOIE0KEa.jpg',7,NULL,'2023-01-27 20:50:50','2023-01-27 20:50:50');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (40,'assets/products/pVFpAgw6Qk4K1BtisDsKFgLhttZLBOjLyUu7oqEc.jpg',8,NULL,'2023-01-27 20:52:01','2023-01-27 20:52:01');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (41,'assets/products/wjyqvOd60iYZ0slJIYP1H2fSNXDkeLcWipChIi4v.jpg',8,NULL,'2023-01-27 20:52:17','2023-01-27 20:52:17');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (42,'assets/products/E1mfOXk33bcbB8YIjK3xyrq83H9gxVE9X29rObye.jpg',8,NULL,'2023-01-27 20:52:50','2023-01-27 20:52:50');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (43,'assets/products/JZdIyRJGPuCVRNv07hzLKCDsMXOH5x2QEdldMyxQ.jpg',9,NULL,'2023-01-27 20:53:32','2023-01-27 20:53:32');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (44,'assets/products/f0SDL9RzyjJBfJh3uvouqOJaRXKlMf3nbl0o82yY.jpg',9,NULL,'2023-01-27 20:53:44','2023-01-27 20:53:44');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (45,'assets/products/wz9vfGxjSLvzzdgZQf0gNSgGx6QxTbCiZldaCnvs.jpg',9,NULL,'2023-01-27 20:53:53','2023-01-27 20:53:53');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (46,'assets/products/Q3nfC1RAdReEDfCpX80UfaoVwl7kSzS4IBOQ0ht7.jpg',10,NULL,'2023-01-27 20:54:29','2023-01-27 20:54:29');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (47,'assets/products/yphzTZj0y9yiKhqIiV0noqd8KAUaxX7Sb8f9Mwg4.jpg',10,NULL,'2023-01-27 20:54:40','2023-01-27 20:54:40');
insert  into `product_galleries`(`id`,`photos`,`product_id`,`deleted_at`,`created_at`,`updated_at`) values (48,'assets/products/ynbiMXNM4BawUYcTquE0WPpoaqGpcpMYh4xRMP2D.jpg',10,NULL,'2023-01-27 20:54:48','2023-01-27 20:54:48');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_id` (`categories_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`slug`,`categories_id`,`price`,`quantity`,`description`,`deleted_at`,`created_at`,`updated_at`) values (1,'Jaket Putih Futton Rainy','jaket-putih-futton-rainy',1,450000,12,'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummyd not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 19</p>',NULL,'2022-08-08 15:29:26','2023-02-07 01:10:46');
insert  into `products`(`id`,`name`,`slug`,`categories_id`,`price`,`quantity`,`description`,`deleted_at`,`created_at`,`updated_at`) values (2,'Kaos Hitam Polos','kaos-hitam-polos',2,78000,20,'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>',NULL,'2023-01-27 20:38:25','2023-02-07 03:07:20');
insert  into `products`(`id`,`name`,`slug`,`categories_id`,`price`,`quantity`,`description`,`deleted_at`,`created_at`,`updated_at`) values (3,'Kaos Putih World Wide','kaos-putih-world-wide',2,88000,18,'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>',NULL,'2023-01-27 20:39:15','2023-01-27 20:43:19');
insert  into `products`(`id`,`name`,`slug`,`categories_id`,`price`,`quantity`,`description`,`deleted_at`,`created_at`,`updated_at`) values (4,'Blazer Maxime Kunyit','blazer-maxime-kunyit',1,241000,38,'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>',NULL,'2023-01-27 20:40:34','2023-01-27 20:43:05');
insert  into `products`(`id`,`name`,`slug`,`categories_id`,`price`,`quantity`,`description`,`deleted_at`,`created_at`,`updated_at`) values (5,'Hoodie Hitam Cattus Van','hoodie-hitam-cattus-van',3,152000,10,'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>',NULL,'2023-01-27 20:41:54','2023-01-27 20:41:54');
insert  into `products`(`id`,`name`,`slug`,`categories_id`,`price`,`quantity`,`description`,`deleted_at`,`created_at`,`updated_at`) values (6,'Kaos Naruto','kaos-naruto',2,89000,10,'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>',NULL,'2023-01-27 20:44:19','2023-01-27 20:44:19');
insert  into `products`(`id`,`name`,`slug`,`categories_id`,`price`,`quantity`,`description`,`deleted_at`,`created_at`,`updated_at`) values (7,'Blazer Overshift','blazer-overshift',1,170000,10,'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>',NULL,'2023-01-27 20:50:29','2023-01-27 20:50:29');
insert  into `products`(`id`,`name`,`slug`,`categories_id`,`price`,`quantity`,`description`,`deleted_at`,`created_at`,`updated_at`) values (8,'Hoodie Pocketmen','hoodie-pocketmen',1,170000,10,'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>',NULL,'2023-01-27 20:52:01','2023-01-27 20:52:01');
insert  into `products`(`id`,`name`,`slug`,`categories_id`,`price`,`quantity`,`description`,`deleted_at`,`created_at`,`updated_at`) values (9,'Hoodie Printedh','hoodie-printedh',1,170000,10,'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>',NULL,'2023-01-27 20:53:32','2023-01-27 20:53:32');
insert  into `products`(`id`,`name`,`slug`,`categories_id`,`price`,`quantity`,`description`,`deleted_at`,`created_at`,`updated_at`) values (10,'Celana Wideleg','celana-wideleg',4,190000,10,'<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</p>',NULL,'2023-01-27 20:54:29','2023-01-27 20:54:29');

/*Table structure for table `provinces` */

DROP TABLE IF EXISTS `provinces`;

CREATE TABLE `provinces` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `province_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `provinces` */

insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (1,1,'Bali','2023-01-27 08:39:18','2023-01-27 08:39:18');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (2,2,'Bangka Belitung','2023-01-27 08:39:25','2023-01-27 08:39:25');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (3,3,'Banten','2023-01-27 08:39:26','2023-01-27 08:39:26');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (4,4,'Bengkulu','2023-01-27 08:39:27','2023-01-27 08:39:27');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (5,5,'DI Yogyakarta','2023-01-27 08:39:31','2023-01-27 08:39:31');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (6,6,'DKI Jakarta','2023-01-27 08:39:33','2023-01-27 08:39:33');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (7,7,'Gorontalo','2023-01-27 08:39:37','2023-01-27 08:39:37');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (8,8,'Jambi','2023-01-27 08:39:39','2023-01-27 08:39:39');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (9,9,'Jawa Barat','2023-01-27 08:39:40','2023-01-27 08:39:40');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (10,10,'Jawa Tengah','2023-01-27 08:39:41','2023-01-27 08:39:41');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (11,11,'Jawa Timur','2023-01-27 08:39:45','2023-01-27 08:39:45');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (12,12,'Kalimantan Barat','2023-01-27 08:39:47','2023-01-27 08:39:47');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (13,13,'Kalimantan Selatan','2023-01-27 08:39:48','2023-01-27 08:39:48');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (14,14,'Kalimantan Tengah','2023-01-27 08:39:51','2023-01-27 08:39:51');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (15,15,'Kalimantan Timur','2023-01-27 08:39:52','2023-01-27 08:39:52');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (16,16,'Kalimantan Utara','2023-01-27 08:39:53','2023-01-27 08:39:53');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (17,17,'Kepulauan Riau','2023-01-27 08:39:55','2023-01-27 08:39:55');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (18,18,'Lampung','2023-01-27 08:39:56','2023-01-27 08:39:56');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (19,19,'Maluku','2023-01-27 08:39:57','2023-01-27 08:39:57');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (20,20,'Maluku Utara','2023-01-27 08:39:58','2023-01-27 08:39:58');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (21,21,'Nanggroe Aceh Darussalam (NAD)','2023-01-27 08:39:59','2023-01-27 08:39:59');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (22,22,'Nusa Tenggara Barat (NTB)','2023-01-27 08:40:02','2023-01-27 08:40:02');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (23,23,'Nusa Tenggara Timur (NTT)','2023-01-27 08:40:03','2023-01-27 08:40:03');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (24,24,'Papua','2023-01-27 08:40:04','2023-01-27 08:40:04');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (25,25,'Papua Barat','2023-01-27 08:40:06','2023-01-27 08:40:06');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (26,26,'Riau','2023-01-27 08:40:07','2023-01-27 08:40:07');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (27,27,'Sulawesi Barat','2023-01-27 08:40:10','2023-01-27 08:40:10');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (28,28,'Sulawesi Selatan','2023-01-27 08:40:12','2023-01-27 08:40:12');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (29,29,'Sulawesi Tengah','2023-01-27 08:40:13','2023-01-27 08:40:13');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (30,1,'Bali','2023-01-27 08:40:49','2023-01-27 08:40:49');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (31,2,'Bangka Belitung','2023-01-27 08:40:51','2023-01-27 08:40:51');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (32,3,'Banten','2023-01-27 08:40:52','2023-01-27 08:40:52');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (33,4,'Bengkulu','2023-01-27 08:40:53','2023-01-27 08:40:53');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (34,5,'DI Yogyakarta','2023-01-27 08:40:54','2023-01-27 08:40:54');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (35,6,'DKI Jakarta','2023-01-27 08:40:56','2023-01-27 08:40:56');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (36,7,'Gorontalo','2023-01-27 08:40:57','2023-01-27 08:40:57');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (37,8,'Jambi','2023-01-27 08:40:59','2023-01-27 08:40:59');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (38,9,'Jawa Barat','2023-01-27 08:41:00','2023-01-27 08:41:00');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (39,10,'Jawa Tengah','2023-01-27 08:41:02','2023-01-27 08:41:02');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (40,11,'Jawa Timur','2023-01-27 08:41:05','2023-01-27 08:41:05');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (41,12,'Kalimantan Barat','2023-01-27 08:41:06','2023-01-27 08:41:06');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (42,13,'Kalimantan Selatan','2023-01-27 08:41:08','2023-01-27 08:41:08');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (43,14,'Kalimantan Tengah','2023-01-27 08:41:09','2023-01-27 08:41:09');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (44,15,'Kalimantan Timur','2023-01-27 08:41:10','2023-01-27 08:41:10');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (45,16,'Kalimantan Utara','2023-01-27 08:41:11','2023-01-27 08:41:11');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (46,17,'Kepulauan Riau','2023-01-27 08:41:13','2023-01-27 08:41:13');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (47,18,'Lampung','2023-01-27 08:41:14','2023-01-27 08:41:14');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (48,19,'Maluku','2023-01-27 08:41:15','2023-01-27 08:41:15');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (49,20,'Maluku Utara','2023-01-27 08:41:17','2023-01-27 08:41:17');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (50,21,'Nanggroe Aceh Darussalam (NAD)','2023-01-27 08:41:19','2023-01-27 08:41:19');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (51,22,'Nusa Tenggara Barat (NTB)','2023-01-27 08:41:20','2023-01-27 08:41:20');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (52,23,'Nusa Tenggara Timur (NTT)','2023-01-27 08:41:21','2023-01-27 08:41:21');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (53,24,'Papua','2023-01-27 08:41:23','2023-01-27 08:41:23');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (54,25,'Papua Barat','2023-01-27 08:41:24','2023-01-27 08:41:24');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (55,26,'Riau','2023-01-27 08:41:26','2023-01-27 08:41:26');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (56,27,'Sulawesi Barat','2023-01-27 08:41:27','2023-01-27 08:41:27');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (57,28,'Sulawesi Selatan','2023-01-27 08:41:28','2023-01-27 08:41:28');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (58,29,'Sulawesi Tengah','2023-01-27 08:41:29','2023-01-27 08:41:29');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (59,30,'Sulawesi Tenggara','2023-01-27 08:41:31','2023-01-27 08:41:31');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (60,31,'Sulawesi Utara','2023-01-27 08:41:32','2023-01-27 08:41:32');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (61,32,'Sumatera Barat','2023-01-27 08:41:33','2023-01-27 08:41:33');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (62,33,'Sumatera Selatan','2023-01-27 08:41:34','2023-01-27 08:41:34');
insert  into `provinces`(`id`,`province_id`,`name`,`created_at`,`updated_at`) values (63,34,'Sumatera Utara','2023-01-27 08:41:37','2023-01-27 08:41:37');

/*Table structure for table `returs` */

DROP TABLE IF EXISTS `returs`;

CREATE TABLE `returs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` bigint DEFAULT NULL,
  `transaction_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_shop` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transaction_id` (`transaction_id`),
  CONSTRAINT `returs_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `returs` */

insert  into `returs`(`id`,`transaction_id`,`transaction_code`,`user_id`,`description`,`photo`,`comment_shop`,`deleted_at`,`created_at`,`updated_at`) values (1,6,'KODE-01',5,'DESCRIPTION\r\n','1','1',NULL,'2023-01-27 17:28:11','2023-01-27 17:28:11');
insert  into `returs`(`id`,`transaction_id`,`transaction_code`,`user_id`,`description`,`photo`,`comment_shop`,`deleted_at`,`created_at`,`updated_at`) values (2,NULL,'TRX-51212',5,'sasas','assets/retur/H3abw1qAYmeREJQlPv3me97QBgIfevZ7A6si6aVN.jpg',NULL,NULL,'2023-02-07 02:03:05','2023-02-07 02:03:05');
insert  into `returs`(`id`,`transaction_id`,`transaction_code`,`user_id`,`description`,`photo`,`comment_shop`,`deleted_at`,`created_at`,`updated_at`) values (3,NULL,'TRX-51212',5,'sasas','assets/retur/ziblw9PTbd3Avnn9ZlX1sHl9lFyaVJ49ganFj5RC.jpg',NULL,NULL,'2023-02-07 02:03:45','2023-02-07 02:03:45');
insert  into `returs`(`id`,`transaction_id`,`transaction_code`,`user_id`,`description`,`photo`,`comment_shop`,`deleted_at`,`created_at`,`updated_at`) values (4,NULL,'TRX-56796',5,'sepatu haruse nomor 39 maah 40.','assets/retur/C5qlMOEMIxWbjNYRvZE59ABS7jLsY4zMfEG8LGdx.jpg',NULL,NULL,'2023-02-07 02:04:27','2023-02-07 02:04:27');
insert  into `returs`(`id`,`transaction_id`,`transaction_code`,`user_id`,`description`,`photo`,`comment_shop`,`deleted_at`,`created_at`,`updated_at`) values (5,NULL,'TRX-70012',5,'warna salah','assets/retur/4waivXqEg5EHbmHHlQ8HsLbPA7IqXp4szr01y4co.jpg','baik akan kami rubah',NULL,'2023-02-07 03:09:19','2023-02-07 03:30:59');

/*Table structure for table `transaction_details` */

DROP TABLE IF EXISTS `transaction_details`;

CREATE TABLE `transaction_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transaction_id` (`transaction_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `transaction_details_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  CONSTRAINT `transaction_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `transaction_details` */

insert  into `transaction_details`(`id`,`transaction_id`,`product_id`,`price`,`quantity`,`deleted_at`,`created_at`,`updated_at`) values (6,6,1,12500000,3,NULL,'2023-01-26 13:41:17','2023-01-26 13:41:17');
insert  into `transaction_details`(`id`,`transaction_id`,`product_id`,`price`,`quantity`,`deleted_at`,`created_at`,`updated_at`) values (8,8,1,12500000,3,NULL,'2023-01-26 13:41:17','2023-01-26 13:41:17');
insert  into `transaction_details`(`id`,`transaction_id`,`product_id`,`price`,`quantity`,`deleted_at`,`created_at`,`updated_at`) values (9,9,1,12500000,1,NULL,'2023-01-27 11:04:36','2023-01-27 11:04:36');
insert  into `transaction_details`(`id`,`transaction_id`,`product_id`,`price`,`quantity`,`deleted_at`,`created_at`,`updated_at`) values (10,10,1,450000,1,NULL,'2023-01-27 17:28:11','2023-01-27 17:28:11');
insert  into `transaction_details`(`id`,`transaction_id`,`product_id`,`price`,`quantity`,`deleted_at`,`created_at`,`updated_at`) values (11,10,2,78000,1,NULL,'2023-01-29 14:47:01','2023-01-29 14:47:01');
insert  into `transaction_details`(`id`,`transaction_id`,`product_id`,`price`,`quantity`,`deleted_at`,`created_at`,`updated_at`) values (12,12,2,78000,1,NULL,'2023-02-07 00:59:35','2023-02-07 00:59:35');
insert  into `transaction_details`(`id`,`transaction_id`,`product_id`,`price`,`quantity`,`deleted_at`,`created_at`,`updated_at`) values (13,15,1,450000,1,NULL,'2023-02-07 01:10:46','2023-02-07 01:10:46');
insert  into `transaction_details`(`id`,`transaction_id`,`product_id`,`price`,`quantity`,`deleted_at`,`created_at`,`updated_at`) values (14,16,2,78000,1,NULL,'2023-02-07 03:07:20','2023-02-07 03:07:20');

/*Table structure for table `transactions` */

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `total_price` int NOT NULL,
  `total_ongkir` int DEFAULT NULL,
  `total_all` int DEFAULT NULL,
  `servis` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_pengiriman` enum('PENDING','CANCEL','SHIPPING','SUCCESS') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `resi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','success','failed') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `midtrans` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `transactions` */

insert  into `transactions`(`id`,`code`,`user_id`,`total_price`,`total_ongkir`,`total_all`,`servis`,`status_pengiriman`,`resi`,`status`,`midtrans`,`name`,`phone`,`address`,`deleted_at`,`created_at`,`updated_at`) values (6,'TRX-58572',5,37500000,2000,37500000,NULL,'PENDING','1245','success','https://app.sandbox.midtrans.com/snap/v3/redirection/83c14086-fdd0-487c-98f7-5e1572917cb3','Radenmas Aji','089649532860','<p>Kayuringin Perumnas 2</p>',NULL,'2023-01-16 07:53:13','2023-01-16 07:53:13');
insert  into `transactions`(`id`,`code`,`user_id`,`total_price`,`total_ongkir`,`total_all`,`servis`,`status_pengiriman`,`resi`,`status`,`midtrans`,`name`,`phone`,`address`,`deleted_at`,`created_at`,`updated_at`) values (8,'TRX-56796',5,37500000,2000,37500000,NULL,'SUCCESS','1234','success','https://app.sandbox.midtrans.com/snap/v3/redirection/8859335c-eb64-40a3-a791-5b1511b75a0a','Joni','123','<p>sfsf</p>',NULL,'2023-01-26 13:41:17','2023-01-27 17:04:32');
insert  into `transactions`(`id`,`code`,`user_id`,`total_price`,`total_ongkir`,`total_all`,`servis`,`status_pengiriman`,`resi`,`status`,`midtrans`,`name`,`phone`,`address`,`deleted_at`,`created_at`,`updated_at`) values (9,'TRX-4978',5,12500000,2000,37500000,NULL,'PENDING',NULL,'pending','https://app.sandbox.midtrans.com/snap/v3/redirection/b21d5527-0345-4bd5-9e8d-d2350925e199','Taufik','018188181','Alamat Saya Lengkap',NULL,'2023-01-27 11:04:36','2023-01-27 11:04:38');
insert  into `transactions`(`id`,`code`,`user_id`,`total_price`,`total_ongkir`,`total_all`,`servis`,`status_pengiriman`,`resi`,`status`,`midtrans`,`name`,`phone`,`address`,`deleted_at`,`created_at`,`updated_at`) values (10,'TRX-78221',5,450000,2000,37500000,NULL,'SUCCESS','123456789','success','https://app.sandbox.midtrans.com/snap/v3/redirection/ce6a80e7-0989-45fc-9b16-8bda5bbd171f','nama saya','0274554805','alamat saya',NULL,'2023-01-27 17:28:11','2023-02-02 00:24:24');
insert  into `transactions`(`id`,`code`,`user_id`,`total_price`,`total_ongkir`,`total_all`,`servis`,`status_pengiriman`,`resi`,`status`,`midtrans`,`name`,`phone`,`address`,`deleted_at`,`created_at`,`updated_at`) values (11,'TRX-65691',5,78000,2000,37500000,NULL,'PENDING',NULL,'pending','https://app.sandbox.midtrans.com/snap/v3/redirection/36beba7a-198b-4fa3-822c-d01b4c29884b','Et officiis ut natus','+1 (941) 404-5514','Aperiam quod ad volu',NULL,'2023-01-29 14:47:01','2023-01-29 14:47:02');
insert  into `transactions`(`id`,`code`,`user_id`,`total_price`,`total_ongkir`,`total_all`,`servis`,`status_pengiriman`,`resi`,`status`,`midtrans`,`name`,`phone`,`address`,`deleted_at`,`created_at`,`updated_at`) values (12,'TRX-84772',5,78000,34000,112000,'JNE - REG (3-4 Hari)','PENDING',NULL,'pending','https://app.sandbox.midtrans.com/snap/v3/redirection/2b421b6e-874c-46df-b6d1-cd69f050407c','Alvi',NULL,'Alamat Taufik Ubah',NULL,'2023-02-07 00:59:35','2023-02-07 00:59:37');
insert  into `transactions`(`id`,`code`,`user_id`,`total_price`,`total_ongkir`,`total_all`,`servis`,`status_pengiriman`,`resi`,`status`,`midtrans`,`name`,`phone`,`address`,`deleted_at`,`created_at`,`updated_at`) values (13,'TRX-45088',5,78000,53000,131000,'JNE - REG (4-5 Hari)','PENDING',NULL,'pending','https://app.sandbox.midtrans.com/snap/v3/redirection/bf42aefc-efea-4de1-9a10-bc13e2db0d96','Alvi',NULL,'Alamat Taufik Ubah',NULL,'2023-02-07 01:00:13','2023-02-07 01:00:13');
insert  into `transactions`(`id`,`code`,`user_id`,`total_price`,`total_ongkir`,`total_all`,`servis`,`status_pengiriman`,`resi`,`status`,`midtrans`,`name`,`phone`,`address`,`deleted_at`,`created_at`,`updated_at`) values (14,'TRX-44315',5,78000,37000,115000,'JNE - REG (7-8 Hari)','PENDING',NULL,'pending','https://app.sandbox.midtrans.com/snap/v3/redirection/882251f4-6eed-43ce-b7d6-8aed2ca27842','Alvi',NULL,'Alamat Taufik Ubah',NULL,'2023-02-07 01:02:58','2023-02-07 01:02:58');
insert  into `transactions`(`id`,`code`,`user_id`,`total_price`,`total_ongkir`,`total_all`,`servis`,`status_pengiriman`,`resi`,`status`,`midtrans`,`name`,`phone`,`address`,`deleted_at`,`created_at`,`updated_at`) values (15,'TRX-51212',5,450000,34000,484000,'JNE - REG (3-4 Hari)','SUCCESS','123321','success','https://app.sandbox.midtrans.com/snap/v3/redirection/4826a20c-5d04-4d0d-ae57-e5dd0966c59a','Alvi',NULL,'Alamat Taufik Ubah',NULL,'2023-02-07 01:10:46','2023-02-07 01:12:44');
insert  into `transactions`(`id`,`code`,`user_id`,`total_price`,`total_ongkir`,`total_all`,`servis`,`status_pengiriman`,`resi`,`status`,`midtrans`,`name`,`phone`,`address`,`deleted_at`,`created_at`,`updated_at`) values (16,'TRX-70012',5,78000,34000,112000,'JNE - REG (3-4 Hari)','SUCCESS','123','success','https://app.sandbox.midtrans.com/snap/v3/redirection/31de7522-14de-4940-b8e8-ae4b2ca6e1b5','Alvi','081234567890','Alamat Taufik Ubah',NULL,'2023-02-07 03:07:20','2023-02-07 03:07:21');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` enum('ADMIN','USER') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_id` int DEFAULT NULL,
  `villages_id` int DEFAULT NULL,
  `regencies_id` int DEFAULT NULL,
  `province_id` int DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`phone`,`roles`,`address`,`district_id`,`villages_id`,`regencies_id`,`province_id`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values (1,'Super Admin','admin@gmail.com','081234567890','ADMIN','<p>Bogor</p>',NULL,NULL,3201,32,NULL,'$2y$10$YWHdE.hI/rBLELGMxw576ulh9/YRsDQp7tmAxW/A8lC0JqzZyWn0W','SjHaXH4btpejiIBBkzUIxxFsHjTPRJXxZhizDUxs9qs3sjtluS6MGfrT3WOF','2023-01-15 21:47:54','2023-01-15 21:47:54');
insert  into `users`(`id`,`name`,`email`,`phone`,`roles`,`address`,`district_id`,`villages_id`,`regencies_id`,`province_id`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values (5,'Alvi','alvi@gmail.com','081234567890','USER','Alamat Taufik Ubah',NULL,NULL,1708,17,NULL,'$2y$10$YWHdE.hI/rBLELGMxw576ulh9/YRsDQp7tmAxW/A8lC0JqzZyWn0W','AfdCzwylNFQk8o8oBXJLYIrWYs6uxevKjKZsZrzs6wvKgPQkstUNFwIQMFhK','2023-01-27 06:59:00','2023-02-01 13:07:28');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
