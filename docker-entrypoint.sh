#!/bin/bash
set -e

echo "Modify ENV for /app/config/production.toml"
sed -i s/MYSQL_HOST/$MYSQL_HOST/g /app/config/production.toml
sed -i s/REDIS_HOST/$REDIS_HOST/g /app/config/production.toml

echo "Modify ENV for /app/workers/reports/config/production.toml"
sed -i s/MYSQL_HOST/$MYSQL_HOST/g /app/workers/reports/config/production.toml

exec "$@"