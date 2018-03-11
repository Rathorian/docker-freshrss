#!/bin/sh

sed -i -e "s|<UPLOAD_MAX_SIZE>|$UPLOAD_MAX_SIZE|g" /etc/nginx/nginx.conf /etc/php7/php-fpm.conf \
       -e "s|<MEMORY_LIMIT>|$MEMORY_LIMIT|g" /etc/php7/php-fpm.conf \
       -e "s|<CRON_PERIOD>|$CRON_PERIOD|g" /etc/s6.d/cron/run \
       -e "s|<TIMEZONE>|$TIMEZONE|g" /etc/php7/php-fpm.conf

ln -snf /usr/share/zoneinfo/$TIMEZONE /etc/localtime
echo $TIMEZONE > /etc/timezone

if [ ! -d /etc/php7/session ]; then
  mkdir /etc/php7/session;
fi

[ ! "$(ls -A /freshrss/data)" ] && cp -R /freshrss/data_tmp/* /freshrss/data/
chown -R $UID:$GID /etc/nginx /etc/php7 /etc/s6.d /var/log /var/lib/nginx /freshrss /tmp
exec su-exec $UID:$GID /bin/s6-svscan /etc/s6.d
