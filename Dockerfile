FROM nginx:1.19.0-alpine

WORKDIR /usr/src/wordpress
COPY . .

COPY --from=build-deps /usr/src/wordpress /var/www/wordpress
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 8000
