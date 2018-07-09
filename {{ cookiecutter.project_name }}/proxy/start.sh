#!/bin/sh
export CONF_FILE=./{{ cookiecutter.project_name }}.conf
export DEFAULT_FILE=/etc/nginx/conf.d/default.conf
envsubst '$NGINX_SERVER_NAME' < $CONF_FILE > $DEFAULT_FILE && \
exec nginx -g 'daemon off;'
