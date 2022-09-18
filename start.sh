#!/bin/bash

if [[ $APIFY_CONTAINER_PORT ]]; then cat /etc/squid/squid.conf | sed s/3128/$APIFY_CONTAINER_PORT/ >> newfile.tmp; mv newfile.tmp /etc/squid/squid.conf;  fi;

bash "/sbin/entrypoint.sh"