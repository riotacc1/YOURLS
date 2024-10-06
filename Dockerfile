# Use the official PHP image
FROM php:7.4-apache

# Install necessary extensions
RUN docker-php-ext-install pdo pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Set the working directory
WORKDIR /var/www/html

# Copy your Yourls files into the container
COPY . .

# Copy Apache configuration file
COPY ./yourls.conf /etc/apache2/sites-available/000-default.conf

# Expose port 80
EXPOSE 80
