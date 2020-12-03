FROM nginx:1.19.5-alpine

WORKDIR /app

COPY nginx nginx

# RUN rm -rf /usr/share/nginx/html/*

COPY /nginx/default.conf /etc/nginx/conf.d/

CMD ["nginx", "-g", "daemon off;"]