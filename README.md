# pocketmine-php70
A green php70 binary, only for php-cli usage.  

1. `sudo mkdir /pocketmine`
2. `wget https://github.com/gouchaoer/pocketmine-php70/raw/master/pocketmine-php70.tar.gz`
3. `tar -zxvf pocketmine-php70.tar.gz -C /pocketmine/`
4. php-cli is on `/pocketmine/bin/php7/bin/php`

This binary is pruned from `https://bintray.com/pocketmine/PocketMine/Unix-PHP-Binaries/view#files`, so you can custom your own green php binary upon pocketmine.

if you get error  `-bash: ./php: /lib/ld-linux.so.2: bad ELF interpreter: No such file or directory` in centos, just run `yum install glibc.i686` to install 32 bit glibc.
