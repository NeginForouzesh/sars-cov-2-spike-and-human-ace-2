#!/bin/bash
# 50ns run of CoV2-ACE complex

$AMBERHOME/bin/pmemd.cuda -O -i prod.in -o prod1.out -p \
../STRUCTURES/0.15_80_10_pH7.5_6m0j_trunc_final.BOX.top -c equil.rst -r prod1.rst -ref equil.rst -x prod1.mdcrd
$AMBERHOME/bin/pmemd.cuda -O -i prod.in -o prod2.out -p \
../STRUCTURES/0.15_80_10_pH7.5_6m0j_trunc_final.BOX.top -c prod1.rst -r prod2.rst -ref prod1.rst -x prod2.mdcrd 
$AMBERHOME/bin/pmemd.cuda -O -i prod.in -o prod3.out -p \
../STRUCTURES/0.15_80_10_pH7.5_6m0j_trunc_final.BOX.top -c prod2.rst -r prod3.rst -ref prod2.rst -x prod3.mdcrd
$AMBERHOME/bin/pmemd.cuda -O -i prod.in -o prod4.out -p \
../STRUCTURES/0.15_80_10_pH7.5_6m0j_trunc_final.BOX.top -c prod3.rst -r prod4.rst -ref prod3.rst -x prod4.mdcrd
$AMBERHOME/bin/pmemd.cuda -O -i prod.in -o prod5.out -p \
../STRUCTURES/0.15_80_10_pH7.5_6m0j_trunc_final.BOX.top -c prod4.rst -r prod5.rst -ref prod4.rst -x prod5.mdcrd
