FROM nginx:alpine
# Copia todo el contenido actual del repo al contenedor
COPY . /usr/share/nginx/html
# Elimina la config por defecto
RUN rm /etc/nginx/conf.d/default.conf
# Pone tu nueva config
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]