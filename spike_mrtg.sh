#!/bin/bash
cd /var/www/mrtg
LIST=`ls iix-total.log`
mkdir -p old/
cp iix-total.log old/
for i in $LIST
do awk '!(NF==5 && ($4+$5) > 10000000000)'  old/$i > $i
done
