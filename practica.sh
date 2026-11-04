#!/bin/sh
# Genera la pagina de PRACTICA a partir de la del conteo REAL. Correr despues de cada cambio en index.html.
set -e
mkdir -p practica
sed "s/^var MODO_PAGINA = 'REAL';$/var MODO_PAGINA = 'SIMULACION';/" index.html > practica/index.html
grep -q "^var MODO_PAGINA = 'SIMULACION';$" practica/index.html
echo "practica/index.html generado"
