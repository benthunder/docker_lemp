FROM php:7.1-fpm
LABEL "Author"="Le Dinh Thang <ledinhthang102@gmail.com>"

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-install -j$(nproc) iconv \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd
# Xdebug
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

# # Copy config php
COPY ./xdebug.ini /usr/local/etc/php/conf.d/
COPY ./php-ini-overdrive.ini /usr/local/etc/php/conf.d/

RUN usermod -u 1000 www-data

CMD ["php-fpm"]