#!/bin/bash
# router-restart.sh

# 路由器的IP地址、用户名和密码
ROUTER_IP="192.168.32.1"
ROUTER_USERNAME="root"
ROUTER_PASSWORD="74123"

# 使用SSH连接到路由器并重启
sshpass -p "$ROUTER_PASSWORD" ssh -o StrictHostKeyChecking=no $ROUTER_USERNAME@$ROUTER_IP << EOF
uptime
echo "Restarting router..."
reboot
EOF

echo "Router should be restarting now."