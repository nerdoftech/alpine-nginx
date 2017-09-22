FROM alpine:3.6

# Download and install nginx package and curl for troubleshooting
RUN apk --update add nginx curl && rm -vrf /var/cache/apk/*

CMD nginx -t && echo "Starting nginx." && nginx