/*
  后台用户表
*/
CREATE TABLE `news_admin`(
  `admin_id` MEDIUMINT(6) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` VARCHAR(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `password`  VARCHAR(32) NOT NULL DEFAULT '' COMMENT '密码',
  `lastloginip` VARCHAR(15) DEFAULT '0' COMMENT '最后登陆的ip地址',
  `lastlogintime` INT(10) UNSIGNED DEFAULT '0' COMMENT '最后登陆的时间',
  `email` VARCHAR(40) DEFAULT '' COMMENT '邮箱',
  `realname` VARCHAR(50) NOT NULL DEFAULT '' COMMENT '真实的名字',
  `status` TINYINT(1) NOT NULL DEFAULT '1' COMMENT '状态',
   PRIMARY KEY (`admin_id`),
   KEY `username`(`username`)
)ENGINE = MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;