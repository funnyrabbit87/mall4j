@echo off
echo package server
mvn clean package -DskipTests
echo package image
docker-compose -f docker-server.yml up -d
echo done
