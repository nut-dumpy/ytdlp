FROM python:3.11-alpine as build

RUN apk add ffmpeg

WORKDIR /media

RUN pip install --upgrade --no-cache-dir pip && pip install --no-cache-dir yt-dlp
# RUN adduser -D ytdlp && chown ytdlp:ytdlp /media -R
# USER yt-dlp
ENTRYPOINT ["yt-dlp"]
