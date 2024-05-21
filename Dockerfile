# Використання офіційного образу PHP 8 з підтримкою FPM
FROM php:8-cli

# Встановлення системних залежностей та утиліт
RUN apt-get update \
    && apt-get install -y \
        git \
        zip \
        unzip \
    && rm -rf /var/lib/apt/lists/*

# Встановлення Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Встановлення залежностей проекту
WORKDIR /app
COPY . /app
RUN composer install --no-dev --optimize-autoloader

# Запуск консольного додатку
CMD ["php", "main.php"]