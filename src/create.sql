create database if not exists cc_cachedb default character set latin1 collate latin1_swedish_ci;

use mysql;

use cc_cachedb;

CREATE TABLE IF NOT EXISTS `data` (
  `wurl` varchar(936) NOT NULL,
  `ckey` char(32) NOT NULL,
  `curl` varchar(936) NOT NULL,
  `host` char(16) default NULL,
  `size` bigint(20) default '0',
  `error` tinyint(4) default '0',
  PRIMARY KEY  (`wurl`),
  KEY `cc_cachedb_cc_ckeyurltb_tmp_index1` (`wurl`),
  KEY `cc_cachedb_cc_ckeyurltb_tmp_index2` (`ckey`),
  KEY `cc_cachedb_cc_ckeyurltb_tmp_index3` (`curl`),
  KEY `cc_cachedb_cc_ckeyurltb_tmp_index4` (`host`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `Afile_info` (
  `name` char(14) NOT NULL,
  `prefix` char(9) NOT NULL,
  `timestamp` bigint(20) NOT NULL,
  `index` smallint(6) NOT NULL,
  `status` tinyint(4) default '0',
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `delay_del_wurl` (
  `host` char(16) default NULL,
  `ckey` char(32) NOT NULL,
  `wurl` varchar(936) NOT NULL,
  PRIMARY KEY  (`wurl`),
  KEY `cc_cachedb_cc_ckeyurltb_tmp_index1` (`host`),
  KEY `cc_cachedb_cc_ckeyurltb_tmp_index2` (`ckey`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
