#!/usr/bin/env bash

printenv | awk '{split($0,m,"="); print "export "m[1]"=\""m[2]"\""}' >> /root/.bashrc

if [ ! -d /var/www/vendor ]; then
    composer install --no-suggest --no-progress 2>&1
    chown www-data:www-data /var/www/var/log
fi

php /var/www/bin/console d:d:c --if-not-exists && \
php /var/www/bin/console d:s:u --force
cp supervisor.conf /etc/supervisor/conf.d/ && \
supervisord

