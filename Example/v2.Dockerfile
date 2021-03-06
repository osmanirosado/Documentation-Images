FROM httpd:2.4

# Desempaquetar el directorio python-3.6.8-docs-html
# en /home
ADD ./python-3.6.8-docs-html.tar.bz2 /home
# Reemplazar el directorio /usr/local/apache2/htdocs
# por el directorio /home/python-3.6.8-docs-html
RUN rm -r /usr/local/apache2/htdocs && \
    mv /home/python-3.6.8-docs-html /usr/local/apache2/htdocs && \
# Agregar permisos de lectura y ejecucion para cualquier usuario
    chmod -R o+rx /usr/local/apache2/htdocs
