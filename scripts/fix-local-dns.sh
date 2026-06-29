#!/bin/bash
# One-time fix: bypass stale DNS cache on this Mac until Network Solutions fully propagates.
set -euo pipefail

HOSTS_LINE="185.199.108.153 empirestateoutfitters.com www.empirestateoutfitters.com"

if grep -q 'empirestateoutfitters.com' /etc/hosts; then
  echo "Hosts entry already present."
else
  echo "Adding hosts entry (requires your Mac password)..."
  echo "$HOSTS_LINE" | sudo tee -a /etc/hosts > /dev/null
fi

echo "Flushing DNS cache..."
sudo dscacheutil -flushcache
sudo killall -HUP mDNSResponder

echo ""
echo "Resolved IP:"
python3 -c "import socket; print(socket.gethostbyname('empirestateoutfitters.com'))"
echo ""
echo "Opening site..."
open "https://empirestateoutfitters.com"
