echo "mp4 file: $1";

# scale
ffmpeg -i $1 -filter:v scale="400:240" -c:a copy scaled.mp4

# compress
ffmpeg -i scaled.mp4 -vcodec libx264 -pix_fmt yuv420p -crf 28 ./thumbnails/$1

# clean
rm scaled.mp4
