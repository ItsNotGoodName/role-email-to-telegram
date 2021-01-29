#!/bin/bash
# Needed for debian saslauthd to work
# http://www.jimmy.co.at/weblog/2005/12/05/postfix-and-sasl-debian/

rm -r /var/run/saslauthd/
mkdir -p /var/spool/postfix/var/run/saslauthd
ln -s /var/spool/postfix/var/run/saslauthd /var/run
chgrp sasl /var/spool/postfix/var/run/saslauthd

/etc/init.d/postfix restart
/etc/init.d/saslauthd restart