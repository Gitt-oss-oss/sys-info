#!/bin/bash

echo ""

echo "    OS VERSION"
if [ -f /etc/os-release ]; then
    cat /etc/os-release
else
    uname -a
fi

echo ""

echo "    USERS WITH BASH SHELL"
grep "/bin/bash" /etc/passwd | cut -d: -f1

echo ""

echo "    OPEN PORTS"
sudo netstat -tulnp 2>/dev/null || sudo ss -tulnp
