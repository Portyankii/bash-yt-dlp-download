#!/bin/bash


read -p "Are you downloading music or a video? (music/video): " choice

# yt-dlp command part
if [ "$choice" == "music" ]; then
    yt_dlp_command="yt-dlp --extract-audio --audio-format mp3 --embed-thumbnail --add-metadata"
elif [ "$choice" == "video" ]; then
    yt_dlp_command="yt-dlp --format bestvideo+bestaudio --merge-output-format mp4 --embed-thumbnail --add-metadata"
else
    echo "Invalid choice. Please enter 'music' or 'video'."
    exit 1
fi

# 
read -p "Enter the URL of the $choice: " url

# this exacutes the command, dont fuck with this
$yt_dlp_command "$url"

