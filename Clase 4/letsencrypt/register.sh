#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
sudo /usr/local/bin/docker run --rm --env-file $DIR/.env -v ~/config/letsencrypt/etc/letsencrypt:/etc/letsencrypt certbot/dns-route53 certonly --dns-route53 --register-unsafely-without-email --agree-tos -d futuro.randomico -d *.futuro.randomico
