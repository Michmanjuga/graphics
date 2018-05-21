ffmpeg -i input_video.mp4 -ss 00:00:30 -t 00:00:10 -c:v copy -c:a copy cropped.mp4
convert -background none -resize 50% -colorspace RGB -depth 8 plate.svg plate.png
ffmpeg -i cropped.mp4 -i plate.png -filter_complex'overlay=0:446:enable=between(t\,1\,9)' -c:a copy plated.mp4
ffmpeg -i plated.mp4 -vf drawtext="fontfile=arial.ttf: text='I am learning computer graphics!': fontcolor=black: fontsize=28: x=20: y=476" -c:a copy result.mp4
