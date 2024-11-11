FROM nginx:latest
COPY nginx/nginx.conf /etc/nginx/nginx.conf
EXPOSE 39901
CMD ["nginx", "-g", "daemon off;"]