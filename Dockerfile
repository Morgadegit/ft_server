# SELECT THE SHIT

FROM	debian:buster 

# DOWLOAD THE SHIT

RUN		apt-get update
RUN		apt-get upgrade -y

RUN		apt-get -y install wget
RUN		apt-get -y install mariadb-server
RUN		apt-get -y install nginx
RUN		wget https://wordpress.org/latest.tar.gz && tar xf latest.tar.gz
RUN		apt-get -y install php7.3 php-mysql php-fpm php-cli php-mbstring
RUN		wget https://files.phpmyadmin.net/phpMyAdmin/4.9.1/phpMyAdmin-4.9.1-english.tar.gz && tar xf phpMyAdmin-4.9.1-english.tar.gz
RUN		rm latest.tar.gz phpMyAdmin-4.9.1-english.tar.gz

# GET THE SHIT

COPY	./srcs/nginx	/etc/nginx
COPY	./srcs/var		/var

# RUN THE SHIT

CMD		sh /var/run.sh
