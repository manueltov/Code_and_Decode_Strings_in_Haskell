# Code_and_Decode_Strings_in_Haskell
Some haskell functions made by me to practise haskell in 'Princípios de Programação' a subject of my Computer Science Course in Faculty of Sciences of the University of Lisbon.

# cifrarCesar
  A cifra de César com uma chave numérica K converte cada caracter de
uma string num outro caracter, saltando K posições no alfabeto.
  Aqui vou usar a representação ASCII do alfabeto; por exemplo, a letra
'a' (ASCII 97) quando encriptada com K = 3 fica 'd' (ASCII 100). Para
descodificar algo que esteja na cifra de César, basta andar K posições para
trás.
- Exemplo:
    > cifrarCesar 3 "Vamos atacar os gauleses!"
    "Ydprv#dwdfdu#rv#jdxohvhv$"
    > descifrarCesar 3 "Ydprv#dwdfdu#rv#jdxohvhv$"
    "Taprobana"

# cifrarObelix
  A cifra de César é muito simples. A de Obelix é ligeiramente mais
sofisticada. Dada uma chave K, a primeira letra na string salta K posições, a
segunda K + 1, a terceira K + 2 e por aí adiante. Para desencriptar
é o processo inverso.
- Exemplo:
    > cifrarObelix 3 "Vai acordar o Panoramix!"
    "Yen&hkx|om\DEL.~0as\129\131\135w\132\129\145;"
    > decifrarObelix 3 "Yen&hkx|om\DEL.~0as\129\131\135w\132\129\145;"
    "Vai acordar o Panoramix!"

# tresPalindromos
  Foi recentemente provado que qualquer número positivo pode ser
decomposto na soma de 3 números palíndromos. Um palíndromo é um
número que fica igual quando escrito de trás para a frente,
como por exemplo 1423241.
  Dado um número positivo, a função tresPalindromos
devolve uma combinação de 3 palindromos cuja soma seja o número dado.
- Exemplo:
    > tresPalindromos 8763
    (0,535,8228)
