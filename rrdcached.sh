#!/bin/bash
set -e

exec rrdcached -g -w 1800 -z 1800 -f 3600 -s librenms -U librenms -G librenms -B -R -j /var/tmp -l unix:/var/run/rrdcached/rrdcached.sock -t 4 -F -b /data/rrd/
