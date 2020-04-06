#!/usr/bin/env bash

# Installation
apt-get update && apt-get install -y zip curl
curl -o /tmp/consul.zip https://releases.hashicorp.com/consul/1.7.2/consul_1.7.2_linux_amd64.zip
unzip -t /tmp/consul.zip
unzip /tmp/consul.zip -d /tmp/
mv /tmp/consul /usr/local/bin/
chmod +x /usr/local/bin/consul

# Cleanup (optional)
apt-get purge -y zip curl
apt-get autoremove -y
apt-get autoclean
apt-get clean

# Running consul agent in dev mode - NEVER use this in prod env!
#consul agent -dev