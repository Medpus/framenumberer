#!/bin/bash

# Path to the folder containing the .mp4 files
input_folder="path/to/input/folder"

# Counter for enumerating output files
counter=1

# Loop through each .mp4 file in the input folder
for file in *; do
    output_file="$counter.mp4"
    ffmpeg -i "$file" -vf "drawtext=text='%{frame_num}': start_number=1: x=(w-tw)/2: y=h-(2*lh): fontcolor=black: fontsize=20: box=1: boxcolor=white: boxborderw=5: fontfile=/path/to/Arial.ttf" "$output_file" -hide_banner
    ((counter++))
    echo "Processed $file"
echo "Done"
done