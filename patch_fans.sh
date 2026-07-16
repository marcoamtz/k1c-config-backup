#!/bin/bash
FILE="/usr/data/printer_data/config/Helper-Script/fans-control.cfg"

# Target only the soc_fan block and safely overwrite the acoustic/thermal limits
sed -i '/\[temperature_fan soc_fan\]/,/^[[:space:]]*$/ {
    s/^target_temp:.*/target_temp: 52.0/
    s/^max_speed:.*/max_speed: 0.6/
    s/^min_speed:.*/min_speed: 0.35/
}' $FILE
