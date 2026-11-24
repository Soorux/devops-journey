#!/bin/bash
# Descomprime automáticamente todas las capas del nivel 12 de Bandit

xxd -r data.txt > datos       # paso 1: deshacer el hexdump (ya lo sabes)
archivo="datos"

while true; do
    tipo=$(file "$archivo")
    echo "Capa: $tipo"

    if [[ "$tipo" == *gzip* ]]; then
        mv "$archivo" datos.gz
        gzip -d datos.gz                    # descomprimir el gzip
        archivo="datos"

    elif [[ "$tipo" == *bzip2* ]]; then
        mv "$archivo" datos.bz2
	bzip2 -d datos.bz2       # renombrar y descomprimir el bzip2
        archivo="datos"

    elif [[ "$tipo" == *tar* ]]; then
        mv "$archivo" datos.tar
        archivo=$(tar -tf datos.tar)   # averigua el nombre del archivo que hay dentro
        tar -xf datos.tar
        rm datos.tar

    elif [[ "$tipo" == *ASCII* ]]; then
        echo "🎉 ¡Encontrado!"
        cat "$archivo"     # mostrar el contenido
        break                  # salir del bucle

    else
        echo "Formato desconocido"
        break
    fi
done
