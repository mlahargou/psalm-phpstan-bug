# Psalm Bug Reproduction

This repository demonstrates a bug in Psalm dev-master when used with PHPStan 2.1.1 on PHP 8.4.

## The Issue

When running Psalm with PHPStan 2.1.1 installed, we encounter a TypeError in Psalm's ConstantTypeResolver:

```
Uncaught TypeError: Psalm\Internal\Codebase\ConstantTypeResolver::getLiteralTypeFromScalarValue():
Argument #1 ($value) must be of type array|string|int|float|bool|null, PropertyHookType given
```

## How to Reproduce:

1. Clone this repository
2. Run: docker compose up --build

## Environment

The Docker setup provides a consistent environment with:
- PHP 8.4
- Psalm (dev-master)
- PHPStan 2.1.1

## Files:
- composer.json - Specifies the exact versions of Psalm and PHPStan
- psalm.xml - Basic Psalm configuration
- Dockerfile - Sets up PHP 8.4 environment
- docker-compose.yml - Runs Psalm with --no-cache
