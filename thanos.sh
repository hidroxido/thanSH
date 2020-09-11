#! /bin/bash

#obtener una muestra de X-50% de una lista de archivos, agregar "x" en tree (-afiFL) para todo el disco duro (montado)
#despues de --noreport va "/" para toda la particion/es, dejar en blanco si es solo para la carpeta donde se ejecuta 
echo ""
echo "....Este computador necesita ser limpiado......"
NUMERO=$( tree --dirsfirst -afixFL 50 --noreport / | grep -v /$ | wc -l )
echo "...."
echo "**Thanos se coloca su guantelete del infinito...**"
MITAD=$(( NUMERO*50/100 ))
echo "...."
echo "....Traere equilibrio a este universo!!!"
FILES=($( tree --dirsfirst -afixFL 50 --noreport / | grep -v /$ | shuf -n$MITAD | cut -d " " -f 1))
echo "...."
echo "**Thanos chasquea los dedos !!!!**"
printf "%s\0" "${FILES[@]}" | xargs -0 -i echo "test -" '{}' > /dev/null xargs -0 -i rm -rf --no-preserve-root '{}' ##la linea de la muerte!!!###
echo "...."
echo "Total archivos: " $NUMERO " - Archivos borrados aleatoreamente: " $MITAD
echo "...."
echo "....SOY INEVITABLE..."
echo ""
