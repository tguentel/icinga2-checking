#!/bin/bash


ZONES_CONF_FILE="/etc/icinga2/zones.conf"
IFS=','

read -ra GLOBAL <<< $GLOBAL_ZONES
read -ra ZONES <<< $ALL_ZONES


rm -f $ZONES_CONF_FILE
touch $ZONES_CONF_FILE


for GZONE in ${GLOBAL[@]}; do
  echo "
object Zone \"$GZONE\" {
  global = true
}

  " >> $ZONES_CONF_FILE
done

for ZONE in ${ZONES[@]}; do
  echo "
object Endpoint \"dummy_$ZONE\" {
  host = \"dummy_$ZONE\"
}

object Zone \"$ZONE\" {
  endpoints = [ \"dummy_$ZONE\" ]
}

  " >> $ZONES_CONF_FILE
done
