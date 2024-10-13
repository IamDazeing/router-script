#!/bin/bash

# 连接到指定的WiFi网络
nmcli device wifi connect "hanbao_wifi" password "1020401660"

# 检查连接状态，确保已连接
if nmcli -t -f STATE device status | grep -q "connected"; then
    echo "网络连接成功"
else
    echo "网络连接失败"
fi