FROM alpine:3.15.11

RUN apk update && apk add --no-cache \
    apache2 \
    apache2-utils \
    php8 \
    php8-apache2 \
    php8-mysqli \
    php8-curl \
    php8-json \
    php8-gd \
    php8-mbstring \
    php8-session \
    php8-fpm \
    php8-imap \
    php8-ldap \
    php8-xml \
    php8-mysql \
    php8-bcmath \
    php8-bz2 \
    php8-intl \
    php8-zip \
    php8-common \
    php8-imagick \
    php8-memcached \
    php8-memcache
    
EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]

