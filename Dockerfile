# Use the official Alpine Linux image
FROM alpine:latest

# Install Apache, PHP, and necessary extensions
RUN apk update && apk add --no-cache \
    apache2 \
    apache2-utils \
    php8 
# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["httpd", "-D", "FOREGROUND"]
