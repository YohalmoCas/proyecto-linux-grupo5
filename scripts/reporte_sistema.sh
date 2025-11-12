#!/bin/bash

fecha=$(date)
host=$(hostname)
usuariosConectados=$(who -q)
espacio=$(df -h /dev/sda1 | awk 'NR==2 {print $4}')
ram=$(free -m | awk '/Mem:/ {print $7}')
contenedores=$(docker ps -q | wc -l)

echo "Fecha y hora: $fecha"
echo "Host del sistema: $host"
echo "Usuarios conectados: $usuariosConectados"
echo "Espacio libre en el disco principal: $espacio"
echo "RAM disponible: $ram MB"
echo "Contenedores Docker activos: $contenedores"
