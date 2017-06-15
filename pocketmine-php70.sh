#!/bin/bash
/pocketmine/bin/php7/bin/php -v > /dev/null 2>&1
#如果没安装绿色版的pocketmine-php70，安装
if [ $? -ne 0 ];then
    echo "install pocketmine-php70"
    rm -rf /pocketmine
    sudo mkdir /pocketmine
    wget https://coding.net/u/qsalg/p/pocketmine-php70/git/raw/master/pocketmine-php70-64.tar.gz -P /pocketmine
    tar -zxvf /pocketmine/pocketmine-php70-64.tar.gz -C /pocketmine/
 
    libltdl=`/pocketmine/bin/php7/bin/php -v 2>&1 |grep "libltdl"`
    if [ -n "$libltdl" ];then
        lsb=`lsb_release -i |grep "CentOS"`
		#centos可以自动安装，别的发行版手动安装
        if [ -n "$lsb" ];then
             echo "install libltdl"
             yum -y install libtool-ltdl
         else
             echo "please install libltdl, exit"
             exit
         fi
    fi
fi

/pocketmine/bin/php7/bin/php -v > /dev/null 2>&1
if [ $? -ne 0 ];then
    echo "install pocketmine-php70 failed, exit"
    exit
fi

#php script
/pocketmine/bin/php7/bin/php<<'PHPSCRIPT'

<?php
//echo $j;
$o=null;
$r=null;
exec("ls -alh", $o, $r);
var_dump($o);var_dump($r);

PHPSCRIPT
