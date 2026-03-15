#!/bin/bash

# Tebi One-Click Download Script (Polished Version)
# Make sure rclone is configured with a remote named "tebi"

# Local backup directory
BACKUP_DIR=./tebi_backup
mkdir -p "$BACKUP_DIR"

# Bucket list
BUCKETS=("lrcfiles" "paperpan" "rhopaper")

# Log file
LOG_FILE="./tebi_download.log"
echo "=== Tebi Download Started at $(date) ===" >> "$LOG_FILE"

# Loop through each bucket
for b in "${BUCKETS[@]}"; do
    echo "[$(date +'%H:%M:%S')] Starting download for bucket: $b"
    rclone copy tebi:$b "$BACKUP_DIR/$b" -P --transfers 16 --log-file="$LOG_FILE" --log-level INFO
    echo "[$(date +'%H:%M:%S')] Finished download for bucket: $b"
done

echo "[$(date +'%H:%M:%S')] All downloads completed!"
echo "=== Tebi Download Finished at $(date) ===" >> "$LOG_FILE"