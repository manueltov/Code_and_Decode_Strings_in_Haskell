-- MANUEL TOVAR
-- FC49522

import Data.Char

{-|
A cifra de César com uma chave numérica K converte cada caracter de
uma string num outro caracter, saltando K posições no alfabeto.
Aqui vou usar a representação ASCII do alfabeto; por exemplo, a letra
'a' (ASCII 97) quando encriptada com K = 3 fica 'd' (ASCII 100). Para
descodificar algo que esteja na cifra de César, basta andar K posições para
trás.

Exemplo:
> cifrarCesar 3 "Vamos atacar os gauleses!"
"Ydprv#dwdfdu#rv#jdxohvhv$"
> descifrarCesar 3 "Ydprv#dwdfdu#rv#jdxohvhv$"
"Taprobana"
-}

cifrarCesar k xs = [ chr (ord x + k) | x <- xs]

decifrarCesar k xs = [ chr (ord x - k) | x <- xs]


{-|
A cifra de César é muito simples. A de Obelix é ligeiramente mais
sofisticada. Dada uma chave K, a primeira letra na string salta K posições, a
segunda K + 1, a terceira K + 2 e por aí adiante. Para desencriptar
é o processo inverso. Exemplo:
> cifrarObelix 3 "Vai acordar o Panoramix!"
"Yen&hkx|om\DEL.~0as\129\131\135w\132\129\145;"
> decifrarObelix 3 "Yen&hkx|om\DEL.~0as\129\131\135w\132\129\145;"
"Vai acordar o Panoramix!"
-}

cifrarObelix k xs = cifrarObelixAux k (zip xs [0..length xs])

cifrarObelixAux k xs = [ chr (ord a+k+b ) | (a,b) <- xs]

decifrarObelix k xs = decifrarObelixAux k (zip xs [0..length xs])

decifrarObelixAux k xs = [ chr (ord a-k-b ) | (a,b) <- xs]


{-|
Foi recentemente provado que qualquer número positivo pode ser
decomposto na soma de 3 números palíndromos. Um palíndromo é um
número que fica igual quando escrito de trás para a frente,
como por exemplo 1423241. Dado um número positivo, a função tresPalindromos
devolve uma combinação de 3 palindromos cuja soma seja o número dado.
Exemplo:
> tresPalindromos 8763
(0,535,8228)
-}
tresPalindromos x = head [ (a,b,c) | a<-[0..x], b<-[0..x], c<-[0..x], (a+b+c == x), ehPalindromo a , ehPalindromo b , ehPalindromo c ]

ehPalindromo n = digitosPraLista n == reverse (digitosPraLista n)

digitosPraLista 0 = []
digitosPraLista x = digitosPraLista (x `div` 10) ++ [x `mod` 10]
