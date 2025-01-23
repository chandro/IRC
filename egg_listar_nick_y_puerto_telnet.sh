#!/bin/bash

# Actualizar la base de datos de archivos
updatedb

# Buscar archivos de configuración de Eggdrop (.conf) en /home
config_files=$(locate -r '^/home/.*\.conf$')

# Crear un archivo temporal para almacenar los resultados
temp_file=$(mktemp)

# Procesar cada archivo de configuración encontrado
for config_file in $config_files; do
    # Obtener el puerto Telnet
    telnet_port=$(grep -E '^\s{0,3}listen ' "$config_file" | grep -v '#' | awk '{print $2}')
    
    # Obtener el nick
    nick=$(grep -E '^set nick "' "$config_file" | awk -F'"' '{print $2}')
    
    # Si ambos valores se encontraron, escribirlos en el archivo temporal
    if [[ -n $telnet_port && -n $nick ]]; then
        echo "nick $nick telnet port $telnet_port" >> "$temp_file"
    fi
done

# Mostrar el contenido del archivo temporal
cat "$temp_file"

# Eliminar el archivo temporal
rm -f "$temp_file"
