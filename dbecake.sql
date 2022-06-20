/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 10.4.24-MariaDB : Database - dbecake
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbecake` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `dbecake`;

/*Table structure for table `carts` */

DROP TABLE IF EXISTS `carts`;

CREATE TABLE `carts` (
  `id_cart` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `banyak` int(11) NOT NULL,
  `diskon` float NOT NULL,
  `total` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  PRIMARY KEY (`id_cart`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4;

/*Data for the table `carts` */

insert  into `carts`(`id_cart`,`user_id`,`product_id`,`banyak`,`diskon`,`total`,`total_bayar`) values 
(120,12,16,1,0,3000,0),
(123,12,13,12,3600,36000,32400);

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `categories` */

insert  into `categories`(`id`,`category_name`,`slug`) values 
(1,'Roti Pizza','roti-pizza'),
(3,'Roti Pisang','roti-pisang'),
(4,'Roti biasa','roti-biasa'),
(9,'Roti spesial','roti-spesial');

/*Table structure for table `drivers` */

DROP TABLE IF EXISTS `drivers`;

CREATE TABLE `drivers` (
  `id_driver` int(11) NOT NULL AUTO_INCREMENT,
  `name_driver` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `no_pegawai` int(11) NOT NULL,
  PRIMARY KEY (`id_driver`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `drivers` */

insert  into `drivers`(`id_driver`,`name_driver`,`email`,`password`,`phone_number`,`jurusan`,`no_pegawai`) values 
(1,'Sulton Rosadi','sulton@gmail.com','$2y$10$/maHPojPilbzfpBWLQ2oTOiu2JLbzGgiTHGyRu0Xs7ceUlzL/BuMe','098887665455','JAKARTA',11221133),
(2,'Ahmad Faridh','farid@gmail.com','$2y$10$jYa12Iccc3U5r.LOcVSi.etfKxweMBlRKJBfrwq.qf1/xu8q9UArG','999999888767','BOGOR',223355),
(5,'badrawuri','badrawuri@gmail.com','$2y$10$zO4Y6zRgHpt1DrORTP7imecGb6fSu5o8g7s9F9MIJxHOZRpEjsP8S','082141598507','TANGERANG',923);

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `unit` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `descriptions` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `stock` varchar(255) NOT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;

/*Data for the table `products` */

insert  into `products`(`id_product`,`product_name`,`unit`,`price`,`descriptions`,`category_id`,`stock`) values 
(1,'Pizza Sosis',1000,'3000','<p>roti gurih ini merupakan perpaduan lezat antara roti dan bahan tambahan yang bersifat gurih, seperti sosis, abon, dan saos. Dari pengolahan dan perpaduan yang tepat.&nbsp;lahirlah&nbsp;jajanan lezat untuk mengembalikan semangat dan tenaga setelah seharian beraktivitas</p>\r\n',1,'14000'),
(2,'Pizza Beef',1000,'3000','<p>Kalau yg ini roti dgn porsi kenyang tahan lama, gimana enggak&nbsp;dgn rasa gurih sedikit pedas, tambahan smooked beef dan daging cincang di dalamnya. Cocok menjadi&nbsp;makanan di jam nanggung sembari nunggu makan siang&nbsp;</p>\r\n',1,'12000'),
(3,'Vanilla',1000,'3000','<ul>\r\n	<li>Roti Panggang</li>\r\n	<li>Bentuk sandwich roti tawar, berisi krim dan selai vanilla sebagai varian rasanya</li>\r\n	<li>Dikemas dalam plastic pack singles yang higienis</li>\r\n	<li>Sudah mendapat PIRT dan Halal MUI</li>\r\n</ul>\r\n',9,'0'),
(7,'blueberry',1000,'3000','<ul>\r\n	<li>Roti Panggang</li>\r\n	<li>Bentuk sandwich roti tawar, berisi krim dan selai blueberry&nbsp;sebagai varian rasanya</li>\r\n	<li>Dikemas dalam plastic pack singles yang higienis</li>\r\n	<li>Sudah mendapat PIRT dan Halal MUI</li>\r\n</ul>\r\n',9,'0'),
(13,'Pizza Segitiga',1000,'3000','<p>Roti Pizza Segitiga adalah roti berbentuk pizza yang memiliki tekstur yang tidak keras dan diberi topping yang sangat banyak sehingga membuat Roti Pizza Segitiga Kardus ini banyak diminati oleh masyarakat Indonesia</p>\r\n',1,'37000'),
(14,'Pizza Bulat',1000,'3000','<p>Roti Pizza Bulat adalah roti berbentuk pizza yang memiliki tekstur lembut dengan topping&nbsp;yang banyak sehingga membuat Roti Pizza Bulat&nbsp;ini banyak diminati oleh masyarakat Indonesia</p>\r\n',1,'17000'),
(15,'Pisang Cokelat',1000,'3000','<p>Tampilan roti ini sungguh klasik dan seolah jadi bentuk paten baginya. Selain lenjeran pisang, biasanya roti juga diisi dengan coklat dan diberi&nbsp;topping&nbsp;taburan keju parut, yang tentu akan menyempurnakan kenikmatannya. Ciri khas lain roti pisang ini adalah permukaannya yang mulus berwarna kecoklatan.</p>\r\n',3,'1000'),
(16,'Pisang Mesis',1000,'3000','<p>Tampilan roti ini sungguh klasik dan seolah jadi bentuk paten baginya. Selain lenjeran pisang, biasanya roti juga&nbsp;diberi&nbsp;topping&nbsp;mesis, yang tentu akan menyempurnakan kenikmatannya.</p>\r\n',3,'3000'),
(17,'Roti Sosis',1000,'3000','<p>roti lapis&nbsp;dengan isian sosis yang dimasak. Ini umumnya terdiri dari roti bundar yang panjang seperti baguette atau ciabattaroll, dan irisan atau beberapa macam sosis</p>\r\n',9,'4000'),
(18,'Roti Burger',1000,'4000','<p>sejenis makanan berupa&nbsp;roti&nbsp;berbentuk bundar yang diiris dua dan di tengahnya diisi dengan patty yang biasanya diambil dari daging, kemudian sayur-sayuran berupa selada, tomat dan bawang bombai.</p>\r\n',9,'4000'),
(19,'Roti Sus',1000,'3500','<p>berbentuk bundar dengan rongga berisi fla (vla), custard, atau daging. roti&nbsp;sus&nbsp;dengan isi vla atau custard disajikan setelah didinginkan di lemari es, karena vla atau custard yang berbahan baku susu mudah menjadi basi</p>\r\n',4,'4000'),
(20,'Roti Boi Mesis',1000,'3000','<p>roti yang berbentuk bulat dan memiliki isi mentega yang sangat nikmat ketika kita memakannya.</p>\r\n',4,'2000'),
(29,'Roti Mesis',1000,'3000','<p>ramuan ajaib yang membuat&nbsp;roti&nbsp;tawar dan mentega berasa seperti kue dan frosting. Lapisan kerenyahan ringan, rasa manis, dan rasa dari hagelslag mengubah&nbsp;roti&nbsp;tawar yang lembut.</p>\r\n',4,'1000'),
(30,'Roti Kacang Mesis',1000,'3000','<p>sebuah roti yang mencampurkan paduan toping antara kacang dan mesis, penasaran dengan rasanya? langsung beli aja.</p>\r\n',4,'12000');

/*Table structure for table `products_galleries` */

DROP TABLE IF EXISTS `products_galleries`;

CREATE TABLE `products_galleries` (
  `id_gallery` int(11) NOT NULL AUTO_INCREMENT,
  `photos` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id_gallery`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4;

/*Data for the table `products_galleries` */

insert  into `products_galleries`(`id_gallery`,`photos`,`product_id`) values 
(1,'629184770f2ba.jpeg',1),
(2,'629206f4266e1.jpeg',2),
(3,'629185920047f.jpeg',1),
(4,'629209605bfe7.jpeg',3),
(6,'629207bc72971.jpeg',2),
(12,'62920af100914.jpg',7),
(13,'6292e0cdb74bb.jpeg',3),
(16,'62918639bcf39.jpeg',1),
(18,'629207ef6b4e8.jpeg',2),
(19,'6292e0de68458.jpeg',3),
(20,'600ebece57d8c.jpg',4),
(21,'600ebee07f7b5.jpg',4),
(22,'62920b0a88024.jpg',7),
(23,'62920f336ceb3.jpg',7),
(33,'62921095036ac.jpg',13),
(34,'6292132b7cb6a.jpg',14),
(35,'629213c186111.jpeg',15),
(36,'6292143ff32b3.jpeg',16),
(37,'6292dbee20be3.jpeg',17),
(38,'6292dc27663a8.jpeg',20),
(39,'6292dca8b8905.jpg',17),
(40,'6292dd0ba6dc3.jpg',17),
(47,'6292ddda2e8af.jpeg',29),
(48,'627a2edfd2ffa.jpg',35),
(49,'627a2efecdc23.jpg',34),
(50,'627a2f3163e08.jpg',39),
(51,'627a2f517e212.jpg',36),
(52,'6292e158c60ff.jpg',18),
(53,'6292df41841ca.jpeg',19),
(54,'627a3a7acbdf6.jpg',33),
(55,'6292df566415a.jpeg',30),
(56,'627a3aad61877.jpg',31),
(57,'627a3b2fa179d.jpg',32),
(58,'627a3c3c66102.jpg',38),
(59,'627a3c6bcb653.jpg',40),
(60,'627a3c8439fc6.jpg',37),
(61,'62abe7e99642f.jpg',13),
(62,'62abe9878de59.jpg',13),
(63,'62abed8d77a38.jpg',14),
(64,'62abeda27ac6a.png',14),
(65,'62abeddced884.jpg',15),
(66,'62abeded2e079.jpg',15),
(67,'62abf1053ef08.jpg',16),
(68,'62abf11525765.jpg',16),
(69,'62abf408ed278.jpeg',18),
(70,'62abf31f1d1ad.jpg',19),
(71,'62abf3371076e.jpg',19),
(72,'62abf37c60373.jpg',18),
(73,'62aea47141c1e.jpg',20),
(74,'62aea4861ff8d.jpg',20),
(75,'62aea49e5a5a5.jpg',29),
(76,'62aea4af7d974.jpg',29),
(77,'62aea4cacfac6.jpg',30),
(78,'62aea4e01ede3.jpg',30);

/*Table structure for table `rekening_numbers` */

DROP TABLE IF EXISTS `rekening_numbers`;

CREATE TABLE `rekening_numbers` (
  `id_rekening` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `rekening_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_rekening`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `rekening_numbers` */

insert  into `rekening_numbers`(`id_rekening`,`bank_name`,`number`,`rekening_name`) values 
(1,'BCA','0989878998787','Bu roroh'),
(2,'Mandiri','076543212123','Bu roroh'),
(3,'Syariah','09999977656','Bu roroh'),
(4,'BRI','9827362163848364817','Bu roroh');

/*Table structure for table `transactions` */

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `id_transaction` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `rekening_id` int(11) NOT NULL,
  `transaction_status` varchar(255) NOT NULL,
  `weight_total` int(11) NOT NULL,
  `delivered` int(11) NOT NULL,
  `photo_transaction` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `time_arrived` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_transaction`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

/*Data for the table `transactions` */

insert  into `transactions`(`id_transaction`,`user_id`,`total_price`,`city`,`rekening_id`,`transaction_status`,`weight_total`,`delivered`,`photo_transaction`,`code`,`receiver`,`time_arrived`,`created_at`) values 
(13,15,18000,'GRESIK',3,'TERKIRIM',6000,0,'62abfe8dc161b.jpg','EZM-31514','','2022-06-17 11:13:19','2022-06-17 11:09:09'),
(14,15,12000,'JAKARTA',1,'TERKIRIM',4000,0,'62ac003292d4d.jpg','EZM-38895','admin123','2022-06-17 11:18:49','2022-06-17 11:16:23'),
(15,12,3000,'JAKARTA',1,'TERKIRIM',1000,0,'62ac0343b2597.jpeg','EZM-76591','irham','2022-06-17 11:31:51','2022-06-17 11:29:05'),
(16,15,9000,'JAKARTA',1,'TERKIRIM',3000,0,'62ac075192302.jpg','EZM-87031','riyo','2022-06-17 11:48:43','2022-06-17 11:46:39'),
(17,12,16200,'JAKARTA',1,'BELUM KONFIRMASI',6000,0,'','EZM-94628','',NULL,'2022-06-17 22:04:04'),
(18,12,16200,'JAKARTA',1,'BELUM KONFIRMASI',6000,0,'','EZM-79705','',NULL,'2022-06-17 22:14:31'),
(19,12,18000,'JAKARTA',1,'BELUM KONFIRMASI',6000,0,'','EZM-43109','',NULL,'2022-06-17 23:05:29');

/*Table structure for table `transactions_details` */

DROP TABLE IF EXISTS `transactions_details`;

CREATE TABLE `transactions_details` (
  `id_transaction_detail` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `banyak` int(11) NOT NULL,
  `code_product` varchar(255) NOT NULL,
  PRIMARY KEY (`id_transaction_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

/*Data for the table `transactions_details` */

insert  into `transactions_details`(`id_transaction_detail`,`transaction_id`,`product_id`,`price`,`banyak`,`code_product`) values 
(1,1,1,50000,2,'PRD-12943'),
(2,1,2,80000,2,'PRD-12943'),
(3,2,1,50000,2,'PRD-13113'),
(4,2,1,50000,2,'PRD-13113'),
(5,3,2,80000,2,'PRD-40981'),
(6,3,6,400000,1,'PRD-40981'),
(7,4,3,100000,1,'PRD-60879'),
(8,5,5,20000,2,'PRD-71011'),
(9,5,10,75000,2,'PRD-71011'),
(10,5,12,14000,2,'PRD-71011'),
(11,6,4,36000,5,'PRD-94186'),
(12,6,1,30000,1,'PRD-94186'),
(13,6,2,40000,4,'PRD-94186'),
(14,7,1,20000,1,'PRD-20786'),
(15,8,15,20000,1,'PRD-27681'),
(16,9,13,20000,1,'PRD-18945'),
(17,10,2,25000,1,'PRD-93146'),
(18,11,14,3000,1,'PRD-31738'),
(19,12,1,3000,1,'PRD-23638'),
(20,13,1,3000,3,'PRD-40540'),
(21,13,2,3000,3,'PRD-40540'),
(22,14,13,3000,4,'PRD-14751'),
(23,15,14,3000,1,'PRD-96620'),
(24,16,15,3000,3,'PRD-57880'),
(25,17,20,3000,6,'PRD-68162'),
(26,18,20,3000,6,'PRD-70571'),
(27,19,1,3000,6,'PRD-91743');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `postal_code` varchar(191) NOT NULL,
  `roles` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert  into `users`(`id_user`,`name`,`email`,`password`,`address`,`phone_number`,`postal_code`,`roles`) values 
(10,'owner1','athar@gmail.com','$2y$10$npSqRn8r5VmQoRnwcEMdDOsezGqYSUET8Hmwlof6Iayy8h.rTNfCi','<p>Jln H sanusi Gang Hamzah No 28</p>\r\n','098777776668','61156','OWNER'),
(11,'admin123','admin123@gmail.com','$2y$10$B8sCWiTy0FGPO/v2x7ctjeIF2K9H1kiIvcFzm9fs/F2cgIYEgheeC',NULL,'098765414','','ADMIN'),
(12,'irham Alkarim','Kromosom06@gmail.com','$2y$10$3628m0TszaIOlGE1M040Pu9vlj4LTJFMn8I2MCZnDC.ZspPC5fIAC','<p>Siwalan Panceng Gresik RT 06 RW 02</p>\r\n','082141598507','61156','USER'),
(15,'riyo ubaidillah','riyo@gmail.com','$2y$10$q2suJM2B5tqPRMI540PJHOT.HoSvzEsq0zrZ7ia5yNzQTC8b5nt3i','<p>desa siwalan panceng gresik</p>\r\n','08673947124','61156','USER');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
