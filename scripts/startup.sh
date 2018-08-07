#!/bin/bash

# Workaround overlayfs issue https://github.com/docker/for-linux/issues/72
sudo find /var/lib/mysql -type f -exec touch {} \; && \
sudo /etc/init.d/mysql start
apache2ctl start
