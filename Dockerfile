FROM alpine:3.7

RUN apk add --no-cache nginx
ADD nginx.conf /
ADD . /app

EXPOSE 80
WORKDIR /app
CMD nginx -c /nginx.conf
