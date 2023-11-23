#!/bin/bash


current_datetime=$(date +%F_%H%M%S)

log_dir="/home/ubuntu/logs"

deployment="myapp"
time=5m

kubectl logs deployment/$deployment --since-time='$time' > $log_dir/pod_logs_${current_datetime}.log

# */5  * * * /home/ubuntu/logs/pods_logs.sh
