#!/bin/bash
# ==========================================================
# Práctica: Creación, copia y eliminación de archivos
# Alumno: Israel Carmona Santos
# Materia: Sistemas Operativos
# ==========================================================

# 1. Definir directorio base de trabajo
cd "$HOME/Documents" || exit 1
echo "[*] Directorio de trabajo: $(pwd)"

# 2. Creación de directorios
echo "[*] Creando carpetas practica1 y practica2..."
mkdir -p practica1 practica2

# 3. Creación del archivo de texto
echo "[*] Generando Readme.txt en practica1..."
echo "Hola, este es un archivo de texto, el cual servira para aprender como crearlo." > practica1/Readme.txt

# 4. Verificación de atributos
echo "[*] Listando atributos de Readme.txt:"
ls -l practica1/Readme.txt

# 5. Copiar archivo individual a practica2
echo "[*] Copiando Readme.txt a practica2..."
cp practica1/Readme.txt practica2/

# 6. Creación de subcarpetas en practica2
echo "[*] Creando carpetas vacia e info en practica2..."
mkdir -p practica2/vacia practica2/info
echo "Archivo complementario de datos" > practica2/info/Readme.txt

# 7. Copiado recursivo de carpetas
echo "[*] Copiando carpetas vacia e info recursivamente a practica1..."
cp -r practica2/vacia practica1/
cp -r practica2/info practica1/

# 8. Eliminación selectiva y recursiva
echo "[*] Eliminando Readme.txt de practica1..."
rm practica1/Readme.txt

echo "[*] Eliminando recursivamente la carpeta info de practica1..."
rm -r practica1/info

# 9. Verificación final
echo "[*] Estado final de practica1 (únicamente debe figurar 'vacia'):"
ls -la practica1/

echo "[+] Práctica completada con éxito."
