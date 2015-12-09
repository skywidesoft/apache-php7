FROM php:7-apache
MAINTAINER Clarence Ho<clarence@skywidesoft.com>

# Install additional PHP packages
RUN apt-get update && apt-get install -y \
        pwgen imagemagick graphicsmagick \
        libmcrypt-dev mcrypt libicu-dev libxslt-dev \
        libfreetype6-dev libjpeg62-turbo-dev libpng12-dev \
    && docker-php-ext-install iconv mcrypt intl xsl mbstring \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd
