FROM alpine:3.15.11

# Update the package index and install necessary packages
RUN apk update && apk add --no-cache && \
    apache2 && \
    apache2-utils && \
    php8 && \
    php8-apache2 && \
    php8-mysqli && \
    php8-curl && \
    php8-json && \
    php8-gd && \
    php8-mbstring && \
    php8-session && \
    php8-imap && \
    php8-ldap && \
    php8-xml && \
    php8-bcmath && \
    php8-bz2 && \
    php8-intl && \
    php8-zip && \
    php8-common && \
    php8-imagick && \
    php8-memcached && \
    php8-memcache

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["httpd", "-D", "FOREGROUND"]
