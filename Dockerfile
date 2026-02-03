FROM nginx:alpine

RUN apk add --no-cache shadow wget \
 && useradd -u 1001 -s /sbin/nologin webadmin \
 && mkdir -p /var/cache/nginx /var/run /var/log/nginx \
 && chown -R webadmin:webadmin /var/cache/nginx /var/run /var/log/nginx

COPY nginx.conf /etc/nginx/conf.d/default.conf

USER webadmin

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
