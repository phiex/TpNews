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

/*
  菜单表
 */
CREATE TABLE `news_menu`(
  `menu_id` SMALLINT(6) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `name` VARCHAR(40) NOT NULL DEFAULT '' COMMENT '菜单名',
  `parentid` SMALLINT(6) NOT NULL DEFAULT '0'COMMENT '父级id',
  `m` VARCHAR(20) NOT NULL DEFAULT '',
  `c` VARCHAR(20) NOT NULL DEFAULT '',
  `f` VARCHAR(20) NOT NULL DEFAULT '',
  `listorder` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `status` TINYINT(1) NOT NULL DEFAULT '1',
  `type` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_id`),
  KEY `listorder` (`listorder`),
  KEY `parentid` (`parentid`),
  KEY  `module` (`m`,`c`,`f`)
)ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET = utf8;

/*
  新闻主表
 */
create table `news_master`(
  `news_id` mediumint(8) unsigned not null auto_increment comment '新闻主表id',
  `catid` smallint(5) unsigned not null default '0',
  `title` varchar(80) not null default '',
  `small_title` varchar(80) not null default '',
  `title_font_color` varchar(250) default null comment '标题颜色',
  `thumb` varchar(100) not null default '',
  `keyword` char(40) not null default '',
  `description` char(40) not null comment '文章描述',
  `listorder` tinyint(3) unsigned not null default '0',
  `status` tinyint(1) not null default '1',
  `copyfrom` varchar(250) default null comment'来源',
  `username` char(20) not null,
  `create_time` int(10) unsigned not null default '0',
  `update_time` int(10) unsigned not null default '0',
  `count` int(10) unsigned not null default '0',
  PRIMARY KEY (`news_id`),
  KEY `listorder`(`listorder`),
  KEY `catid` (`catid`)
)ENGINE=MyISAM auto_increment=1 default charset=utf8;