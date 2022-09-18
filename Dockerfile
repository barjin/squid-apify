FROM sameersbn/squid

# Add the squid.conf file
ADD squid.conf /etc/squid/squid.conf
ADD start.sh /start.sh

RUN chmod +x /start.sh

# the start.sh script is the entrypoint
entrypoint ["/start.sh"]