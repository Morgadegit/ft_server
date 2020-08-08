openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/sites_srcs/localhost.pem -keyout /etc/nginx/site_srcs/localhost.key -subj "/C=FR/ST=Paris/L=Paris/O=42/OU=sraphard/CN=localhost"

service mysql start
echo "CREATE DATABASE wordpress;GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost';FLUSH PRIVILEGES;exit" | mysql -u root -p --skip-password

nginx

while true;
	do sleep 1;
done
