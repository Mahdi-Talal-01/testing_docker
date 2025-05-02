#!/bin/bash

cp .env.example .env
php artisan key:generate
php artisan jwt:secret --force

php artisan migrate --force

apache2-foreground
