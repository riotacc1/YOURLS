FROM php:7.4-apache

# Install necessary extensions
RUN docker-php-ext-install pdo pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Set the working directory
WORKDIR /var/www/html

# Copy your Yourls files into the container
COPY . .

# Configure Apache to serve your Yourls installation
COPY ./yourls.conf /etc/apache2/sites-available/000-default.conf
