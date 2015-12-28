cp /var/lib/boot2docker/docker-compose /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

mkdir /var/www
mount -t vboxsf www /var/www

echo 'alias composer='\''docker run -ti --rm -v $(pwd):/app composer/composer'\''' >> /home/docker/.ashrc
echo 'alias php='\''docker exec -ti docker_web_1 php'\''' >> /home/docker/.ashrc
echo 'alias phpunit='\''docker run -v $(pwd):/app phpunit/phpunit'\''' >> /home/docker/.ashrc
echo 'alias drush='\''docker run -v $(pwd):/app drush/drush'\''' >> /home/docker/.ashrc

echo 'cd /var/www' >> /home/docker/.ashrc
