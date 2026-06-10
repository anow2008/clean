#!/bin/sh
# Script to clear RAM memory on Vu+ Zero 4K (Cacheflush alternative)

echo "=========================================="
echo "Clearing RAM Cache..."
echo "Free RAM before:"
free -m

# Flush system files changes to disk
sync

# Drop PageCache, dentries and inodes directly
echo 3 > /proc/sys/vm/drop_caches

echo "------------------------------------------"
echo "RAM cleared successfully!"
echo "Free RAM after:"
free -m
echo "=========================================="

exit 0
