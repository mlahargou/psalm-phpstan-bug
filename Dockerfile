FROM php:8.4-cli

# Install required dependencies
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Create working directory
WORKDIR /app

# Copy all files
COPY . .

# Install dependencies
RUN composer install