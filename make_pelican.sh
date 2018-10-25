#!/bin/bash
pelican ./content/
sed -i'' -e 's/pages\/rtfcal.html/rtfcal\//g' output/index.html
rsync -auvc --delete ./output/ flo@rtfcal.de:/var/www/html/pelican/

