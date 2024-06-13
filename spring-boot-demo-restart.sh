#!/bin/sh
cp spring-boot-demo.service /usr/lib/systemd/system/spring-boot-demo.service
sudo systemctl daemon-reload
sudo systemctl restart spring-boot-demo