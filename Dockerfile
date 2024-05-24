FROM php:8-cli-alpine

RUN apk update \
    && apk add --no-cache \
        git \
        zip \
        unzip \
        curl

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /app

COPY . .

RUN composer install --no-dev --optimize-autoloader

CMD ["php", "main.php"]