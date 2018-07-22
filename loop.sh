#!/usr/bin/env bash

for i in $(cat ./cipher); do
  for o in $(cat ./digest);do
    bruteforce-salted-openssl -1 -f /usr/share/wordlists/rockyou.txt -t 10 -v 10 drupal -d $o -c $i
    echo 'Using cipher - '; echo $i; echo 'and digest - '; echo  $o
done
done
