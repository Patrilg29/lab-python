#!/bin/bash

#SBATCH -p hpc-bio-pascal
#SBATCH --chdir=/home/alumno13/lab4
#SBATCH --mail-type=NONE
#SBATCH -o python-%u.out

module load anaconda/2023.03 # Cargo el módulo necesario

echo Ejecutando el notebook con $1 elementos
ipython reduc-operation-alumno13.ipynb $1

echo Ejecutando el notebook con $2 elementos
ipython reduc-operation-alumno13.ipynb $2

module unload anaconda/2023.03 # Descargo el módulo
