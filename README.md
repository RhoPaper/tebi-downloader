# Tebi Bucket Downloader 🚀

A simple Bash script to batch download multiple buckets from Tebi S3-compatible object storage.
No code modifications are required — just make sure your rclone remote is properly configured.

---

Features ✨

Download multiple buckets simultaneously

Automatically creates local directory structure

Parallel downloads to speed up the process

Displays download progress

One-command execution, ideal for quickly backing up Tebi data

---

Prerequisites ⚙️

1. Install rclone


2. Configure the Tebi remote (example remote name: tebi)

3. Know your bucket list

> ⚠️ Note: This script is for downloading data only and will not modify any remote files.

---

Usage 📦

1. Clone or download this repository:

```bash
git clone https://github.com/RhoPaper/tebi-downloader.git
cd tebi-downloader
```

3. Make the script executable:

```bash
chmod +x download_tebi.sh
```

3. Run the script:

```bash
./download_tebi.sh
```

4. After completion, a tebi_backup folder will be created locally containing all buckets.

---

Modifying the Bucket List 🗂️

If you have other buckets, modify the BUCKETS array in the script:
```
BUCKETS=("bucket1" "bucket2" "bucket3")
```

> The script will automatically create a subdirectory for each bucket.

---

Logs & Resuming Downloads (Optional) 📜

rclone supports resuming interrupted downloads by default

To record logs:

```
rclone copy tebi:$b "$BACKUP_DIR/$b" -P --transfers 16 --log-file=rclone.log --log-level INFO
```

---

License 📝

No license. Use freely.

> ⚠️ Make sure not to upload sensitive keys to public repositories.
