FROM linuxserver/transmission
MAINTAINER aglide100@gmail.com

COPY transmission-entrypoint.sh /

RUN chmod +x transmission-entrypoint.sh

RUN rm -rf /etc/services.d/transmission
CMD /transmission-entrypoint.sh && /usr/bin/transmission-daemon -g /config -c /watch -f
