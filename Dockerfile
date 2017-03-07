FROM php:7.1-fpm

ADD ./barcoders /var/www/barcoders

RUN usermod -u 1000 www-data
RUN chown -R www-data:www-data /var/www/barcoders/var/cache
RUN chown -R www-data:www-data /var/www/barcoders/var/logs

