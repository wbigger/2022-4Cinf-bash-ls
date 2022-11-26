ls -l prova > temp
let somma=0
for n in  `grep .txt temp | cut -w -f5`
do
    let somma=somma+n
done
echo $somma

# Oppure, soluzione migliore che non crea un file di appoggio
let somma=0
for n in  `ls -l prova | grep .txt | cut -w -f5`
do
    let somma=somma+n
done
echo $somma

