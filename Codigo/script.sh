#!/bin/bash
# ==========================================================
# Práctica: Creación, copia y eliminación de archivos
# Alumno: Israel Carmona Santos
# Materia: Sistemas Operativos
# Descripción: Script interactivo y documentado para
# automatizar las operaciones solicitadas en la práctica.
# ==========================================================

# 1. Definir directorio de trabajo en Documentos
TARGET_DIR="$HOME/Documents"
cd "$TARGET_DIR" || exit 1

echo "[*] Iniciando práctica en: $TARGET_DIR"

# 2. Creación de directorios iniciales
echo "[*] Creando carpetas practica1 y practica2..."
mkdir -p practica1 practica2

# 3. Creación del archivo de texto base
echo "[*] Creando Readme.txt en practica1..."
echo "Hola, este es un archivo de texto, el cual servira para aprender como crearlo." > practica1/Readme.txt

# 4. Verificación de permisos y atributos
echo "[*] Contenido de practica1:"
ls -l practica1/Readme.txt

# 5. Copia de archivo a practica2
echo "[*] Copiando Readme.txt hacia practica2..."
cp practica1/Readme.txt practica2/

# 6. Creación de estructura en practica2
echo "[*] Creando directorios vacia e info en practica2..."
mkdir -p practica2/vacia practica2/info
echo "Archivo complementario de datos" > practica2/info/Readme.txt

# 7. Copia recursiva de carpetas (-r)
echo "[*] Copiando carpetas vacia e info recursivamente a practica1..."
cp -r practica2/vacia practica1/
cp -r practica2/info practica1/

# 8. Eliminación selectiva
echo "[*] Eliminando Readme.txt de practica1..."
rm practica1/Readme.txt

echo "[*] Eliminando recursivamente la carpeta info de practica1..."
rm -r practica1/info

# 9. Comprobación final
echo "[*] Estado final de practica1 (debe contener únicamente 'vacia'):"
ls -la practica1/

echo "[+] Script finalizado exitosamente."
