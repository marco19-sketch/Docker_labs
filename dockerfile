FROM alpine:latest

# Install ping
RUN apk add --no-cache iputils

# Declare volume
VOLUME /data

CMD sh -c "\
  echo 'Pinging google.com...' && \
  ping -c 4 google.com && \
  echo 'Writing paragraph...' && \
  printf '%s\n' \
    'This is line one of the paragraph.' \
    'This is line two of the paragraph.' \
    'This is line three of the paragraph.' \
    'This is line four of the paragraph.' \
    'This is line five of the paragraph.' \
    > /data/paragraph.txt && \
  echo 'Done. Container is now waiting for user commands.' && \
  tail -f /dev/null \
"
