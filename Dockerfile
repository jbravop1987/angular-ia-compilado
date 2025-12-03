FROM nginx:alpine
# Copia todo lo que está en la raíz del repo (tus js, index, etc)
COPY . /usr/share/nginx/html
# Copia la configuración
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]