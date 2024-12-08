#!/bin/bash


echo "Hostname: $(hostname)"

echo "Operating System: $(cat /etc/os-release | grep -i 'pretty_name' | cut -d= -f2)"


echo "Kernel Version: $(uname -r)"


echo "CPU Info:"
lscpu | grep -E 'Model name|Architecture|CPU(s)'

echo "Memory Usage:"
free -h

# Display Disk usage
echo "Disk Usage:"
df -h --total | grep total


echo "Uptime: $(uptime -p)"


echo "Logged-in Users:"
who


echo "System information retrieval completed."
