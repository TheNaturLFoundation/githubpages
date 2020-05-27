#Si vous voyez ce code, votre navigateur n'est pas à jour et ne supporte pas le téléchargement.
#Utiliser un autre navigateur ou copier coller ce script dans un fichier .sh et executez.

echo "[!] Please make sure ocaml and opam are installed on your system"


echo "[+]Git clone naturL"
git clone https://github.com/TheNaturLFoundation/naturL.git /usr/local/bin/naturL

echo "[+]Installing ocaml dependecies"
opam install dune
opam install num
opam install ppx_inline_test
opam install ppx_expect
opam install ppx_yojson_conv

echo "[+]Compiling project"
cd /usr/local/bin/naturL; dune build @all

echo "[+]Adding naturL command to .bash_profile"
echo export echo export NATURLPATH=/usr/local/bin/naturL >> ~/.bash_profile
echo alias naturL=/usr/local/bin/naturL/_build/default/./naturL.exe >> ~/.bash_profile

exit 0