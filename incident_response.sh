#!/bin/bash

# Extended Incident Response Script

# Define output files
log_archive="system_logs_$(date +%Y%m%d).tar.gz"
network_capture="network_traffic_$(date +%Y%m%d).pcap"

# System logs and network traffic collection
echo "Collecting system logs..."
tar -czf $log_archive /var/log

echo "Capturing network traffic..."
tcpdump -w $network_capture -c 1000

# Initial response actions
# Implement actions like isolating affected systems or notifying administrators

echo "Incident response data collection complete."
echo "Logs saved in $log_archive, network capture saved in $network_capture."
