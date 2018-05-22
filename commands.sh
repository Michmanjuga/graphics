ffmpeg -i input_video.mp4 -ss 00:00:30 -t 00:00:10 -c:v copy -c:a copy cropped.mp4
convert -colorspace RGB -depth 8 -background none -resize 50% plate.svg plate.png
ffmpeg -i cropped.mp4 -i plate.png -filter_complex '[0:v][1:v]overlay=x=0:y=446:enable=between(t\,1\,9)' -c:a copy plated.mp4
