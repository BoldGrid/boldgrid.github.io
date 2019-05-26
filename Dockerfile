#PULL NGINX
FROM nginx:alpine

#Copy configuration
COPY nginx.conf /etc/nginx/nginx.conf

## Remove default Nginx website
RUN rm -rf /usr/share/nginx/html/*

WORKDIR /usr/share/nginx/html

#Copy build into doc root
COPY build .