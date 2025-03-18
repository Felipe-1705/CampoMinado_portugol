Algoritmo "CAMPO MINADO"
Var
   //MENU1//
   t : vetor [1..15,1..15] de caractere
   ponto : vetor [1..10] de inteiro
   menu, dif : inteiro
   regJ, regP : inteiro
   x, y, a : inteiro
   vd, bc : inteiro
   fds, repetir, fecho : inteiro
   linha, coluna : inteiro
   regvermelho, regverde, regazul, regamarelo : inteiro
   sa : inteiro
   //MENU2//
   jogadoral : caractere
   jogador, rankjogo : vetor [1..10] de caractere
   jogac : caractere
   b, c  : inteiro
   save : inteiro
   //MENU3//
   ranka, rankb, rankc : inteiro
   d, f : inteiro
   //MENU 4//
   pag, passarpag : inteiro
   sss : inteiro
Inicio
   ////////FUNÇÕES E PROCEDIMENTOS///////

procedimento tabela
var
inicio
   escreval("   1   2   3   4   5   6   7   8   9   10  11  12  13  14  15 ")
   escreval("  +---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+")
   escreval("1 |",t[1,1]:3,"|",t[1,2]:3,"|",t[1,3]:3,"|",t[1,4]:3,"|",t[1,5]:3,"|",t[1,6]:3,"|",t[1,7]:3,"|",t[1,8]:3,"|",t[1,9]:3,"|",t[1,10]:3,"|",t[1,11]:3,"|",t[1,12]:3,"|",t[1,13]:3,"|",t[1,14]:3,"|",t[1,15]:3,"|")
   escreval("  +---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+")
   escreval("2 |",t[2,1]:3,"|",t[2,2]:3,"|",t[2,3]:3,"|",t[2,4]:3,"|",t[2,5]:3,"|",t[2,6]:3,"|",t[2,7]:3,"|",t[2,8]:3,"|",t[2,9]:3,"|",t[2,10]:3,"|",t[2,11]:3,"|",t[2,12]:3,"|",t[2,13]:3,"|",t[2,14]:3,"|",t[2,15]:3,"|")
   escreval("  +---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+")
   escreval("3 |",t[3,1]:3,"|",t[3,2]:3,"|",t[3,3]:3,"|",t[3,4]:3,"|",t[3,5]:3,"|",t[3,6]:3,"|",t[3,7]:3,"|",t[3,8]:3,"|",t[3,9]:3,"|",t[3,10]:3,"|",t[3,11]:3,"|",t[3,12]:3,"|",t[3,13]:3,"|",t[3,14]:3,"|",t[3,15]:3,"|")
   escreval("  +---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+")
   escreval("4 |",t[4,1]:3,"|",t[4,2]:3,"|",t[4,3]:3,"|",t[4,4]:3,"|",t[4,5]:3,"|",t[4,6]:3,"|",t[4,7]:3,"|",t[4,8]:3,"|",t[4,9]:3,"|",t[4,10]:3,"|",t[4,11]:3,"|",t[4,12]:3,"|",t[4,13]:3,"|",t[4,14]:3,"|",t[4,15]:3,"|")
   escreval("  +---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+")
   escreval("5 |",t[5,1]:3,"|",t[5,2]:3,"|",t[5,3]:3,"|",t[5,4]:3,"|",t[5,5]:3,"|",t[5,6]:3,"|",t[5,7]:3,"|",t[5,8]:3,"|",t[5,9]:3,"|",t[5,10]:3,"|",t[5,11]:3,"|",t[5,12]:3,"|",t[5,13]:3,"|",t[5,14]:3,"|",t[5,15]:3,"|")
   escreval("  +---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+")
   escreval("6 |",t[6,1]:3,"|",t[6,2]:3,"|",t[6,3]:3,"|",t[6,4]:3,"|",t[6,5]:3,"|",t[6,6]:3,"|",t[6,7]:3,"|",t[6,8]:3,"|",t[6,9]:3,"|",t[6,10]:3,"|",t[6,11]:3,"|",t[6,12]:3,"|",t[6,13]:3,"|",t[6,14]:3,"|",t[6,15]:3,"|")
   escreval("  +---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+")
   escreval("7 |",t[7,1]:3,"|",t[7,2]:3,"|",t[7,3]:3,"|",t[7,4]:3,"|",t[7,5]:3,"|",t[7,6]:3,"|",t[7,7]:3,"|",t[7,8]:3,"|",t[7,9]:3,"|",t[7,10]:3,"|",t[7,11]:3,"|",t[7,12]:3,"|",t[7,13]:3,"|",t[7,14]:3,"|",t[7,15]:3,"|")
   escreval("  +---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+")
   escreval("8 |",t[8,1]:3,"|",t[8,2]:3,"|",t[8,3]:3,"|",t[8,4]:3,"|",t[8,5]:3,"|",t[8,6]:3,"|",t[8,7]:3,"|",t[8,8]:3,"|",t[8,9]:3,"|",t[8,10]:3,"|",t[8,11]:3,"|",t[8,12]:3,"|",t[8,13]:3,"|",t[8,14]:3,"|",t[8,15]:3,"|")
   escreval("  +---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+")
   escreval("9 |",t[9,1]:3,"|",t[9,2]:3,"|",t[9,3]:3,"|",t[9,4]:3,"|",t[9,5]:3,"|",t[9,6]:3,"|",t[9,7]:3,"|",t[9,8]:3,"|",t[9,9]:3,"|",t[9,10]:3,"|",t[9,11]:3,"|",t[9,12]:3,"|",t[9,13]:3,"|",t[9,14]:3,"|",t[9,15]:3,"|")
   escreval("  +---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+")
   escreval("10|",t[10,1]:3,"|",t[10,2]:3,"|",t[10,3]:3,"|",t[10,4]:3,"|",t[10,5]:3,"|",t[10,6]:3,"|",t[10,7]:3,"|",t[10,8]:3,"|",t[10,9]:3,"|",t[10,10]:3,"|",t[10,11]:3,"|",t[10,12]:3,"|",t[10,13]:3,"|",t[10,14]:3,"|",t[10,15]:3,"|")
   escreval("  +---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+")
   escreval("11|",t[11,1]:3,"|",t[11,2]:3,"|",t[11,3]:3,"|",t[11,4]:3,"|",t[11,5]:3,"|",t[11,6]:3,"|",t[11,7]:3,"|",t[11,8]:3,"|",t[11,9]:3,"|",t[11,10]:3,"|",t[11,11]:3,"|",t[11,12]:3,"|",t[11,13]:3,"|",t[11,14]:3,"|",t[11,15]:3,"|")
   escreval("  +---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+")
   escreval("12|",t[12,1]:3,"|",t[12,2]:3,"|",t[12,3]:3,"|",t[12,4]:3,"|",t[12,5]:3,"|",t[12,6]:3,"|",t[12,7]:3,"|",t[12,8]:3,"|",t[12,9]:3,"|",t[12,10]:3,"|",t[12,11]:3,"|",t[12,12]:3,"|",t[12,13]:3,"|",t[12,14]:3,"|",t[12,15]:3,"|")
   escreval("  +---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+")
   escreval("13|",t[13,1]:3,"|",t[13,2]:3,"|",t[13,3]:3,"|",t[13,4]:3,"|",t[13,5]:3,"|",t[13,6]:3,"|",t[13,7]:3,"|",t[13,8]:3,"|",t[13,9]:3,"|",t[13,10]:3,"|",t[13,11]:3,"|",t[13,12]:3,"|",t[13,13]:3,"|",t[13,14]:3,"|",t[13,15]:3,"|")
   escreval("  +---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+")
   escreval("14|",t[14,1]:3,"|",t[14,2]:3,"|",t[14,3]:3,"|",t[14,4]:3,"|",t[14,5]:3,"|",t[14,6]:3,"|",t[14,7]:3,"|",t[14,8]:3,"|",t[14,9]:3,"|",t[14,10]:3,"|",t[14,11]:3,"|",t[14,12]:3,"|",t[14,13]:3,"|",t[14,14]:3,"|",t[14,15]:3,"|")
   escreval("  +---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+")
   escreval("15|",t[15,1]:3,"|",t[15,2]:3,"|",t[15,3]:3,"|",t[15,4]:3,"|",t[15,5]:3,"|",t[15,6]:3,"|",t[15,7]:3,"|",t[15,8]:3,"|",t[15,9]:3,"|",t[15,10]:3,"|",t[15,11]:3,"|",t[15,12]:3,"|",t[15,13]:3,"|",t[15,14]:3,"|",t[15,15]:3,"|")
   escreval("  +---+---+---+---+---+---+---+---+---+---+---+---+---+---+---+")
fimprocedimento

//////////////////////////////////////////

procedimento dificuldade
var
inicio
   escreval("======================")
   escreval("     DIFICULDADE      ")
   escreval("======================")
   escreval("1-Fácil   -> 15 bombas")
   escreval("2-Medio   -> 25 bombas")
   escreval("3-Difícil -> 35 bombas")
fimprocedimento

//////////////////////////////////////////
procedimento menup
var
inicio
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                             ___                                            _                    _          ")
   escreval("                                            / __|  __ _   _ __    _ __   ___        _ __   (_)  _ _    __ _   __| |  ___    ")
   escreval("                                           | (__  / _' | | '  \  | '_ \ / _ \      | '  \  | | | ' \  / _' | / _' | / _ \   ")
   escreval("                                            \___| \__,_| |_|_|_| | .__/ \___/      |_|_|_| |_| |_||_| \__,_| \__,_| \___/   ")
   escreval("                                                                 |_|                                                        ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                          1-JOGAR                                           ")
   escreval("                                                                          2-Jogar com jogador já logado                     ")
   escreval("                                                                          3-Rank de jogadores                               ")
   escreval("                                                                          4-Regras                                          ")
   escreval("                                                                          5-Encerrar programa                               ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
fimprocedimento
//////////////////////////////////////////
procedimento pag1
var
inicio
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                    _ __ ___  __ _ _ __ __ _ ___                            ")
   escreval("                                                                   | '__/ _ \/ _` | '__/ _` / __|                           ")
   escreval("                                                                   | | |  __/ (_| | | | (_| \__ \                           ")
   escreval("                                                                   |_|  \___|\__, |_|  \__,_|___/                           ")
   escreval("                                                                              __/ |           página 1                              ")
   escreval("                                                                             |___/                                          ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                        1   2   3                                                           ")
   escreval("                                                      +---+---+---+       1-Uma versão maior da tabela ao lado              ")
   escreval("                                                    1 | # | # | # |       será exibida ao começar o jogo.                   ")
   escreval("                                                      +---+---+---+                                                         ")
   escreval("                                                    2 | # | # | # |                                                         ")
   escreval("                                                      +---+---+---+       2-Você pode dar um clique ou colocar uma bandeira ")
   escreval("                                                    3 | # | # | # |                                                         ")
   escreval("                                                      +---+---+---+                                                         ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                     1                                         2                                         3  ")
   escreval("                                   _____                                      _  _                                     _____")
   escreval("                                  / ___ \                                    \ \/ /                                   / ___ \")
   escreval("                                _/ /_  \ \                                    \  /                                   / /  _\ \_")
   escreval("                                \   /   ) )                                   /  \                                  ( (   \   /")
   escreval("                                 \_/   /_/                                   /_/\_\                                  \_\   \_/ ")
   escreval("                                                                                                                              ")
fimprocedimento
//////////////////////////////////////////
procedimento pag2
var
inicio
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                    _ __ ___  __ _ _ __ __ _ ___                            ")
   escreval("                                                                   | '__/ _ \/ _` | '__/ _` / __|                           ")
   escreval("                                                                   | | |  __/ (_| | | | (_| \__ \                           ")
   escreval("                                                                   |_|  \___|\__, |_|  \__,_|___/                           ")
   escreval("                                                                              __/ |           página 2                              ")
   escreval("                                                                             |___/                                          ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                        1   2   3                                                           ")
   escreval("                                                      +---+---+---+       1-Digamos que você clicou na linha 3 coluna 3.    ")
   escreval("                                                    1 | # | 1 |   |                                                         ")
   escreval("                                                      +---+---+---+       2-Uma área vai se abrir e números aparecerão.     ")
   escreval("                                                    2 | 2 | 2 |   |                                                         ")
   escreval("                                                      +---+---+---+       3-Os numeros indicam quantas bombas tem em uma    ")
   escreval("                                                    3 | # | 1 |   |         área de 3 por 3.                                ")
   escreval("                                                      +---+---+---+                                                         ")
   escreval("                                                                          4-Se você clicar em uma bomba você perde.         ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                     1                                         2                                         3  ")
   escreval("                                   _____                                      _  _                                     _____")
   escreval("                                  / ___ \                                    \ \/ /                                   / ___ \")
   escreval("                                _/ /_  \ \                                    \  /                                   / /  _\ \_")
   escreval("                                \   /   ) )                                   /  \                                  ( (   \   /")
   escreval("                                 \_/   /_/                                   /_/\_\                                  \_\   \_/ ")
   escreval("                                                                                                                              ")
fimprocedimento

//////////////////////////////////////////
procedimento pag3
var
inicio
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                    _ __ ___  __ _ _ __ __ _ ___                            ")
   escreval("                                                                   | '__/ _ \/ _` | '__/ _` / __|                           ")
   escreval("                                                                   | | |  __/ (_| | | | (_| \__ \                           ")
   escreval("                                                                   |_|  \___|\__, |_|  \__,_|___/                           ")
   escreval("                                                                              __/ |           página 3                              ")
   escreval("                                                                             |___/                                          ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                        1   2   3                                                           ")
   escreval("                                                      +---+---+---+       1-Ao colocar uma bandeira o ícone (|>) aparecerá  ")
   escreval("                                                    1 ||> | 1 |   |         na cordenada escolhida. (como mostra ao lado)   ")
   escreval("                                                      +---+---+---+                                                         ")
   escreval("                                                    2 | 2 | 2 |   |       2-Você ganha ao cobrir todas as bombas            ")
   escreval("                                                      +---+---+---+         com bandeiras.                                  ")
   escreval("                                                    3 ||> | 1 |   |                                                         ")
   escreval("                                                      +---+---+---+                                                         ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                     1                                         2                                         3  ")
   escreval("                                   _____                                      _  _                                     _____")
   escreval("                                  / ___ \                                    \ \/ /                                   / ___ \")
   escreval("                                _/ /_  \ \                                    \  /                                   / /  _\ \_")
   escreval("                                \   /   ) )                                   /  \                                  ( (   \   /")
   escreval("                                 \_/   /_/                                   /_/\_\                                  \_\   \_/ ")
   escreval("                                                                                                                              ")
fimprocedimento
//////////////////////////////////////////
procedimento pag4
var
inicio
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                    _ __ ___  __ _ _ __ __ _ ___                            ")
   escreval("                                                                   | '__/ _ \/ _` | '__/ _` / __|                           ")
   escreval("                                                                   | | |  __/ (_| | | | (_| \__ \                           ")
   escreval("                                                                   |_|  \___|\__, |_|  \__,_|___/                           ")
   escreval("                                                                              __/ |           página 4                              ")
   escreval("                                                                             |___/                                          ")
   escreval("                                                                                                                            ")
   escreval("                                                                           DIFICULDADES                                     ")
   escreval("                                                                                                                            ")
   escreval("                                                                     ->FÁCIL                                                ")
   escreval("                                                                       Vitória + 100 pontos                                 ")
   escreval("                                                                       Derrota - 50 pontos                                  ")
   escreval("                                                                                                                            ")
   escreval("                                                                     ->MÉDIO                                                ")
   escreval("                                                                       Vitória + 200 pontos                                 ")
   escreval("                                                                       Derrota - 75 pontos                                  ")
   escreval("                                                                                                                            ")
   escreval("                                                                     ->DIFÍCIL                                              ")
   escreval("                                                                       Vitória + 350 pontos                                 ")
   escreval("                                                                       Derrota - 100 pontos                                 ")
   escreval("                                                                                                                            ")
   escreval("                                                                   Obs-Todas as dificuldades tem o mesmo tamanho de         ")
   escreval("                                                                       tabuleiro, apenas a quantidade de bombas muda.       ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                                                                                                            ")
   escreval("                                     1                                         2                                         3  ")
   escreval("                                   _____                                      _  _                                     _____")
   escreval("                                  / ___ \                                    \ \/ /                                   / ___ \")
   escreval("                                _/ /_  \ \                                    \  /                                   / /  _\ \_")
   escreval("                                \   /   ) )                                   /  \                                  ( (   \   /")
   escreval("                                 \_/   /_/                                   /_/\_\                                  \_\   \_/ ")
   escreval("                                                                                                                              ")
fimprocedimento
//////////////////////////////////////////

funcao vitoriafacil () : inteiro
var
inicio
   se (t[1,1]="|> ") entao
      ponto[regJ]<-ponto[regJ]+100
      vitoria
      vd<-1
      escreval("Aperte enter para continuar")
      leia(fds)
      limpatela
   fimse
fimfuncao

//////////////////////////////////////////

funcao vitoriamedio () : inteiro
var
inicio
   se (t[1,1]="|> ") e (t[3,1]="|> ") e (t[13,2]="|> ") e (t[9,5]="|> ") e (t[15,5]="|> ") e (t[2,6]="|> ") e (t[9,7]="|> ") e (t[12,9]="|> ") e (t[6,11]="|> ") e (t[8,11]="|> ") e (t[15,12]="|> ") e (t[2,13]="|> ") e (t[4,13]="|> ") e (t[8,14]="|> ") e (t[9,14]="|> ") e (t[3,3]="|> ") e (t[8,2]="|> ") e (t[11,4]="|> ") e (t[2,9]="|> ") e (t[4,8]="|> ") e (t[13,7]="|> ") e (t[14,15]="|> ") e (t[12,12]="|> ") e (t[3,11]="|> ") e (t[5,15]="|> ")  entao
      ponto[regJ]<-ponto[regJ]+200
      vitoria
      vd<-1
      escreval("Aperte enter para continuar")
      leia(fds)
      limpatela
   fimse
fimfuncao

//////////////////////////////////////////

funcao vitoriadificil () : inteiro
var
inicio
   se (t[1,1]="|> ") e (t[3,1]="|> ") e (t[13,2]="|> ") e (t[9,5]="|> ") e (t[15,5]="|> ") e (t[2,6]="|> ") e (t[9,7]="|> ") e (t[12,9]="|> ") e (t[6,11]="|> ") e (t[8,11]="|> ") e (t[15,12]="|> ") e (t[2,13]="|> ") e (t[4,13]="|> ") e (t[8,14]="|> ") e (t[9,14]="|> ") e (t[3,3]="|> ") e (t[8,2]="|> ") e (t[11,4]="|> ") e (t[2,9]="|> ") e (t[4,8]="|> ") e (t[13,7]="|> ") e (t[14,15]="|> ") e (t[12,12]="|> ") e (t[3,11]="|> ") e (t[5,15]="|> ") e (t[1,3]="|> ") e (t[6,5]="|> ") e (t[10,3]="|> ") e (t[6,6]="|> ") e (t[3,9]="|> ") e (t[10,9]="|> ") e (t[13,11]="|> ") e (t[13,14]="|> ") e (t[7,12]="|> ") e (t[3,14]="|> ") entao
      ponto[regJ]<-ponto[regJ]+350
      vitoria
      vd<-1
      escreval("Aperte enter para continuar")
      leia(fds)
      limpatela
   fimse

fimfuncao

////////////////////////////////////////////////

funcao derrotafacil : inteiro
var
inicio
   se (linha=1) e (coluna=1) entao
      ponto[regJ]<-ponto[regJ]-50
      vd<-1
      bomba
   senao
      se (linha=3) e (coluna=1) entao
         ponto[regJ]<-ponto[regJ]-50
         vd<-1
         bomba
      senao
         se (linha=13) e (coluna=2) entao
            ponto[regJ]<-ponto[regJ]-50
            vd<-1
            bomba
         senao
            se (linha=9) e (coluna=5) entao
               ponto[regJ]<-ponto[regJ]-50
               vd<-1
               bomba
            senao
               se (linha=15) e (coluna=5) entao
                  ponto[regJ]<-ponto[regJ]-50
                  vd<-1
                  bomba
               senao
                  se (linha=2) e (coluna=6) entao
                     ponto[regJ]<-ponto[regJ]-50
                     vd<-1
                     bomba
                  senao
                     se (linha=9) e (coluna=7) entao
                        ponto[regJ]<-ponto[regJ]-50
                        vd<-1
                        bomba
                     senao
                        se (linha=12) e (coluna=9) entao
                           ponto[regJ]<-ponto[regJ]-50
                           vd<-1
                           bomba
                        senao
                           se (linha=6) e (coluna=11) entao
                              ponto[regJ]<-ponto[regJ]-50
                              vd<-1
                              bomba
                           senao
                              se (linha=8) e (coluna=11) entao
                                 ponto[regJ]<-ponto[regJ]-50
                                 vd<-1
                                 bomba
                              senao
                                 se (linha=2) e (coluna=13) entao
                                    ponto[regJ]<-ponto[regJ]-50
                                    vd<-1
                                    bomba
                                 senao
                                    se (linha=4) e (coluna=13) entao
                                       ponto[regJ]<-ponto[regJ]-50
                                       vd<-1
                                       bomba
                                    senao
                                       se (linha=15) e (coluna=12) entao
                                          ponto[regJ]<-ponto[regJ]-50
                                          vd<-1
                                          bomba
                                       senao
                                          se (linha=8) e (coluna=14) entao
                                             ponto[regJ]<-ponto[regJ]-50
                                             vd<-1
                                             bomba
                                          senao
                                             se (linha=9) e (coluna=14) entao
                                                ponto[regJ]<-ponto[regJ]-50
                                                vd<-1
                                                bomba
                                             fimse
                                          fimse
                                       fimse
                                    fimse
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
fimfuncao

//////////////////////////////////////////

funcao derrotamedio () : inteiro
var
inicio
   se (linha=1) e (coluna=1) entao
      ponto[regJ]<-ponto[regJ]-75
      vd<-1
      bomba
   senao
      se (linha=3) e (coluna=1) entao
         ponto[regJ]<-ponto[regJ]-75
         vd<-1
         bomba
      senao
         se (linha=13) e (coluna=2) entao
            ponto[regJ]<-ponto[regJ]-75
            vd<-1
            bomba
         senao
            se (linha=9) e (coluna=5) entao
               ponto[regJ]<-ponto[regJ]-75
               vd<-1
               bomba
            senao
               se (linha=15) e (coluna=5) entao
                  ponto[regJ]<-ponto[regJ]-75
                  vd<-1
                  bomba
               senao
                  se (linha=2) e (coluna=6) entao
                     ponto[regJ]<-ponto[regJ]-75
                     vd<-1
                     bomba
                  senao
                     se (linha=9) e (coluna=7) entao
                        ponto[regJ]<-ponto[regJ]-75
                        vd<-1
                        bomba
                     senao
                        se (linha=12) e (coluna=9) entao
                           ponto[regJ]<-ponto[regJ]-75
                           vd<-1
                           bomba
                        senao
                           se (linha=6) e (coluna=11) entao
                              ponto[regJ]<-ponto[regJ]-75
                              vd<-1
                              bomba
                           senao
                              se (linha=8) e (coluna=11) entao
                                 ponto[regJ]<-ponto[regJ]-75
                                 vd<-1
                                 bomba
                              senao
                                 se (linha=2) e (coluna=13) entao
                                    ponto[regJ]<-ponto[regJ]-75
                                    vd<-1
                                    bomba
                                 senao
                                    se (linha=4) e (coluna=13) entao
                                       ponto[regJ]<-ponto[regJ]-75
                                       vd<-1
                                       bomba
                                    senao
                                       se (linha=15) e (coluna=12) entao
                                          ponto[regJ]<-ponto[regJ]-75
                                          vd<-1
                                          bomba
                                       senao
                                          se (linha=8) e (coluna=14) entao
                                             ponto[regJ]<-ponto[regJ]-75
                                             vd<-1
                                             bomba
                                          senao
                                             se (linha=9) e (coluna=14) entao
                                                ponto[regJ]<-ponto[regJ]-75
                                                vd<-1
                                                bomba
                                             senao
                                                se (linha=3) e (coluna=3) entao
                                                   ponto[regJ]<-ponto[regJ]-75
                                                   vd<-1
                                                   bomba
                                                senao
                                                   se (linha=8) e (coluna=2) entao
                                                      ponto[regJ]<-ponto[regJ]-75
                                                      vd<-1
                                                      bomba
                                                   senao
                                                      se (linha=11) e (coluna=4) entao
                                                         ponto[regJ]<-ponto[regJ]-75
                                                         vd<-1
                                                         bomba
                                                      senao
                                                         se (linha=2) e (coluna=9) entao
                                                            ponto[regJ]<-ponto[regJ]-75
                                                            vd<-1
                                                            bomba
                                                         senao
                                                            se (linha=4) e (coluna=8) entao
                                                               ponto[regJ]<-ponto[regJ]-75
                                                               vd<-1
                                                               bomba
                                                            senao
                                                               se (linha=13) e (coluna=7) entao
                                                                  ponto[regJ]<-ponto[regJ]-75
                                                                  vd<-1
                                                                  bomba
                                                               senao
                                                                  se (linha=3) e (coluna=11) entao
                                                                     ponto[regJ]<-ponto[regJ]-75
                                                                     vd<-1
                                                                     bomba
                                                                  senao
                                                                     se (linha=5) e (coluna=15) entao
                                                                        ponto[regJ]<-ponto[regJ]-75
                                                                        vd<-1
                                                                        bomba
                                                                     senao
                                                                        se (linha=12) e (coluna=12) entao
                                                                           ponto[regJ]<-ponto[regJ]-75
                                                                           vd<-1
                                                                           bomba
                                                                        senao
                                                                           se (linha=14) e (coluna=15) entao
                                                                              ponto[regJ]<-ponto[regJ]-75
                                                                              vd<-1
                                                                              bomba
                                                                           fimse
                                                                        fimse
                                                                     fimse
                                                                  fimse
                                                               fimse
                                                            fimse
                                                         fimse
                                                      fimse
                                                   fimse
                                                fimse
                                             fimse
                                          fimse
                                       fimse
                                    fimse
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
fimfuncao
/////////////////////////////////

funcao derrotadificil () : inteiro
var
inicio
   se (linha=1) e (coluna=1) entao
      ponto[regJ]<-ponto[regJ]-100
      vd<-1
      bomba
   senao
      se (linha=3) e (coluna=1) entao
         ponto[regJ]<-ponto[regJ]-100
         vd<-1
         bomba
      senao
         se (linha=13) e (coluna=2) entao
            ponto[regJ]<-ponto[regJ]-100
            vd<-1
            bomba
         senao
            se (linha=9) e (coluna=5) entao
               ponto[regJ]<-ponto[regJ]-100
               vd<-1
               bomba
            senao
               se (linha=15) e (coluna=5) entao
                  ponto[regJ]<-ponto[regJ]-100
                  vd<-1
                  bomba
               senao
                  se (linha=2) e (coluna=6) entao
                     ponto[regJ]<-ponto[regJ]-100
                     vd<-1
                     bomba
                  senao
                     se (linha=9) e (coluna=7) entao
                        ponto[regJ]<-ponto[regJ]-100
                        vd<-1
                        bomba
                     senao
                        se (linha=12) e (coluna=9) entao
                           ponto[regJ]<-ponto[regJ]-100
                           vd<-1
                           bomba
                        senao
                           se (linha=6) e (coluna=11) entao
                              ponto[regJ]<-ponto[regJ]-100
                              vd<-1
                              bomba
                           senao
                              se (linha=8) e (coluna=11) entao
                                 ponto[regJ]<-ponto[regJ]-100
                                 vd<-1
                                 bomba
                              senao
                                 se (linha=2) e (coluna=13) entao
                                    ponto[regJ]<-ponto[regJ]-100
                                    vd<-1
                                    bomba
                                 senao
                                    se (linha=4) e (coluna=13) entao
                                       ponto[regJ]<-ponto[regJ]-100
                                       vd<-1
                                       bomba
                                    senao
                                       se (linha=15) e (coluna=12) entao
                                          ponto[regJ]<-ponto[regJ]-100
                                          vd<-1
                                          bomba
                                       senao
                                          se (linha=8) e (coluna=14) entao
                                             ponto[regJ]<-ponto[regJ]-100
                                             vd<-1
                                             bomba
                                          senao
                                             se (linha=9) e (coluna=14) entao
                                                ponto[regJ]<-ponto[regJ]-100
                                                vd<-1
                                                bomba
                                             senao
                                                se (linha=3) e (coluna=3) entao
                                                   ponto[regJ]<-ponto[regJ]-100
                                                   vd<-1
                                                   bomba
                                                senao
                                                   se (linha=8) e (coluna=2) entao
                                                      ponto[regJ]<-ponto[regJ]-100
                                                      vd<-1
                                                      bomba
                                                   senao
                                                      se (linha=11) e (coluna=4) entao
                                                         ponto[regJ]<-ponto[regJ]-100
                                                         vd<-1
                                                         bomba
                                                      senao
                                                         se (linha=2) e (coluna=9) entao
                                                            ponto[regJ]<-ponto[regJ]-100
                                                            vd<-1
                                                            bomba
                                                         senao
                                                            se (linha=4) e (coluna=8) entao
                                                               ponto[regJ]<-ponto[regJ]-100
                                                               vd<-1
                                                               bomba
                                                            senao
                                                               se (linha=13) e (coluna=7) entao
                                                                  ponto[regJ]<-ponto[regJ]-100
                                                                  vd<-1
                                                                  bomba
                                                               senao
                                                                  se (linha=3) e (coluna=11) entao
                                                                     ponto[regJ]<-ponto[regJ]-100
                                                                     vd<-1
                                                                     bomba
                                                                  senao
                                                                     se (linha=5) e (coluna=15) entao
                                                                        ponto[regJ]<-ponto[regJ]-100
                                                                        vd<-1
                                                                        bomba
                                                                     senao
                                                                        se (linha=12) e (coluna=12) entao
                                                                           ponto[regJ]<-ponto[regJ]-100
                                                                           vd<-1
                                                                           bomba
                                                                        senao
                                                                           se (linha=14) e (coluna=15) entao
                                                                              ponto[regJ]<-ponto[regJ]-100
                                                                              vd<-1
                                                                              bomba
                                                                           senao
                                                                              se (linha=1) e (coluna=3) entao
                                                                                 ponto[regJ]<-ponto[regJ]-100
                                                                                 vd<-1
                                                                                 bomba
                                                                              senao
                                                                                 se (linha=6) e (coluna=5) entao
                                                                                    ponto[regJ]<-ponto[regJ]-100
                                                                                    vd<-1
                                                                                    bomba
                                                                                 senao
                                                                                    se (linha=10) e (coluna=3) entao
                                                                                       ponto[regJ]<-ponto[regJ]-100
                                                                                       vd<-1
                                                                                       bomba
                                                                                    senao
                                                                                       se (linha=3) e (coluna=9) entao
                                                                                          ponto[regJ]<-ponto[regJ]-100
                                                                                          vd<-1
                                                                                          bomba
                                                                                       senao
                                                                                          se (linha=6) e (coluna=6) entao
                                                                                             ponto[regJ]<-ponto[regJ]-100
                                                                                             vd<-1
                                                                                             bomba
                                                                                          senao
                                                                                             se (linha=10) e (coluna=9) entao
                                                                                                ponto[regJ]<-ponto[regJ]-100
                                                                                                vd<-1
                                                                                                bomba
                                                                                             senao
                                                                                                se (linha=3) e (coluna=14) entao
                                                                                                   ponto[regJ]<-ponto[regJ]-100
                                                                                                   vd<-1
                                                                                                   bomba
                                                                                                senao
                                                                                                   se (linha=7) e (coluna=12) entao
                                                                                                      ponto[regJ]<-ponto[regJ]-100
                                                                                                      vd<-1
                                                                                                      bomba
                                                                                                   senao
                                                                                                      se (linha=13) e (coluna=11) entao
                                                                                                         ponto[regJ]<-ponto[regJ]-100
                                                                                                         vd<-1
                                                                                                         bomba
                                                                                                      senao
                                                                                                         se (linha=13) e (coluna=15) entao
                                                                                                            ponto[regJ]<-ponto[regJ]-100
                                                                                                            vd<-1
                                                                                                            bomba
                                                                                                         fimse
                                                                                                      fimse
                                                                                                   fimse
                                                                                                fimse
                                                                                             fimse
                                                                                          fimse
                                                                                       fimse
                                                                                    fimse
                                                                                 fimse
                                                                              fimse
                                                                           fimse
                                                                        fimse
                                                                     fimse
                                                                  fimse
                                                               fimse
                                                            fimse
                                                         fimse
                                                      fimse
                                                   fimse
                                                fimse
                                             fimse
                                          fimse
                                       fimse
                                    fimse
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
fimfuncao

/////////////////////////////////
funcao login (): inteiro
var
inicio
   se jogador[1]="" entao
      regJ<-1
   senao
      se jogador[2]="" entao
         regJ<-2
      senao
         se jogador[3]="" entao
            regJ<-3
         senao
            se jogador[4]="" entao
               regJ<-4
            senao
               se jogador[5]="" entao
                  regJ<-5
               senao
                  se jogador[6]="" entao
                     regJ<-6
                  senao
                     se jogador[7]="" entao
                        regJ<-7
                     senao
                        se jogador[8]="" entao
                           regJ<-8
                        senao
                           se jogador[9]="" entao
                              regJ<-9
                           senao
                              se jogador[10]="" entao
                                 regJ<-10
                              senao
                                 regJ<-1
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse



fimfuncao
//////////////////////////////////////////
funcao fechar (): inteiro
var
inicio
   para x de 1 ate 15 faca
      para y de 1 ate 15 faca
         t[x,y]<-" #"
      fimpara
   fimpara
   retorne 0


fimfuncao

//////////////////////////////////////////
funcao reinicia : inteiro
var
inicio
   regvermelho<-0
   regverde<-0
   regamarelo<-0
   regazul<-0
   fecho<-0
   sa<-0
   retorne 0
fimfuncao

//////////////////////////////////////////

procedimento vitoria
var
inicio
   limpatela
   escreval("        Você Venceu!!! ")
   escreval("                       ")
   escreval("        .-=========-.  ")
   escreval("        \'-=======-'/  ")
   escreval("        _|   .=.   |_  ")
   escreval("       ((|  {{1}}  |)) ")
   escreval("        \|   /|\   |/  ")
   escreval("         \__ '`' __/   ")
   escreval("           _`) (`_     ")
   escreval("         _/_______\_   ")
   escreval("        /___________\  ")
   escreval("                       ")
   escreval("                       ")


fimprocedimento

//////////////////////////////////////////

procedimento bomba
var
inicio
   limpatela
   escreval("       VOCÊ FOI EXPLODIDO!!!      ")
   escreval("                               ")
   escreval("       _.-^^---,,.,..--        ")
   escreval("    _--                 '--_   ")
   escreval("   <                       >)  ")
   escreval("   |                        |  ")
   escreval("    \._                  _./   ")
   escreval("       '''--. . , ; .--'''     ")
   escreval("            |  |  |            ")
   escreval("            |    ||            ")
   escreval("         .-=| | | |=-.         ")
   escreval("         '-=#$%&@%&=-'         ")
   escreval("            |     |            ")
   escreval("________.,-#@%&$&%@#~,.________")
   escreval("                               ")
   escreval
   escreval("Aperte enter para continuar")
   leia(fds)
   limpatela
fimprocedimento

//////////////////////////////////////////

procedimento podio
var
inicio
   escreval("                                                                          ",rankjogo[1])
   escreval("                                                                          ",ponto[10])
   escreval("                                                               #############################                                ")
   escreval("                                              ",rankjogo[2]:17,"#############################                                ")
   escreval("                         ",ponto[9]:22,"                ##########  __   ############         ",rankjogo[3])
   escreval("                                     #################################### /_ |  ############         ",ponto[8])
   escreval("                                     ########  ___   ####################  | |  ############################################")
   escreval("                                     ######## |__ \  ####################  | |  ############################################")
   escreval("                                     ########    ) | ####################  | |  #####################  ____   ##############")
   escreval("                                     ########   / /  ####################  | |  ##################### |___ \  ##############")
   escreval("                                     ########  / /_  ####################  |_|  #####################   __) | ##############")
   escreval("                                     ######## |____| ####################       #####################  |__ <  ##############")
   escreval("                                     ########        ################################################  ___) | ##############")
   escreval("                                     ################################################################ |____/  ##############")
   escreval("                                     ################################################################         ##############")
   escreval("                                     #######################################################################################")
   escreval("                                     #######################################################################################")
   escreval("Aperte enter para continuar")
   leia(fds)
   limpatela
fimprocedimento

//////////////////////////////////////////

funcao vermelho () : inteiro
var
inicio
   t[1,2]<-" 1"
   t[1,3]<-"  "
   t[1,4]<-"  "
   t[1,5]<-" 1"

   t[2,1]<-" 2"
   t[2,2]<-" 2"
   t[2,3]<-"  "
   t[2,4]<-"  "
   t[2,5]<-" 1"

   t[3,2]<-" 1"
   t[3,3]<-"  "
   t[3,4]<-"  "
   t[3,5]<-" 1"

   t[4,1]<-" 1"
   t[4,2]<-" 1"
   t[4,3]<-"  "
   t[4,4]<-"  "
   t[4,5]<-"  "

   t[5,1]<-"  "
   t[5,2]<-"  "
   t[5,3]<-"  "
   t[5,4]<-"  "
   t[5,5]<-"  "

   t[6,1]<-"  "
   t[6,2]<-"  "
   t[6,3]<-"  "
   t[6,4]<-"  "
   t[6,5]<-"  "

   t[7,1]<-"  "
   t[7,2]<-"  "
   t[7,3]<-"  "
   t[7,4]<-"  "
   t[7,5]<-"  "

   t[8,1]<-"  "
   t[8,2]<-"  "
   t[8,3]<-"  "
   t[8,4]<-" 1"
   t[8,5]<-" 1"

   t[9,1]<-"  "
   t[9,2]<-"  "
   t[9,3]<-"  "
   t[9,4]<-" 1"

   t[10,1]<-" "
   t[10,2]<-" "
   t[10,3]<-" "
   t[10,4]<-" 1"
   t[10,5]<-" 1"

   t[11,1]<-"  "
   t[11,2]<-"  "
   t[11,3]<-"  "
   t[11,4]<-"  "
   t[11,5]<-"  "

   t[12,1]<-" 1"
   t[12,2]<-" 1"
   t[12,3]<-" 1"
   t[12,4]<-"  "
   t[12,5]<-"  "

   t[13,1]<-" 1"
   t[13,3]<-" 1"
   t[13,4]<-"  "
   t[13,5]<-"  "

   t[14,1]<-" 1"
   t[14,2]<-" 1"
   t[14,3]<-" 1"
   t[14,4]<-" 1"
   t[14,5]<-" 1"

   t[15,1]<-"  "
   t[15,2]<-"  "
   t[15,3]<-"  "
   t[15,4]<-" 1"
fimfuncao

//////////////////////////////////////////

funcao amarelo() : inteiro
var
inicio

   t[11,9]<-" 1"
   t[11,10]<-" 1"
   t[11,11]<-"  "
   t[11,12]<-"  "
   t[11,13]<-"  "
   t[11,14]<-"  "
   t[11,15]<-"  "

   t[12,10]<-" 1"
   t[12,11]<-"  "
   t[12,12]<-"  "
   t[12,13]<-"  "
   t[12,14]<-"  "
   t[12,15]<-"  "

   t[13,9]<-" 1"
   t[13,10]<-" 1"
   t[13,11]<-"  "
   t[13,12]<-"  "
   t[13,13]<-"  "
   t[13,14]<-"  "
   t[13,15]<-"  "

   t[14,9]<-"  "
   t[14,10]<-"  "
   t[14,11]<-" 1"
   t[14,12]<-" 1"
   t[14,13]<-" 1"
   t[14,14]<-"  "
   t[14,15]<-"  "

   t[15,9]<-"  "
   t[15,10]<-"  "
   t[15,11]<-" 1"
   t[15,13]<-" 1"
   t[15,14]<-"  "
   t[15,15]<-"  "
fimfuncao

//////////////////////////////////////////

funcao azul() : inteiro
var
inicio
   t[1,6]<-" 1"
   t[1,7]<-" 1"
   t[1,8]<-" "
   t[1,9]<-" "
   t[1,10]<-" "

   t[2,7]<-" 1"
   t[2,8]<-" "
   t[2,9]<-" "
   t[2,10]<-" "

   t[3,6]<-" 1"
   t[3,7]<-" 1"
   t[3,8]<-" "
   t[3,9]<-" "
   t[3,10]<-" "

   t[4,6]<-" "
   t[4,7]<-" "
   t[4,8]<-" "
   t[4,9]<-" "
   t[4,10]<-" "

   t[5,6]<-" "
   t[5,7]<-" "
   t[5,8]<-" "
   t[5,9]<-" "
   t[5,10]<-" 1"

   t[6,6]<-" "
   t[6,7]<-" "
   t[6,8]<-" "
   t[6,9]<-" "
   t[6,10]<-" 1"

   t[7,6]<-" "
   t[7,7]<-" "
   t[7,8]<-" "
   t[7,9]<-" "
   t[7,10]<-" 2"

   t[8,6]<-" 2"
   t[8,7]<-" 1"
   t[8,8]<-" 1"
   t[8,9]<-" "
   t[8,10]<-" 1"

   t[9,6]<-" 2"
   t[9,8]<-" 1"
   t[9,9]<-" "
   t[9,10]<-" 1"

   t[10,6]<-" 2"
   t[10,7]<-" 1"
   t[10,8]<-" 1"
   t[10,9]<-" "
   t[10,10]<-" "

   t[11,6]<-" "
   t[11,7]<-" "
   t[11,8]<-" 1"

   t[12,6]<-" "
   t[12,7]<-" "
   t[12,8]<-" 1"

   t[13,6]<-" "
   t[13,7]<-" "
   t[13,8]<-" 1"

   t[14,6]<-" 1"
   t[14,7]<-" "
   t[14,8]<-" "

   t[15,6]<-" 1"
   t[15,7]<-" "
   t[15,8]<-" "
fimfuncao

//////////////////////////////////////////

funcao verde() : inteiro
var
inicio
   t[1,11]<-"  "
   t[1,12]<-" 1"
   t[1,13]<-" 1"
   t[1,14]<-" 1"
   t[1,15]<-"  "

   t[2,11]<-"  "
   t[2,12]<-" 1"
   t[2,14]<-" 1"
   t[2,15]<-"  "

   t[3,11]<-"  "
   t[3,12]<-" 2"
   t[3,13]<-" 2"
   t[3,14]<-" 2"
   t[3,15]<-"  "

   t[4,11]<-" "
   t[4,12]<-" 1"
   t[4,14]<-" 1"
   t[4,15]<-" "

   t[5,11]<-" 1"
   t[5,12]<-" 2"
   t[5,13]<-" 1"
   t[5,14]<-" 1"
   t[5,15]<-"  "

   t[6,12]<-" 1"
   t[6,13]<-" "
   t[6,14]<-" "
   t[6,15]<-" "

   t[7,11]<-" 2"
   t[7,12]<-" 2"
   t[7,13]<-" 1"
   t[7,14]<-" 1"
   t[7,15]<-" 1"

   t[8,12]<-" 1"
   t[8,13]<-" 2"
   t[8,15]<-" 2"

   t[9,11]<-" 1"
   t[9,12]<-" 1"
   t[9,13]<-" 2"
   t[9,15]<-" 2"

   t[10,11]<-"  "
   t[10,12]<-"  "
   t[10,13]<-" 1"
   t[10,14]<-" 1"
   t[10,15]<-" 1"
fimfuncao

//////////////////////////////////////////

funcao vermelhomedio () : inteiro
var
inicio
   t[1,2]<-" 1"
   t[1,3]<-"  "
   t[1,4]<-"  "
   t[1,5]<-" 1"

   t[2,1]<-" 2"
   t[2,2]<-" 3"
   t[2,3]<-" 1"
   t[2,4]<-" 1"
   t[2,5]<-" 1"

   t[3,2]<-" 2"
   t[3,4]<-" 1"
   t[3,5]<-" 1"

   t[4,1]<-" 1"
   t[4,2]<-" 2"
   t[4,3]<-" 1"
   t[4,4]<-" 1"
   t[4,5]<-"  "

   t[5,1]<-"  "
   t[5,2]<-"  "
   t[5,3]<-"  "
   t[5,4]<-"  "
   t[5,5]<-"  "

   t[6,1]<-"  "
   t[6,2]<-"  "
   t[6,3]<-"  "
   t[6,4]<-"  "
   t[6,5]<-"  "

   t[7,1]<-" 1"
   t[7,2]<-" 1"
   t[7,3]<-" 1"
   t[7,4]<-"  "
   t[7,5]<-"  "

   t[8,1]<-" 1"
   t[8,3]<-" 1"
   t[8,4]<-" 1"
   t[8,5]<-" 1"

   t[9,1]<-" 1"
   t[9,2]<-" 1"
   t[9,3]<-" 1"
   t[9,4]<-" 1"

   t[10,1]<-" "
   t[10,2]<-" "
   t[10,3]<-" 1"
   t[10,4]<-" 2"
   t[10,5]<-" 2"

   t[11,1]<-"  "
   t[11,2]<-"  "
   t[11,3]<-" 1"
   t[11,5]<-" 1"

   t[12,1]<-" 1"
   t[12,2]<-" 1"
   t[12,3]<-" 2"
   t[12,4]<-" 1"
   t[12,5]<-" 1"

   t[13,1]<-" 1"
   t[13,3]<-" 1"
   t[13,4]<-"  "
   t[13,5]<-"  "

   t[14,1]<-" 1"
   t[14,2]<-" 1"
   t[14,3]<-" 1"
   t[14,4]<-" 1"
   t[14,5]<-" 1"

   t[15,1]<-"  "
   t[15,2]<-"  "
   t[15,3]<-"  "
   t[15,4]<-" 1"
fimfuncao

//////////////////////////////////////////

funcao amarelomedio () : inteiro
var
inicio
   t[11,9]<-" 1"
   t[11,10]<-" 1"
   t[11,11]<-" 1"
   t[11,12]<-" 1"
   t[11,13]<-" 1"
   t[11,14]<-"  "
   t[11,15]<-"  "

   t[12,10]<-" 1"
   t[12,11]<-" 1"
   t[12,13]<-" 1"
   t[12,14]<-"  "
   t[12,15]<-"  "

   t[13,9]<-" 1"
   t[13,10]<-" 1"
   t[13,11]<-" 1"
   t[13,12]<-" 1"
   t[13,13]<-" 1"
   t[13,14]<-" 1"
   t[13,15]<-" 1"

   t[14,9]<-"  "
   t[14,10]<-"  "
   t[14,11]<-" 1"
   t[14,12]<-" 1"
   t[14,13]<-" 1"
   t[14,14]<-" 1"

   t[15,9]<-"  "
   t[15,10]<-"  "
   t[15,11]<-" 1"
   t[15,13]<-" 1"
   t[15,14]<-" 1"
   t[15,15]<-" 1"
fimfuncao

//////////////////////////////////////////

funcao azulmedio () : inteiro
var
inicio
   t[1,6]<-" 1"
   t[1,7]<-" 1"
   t[1,8]<-" 1"
   t[1,9]<-" 1"
   t[1,10]<-" 1"

   t[2,7]<-" 1"
   t[2,8]<-" 1"
   t[2,10]<-" 2"

   t[3,6]<-" 1"
   t[3,7]<-" 2"
   t[3,8]<-" 2"
   t[3,9]<-" 2"
   t[3,10]<-" 2"

   t[4,6]<-" "
   t[4,7]<-" 1"
   t[4,9]<-" 1"
   t[4,10]<-" 1"

   t[5,6]<-" "
   t[5,7]<-" 1"
   t[5,8]<-" 1"
   t[5,9]<-" 1"
   t[5,10]<-" 1"

   t[6,6]<-" "
   t[6,7]<-" "
   t[6,8]<-" "
   t[6,9]<-" "
   t[6,10]<-" 1"

   t[7,6]<-" "
   t[7,7]<-" "
   t[7,8]<-" "
   t[7,9]<-" "
   t[7,10]<-" 2"

   t[8,6]<-" 2"
   t[8,7]<-" 1"
   t[8,8]<-" 1"
   t[8,9]<-" "
   t[8,10]<-" 1"

   t[9,6]<-" 2"
   t[9,8]<-" 1"
   t[9,9]<-" "
   t[9,10]<-" 1"

   t[10,6]<-" 2"
   t[10,7]<-" 1"
   t[10,8]<-" 1"
   t[10,9]<-" "
   t[10,10]<-" "

   t[11,6]<-" "
   t[11,7]<-" "
   t[11,8]<-" 1"

   t[12,6]<-" 1"
   t[12,7]<-" 1"
   t[12,8]<-" 2"

   t[13,6]<-" 1"
   t[13,8]<-" 2"

   t[14,6]<-" 2"
   t[14,7]<-" 1"
   t[14,8]<-" 1"

   t[15,6]<-" 1"
   t[15,7]<-" "
   t[15,8]<-" "
fimfuncao

//////////////////////////////////////////

funcao verdemedio() : inteiro
var
inicio
   t[1,11]<-"  "
   t[1,12]<-" 1"
   t[1,13]<-" 1"
   t[1,14]<-" 1"
   t[1,15]<-"  "

   t[2,11]<-" 1"
   t[2,12]<-" 2"
   t[2,14]<-" 1"
   t[2,15]<-"  "

   t[3,12]<-" 3"
   t[3,13]<-" 2"
   t[3,14]<-" 2"
   t[3,15]<-"  "

   t[4,11]<-" 1"
   t[4,12]<-" 2"
   t[4,14]<-" 2"
   t[4,15]<-" 1"

   t[5,11]<-" 1"
   t[5,12]<-" 2"
   t[5,13]<-" 1"
   t[5,14]<-" 2"

   t[6,12]<-" 1"
   t[6,13]<-" "
   t[6,14]<-" 1"
   t[6,15]<-" 1"

   t[7,11]<-" 2"
   t[7,12]<-" 2"
   t[7,13]<-" 1"
   t[7,14]<-" 1"
   t[7,15]<-" 1"

   t[8,12]<-" 1"
   t[8,13]<-" 2"
   t[8,15]<-" 2"

   t[9,11]<-" 1"
   t[9,12]<-" 1"
   t[9,13]<-" 2"
   t[9,15]<-" 2"

   t[10,11]<-"  "
   t[10,12]<-"  "
   t[10,13]<-" 1"
   t[10,14]<-" 1"
   t[10,15]<-" 1"
fimfuncao

//////////////////////////////////////////

funcao vermelhodificil() : inteiro
var
inicio
   t[1,2]<-" 1"
   t[1,4]<-" 1"
   t[1,5]<-" 1"

   t[2,1]<-" 2"
   t[2,2]<-" 4"
   t[2,3]<-" 2"
   t[2,4]<-" 2"
   t[2,5]<-" 1"

   t[3,2]<-" 2"
   t[3,4]<-" 1"
   t[3,5]<-" 1"

   t[4,1]<-" 1"
   t[4,2]<-" 2"
   t[4,3]<-" 1"
   t[4,4]<-" 1"
   t[4,5]<-"  "

   t[5,1]<-"  "
   t[5,2]<-"  "
   t[5,3]<-"  "
   t[5,4]<-" 1"
   t[5,5]<-" 2"

   t[6,1]<-"  "
   t[6,2]<-"  "
   t[6,3]<-"  "
   t[6,4]<-" 1"

   t[7,1]<-" 1"
   t[7,2]<-" 1"
   t[7,3]<-" 1"
   t[7,4]<-" 1"
   t[7,5]<-" 2"

   t[8,1]<-" 1"
   t[8,3]<-" 1"
   t[8,4]<-" 1"
   t[8,5]<-" 1"

   t[9,1]<-" 1"
   t[9,2]<-" 2"
   t[9,3]<-" 2"
   t[9,4]<-" 2"

   t[10,1]<-" "
   t[10,2]<-" 1"
   t[10,4]<-" 3"
   t[10,5]<-" 2"

   t[11,1]<-"  "
   t[11,2]<-" 1"
   t[11,3]<-" 2"
   t[11,5]<-" 1"

   t[12,1]<-" 1"
   t[12,2]<-" 1"
   t[12,3]<-" 2"
   t[12,4]<-" 1"
   t[12,5]<-" 1"

   t[13,1]<-" 1"
   t[13,3]<-" 1"
   t[13,4]<-"  "
   t[13,5]<-"  "

   t[14,1]<-" 1"
   t[14,2]<-" 1"
   t[14,3]<-" 1"
   t[14,4]<-" 1"
   t[14,5]<-" 1"

   t[15,1]<-"  "
   t[15,2]<-"  "
   t[15,3]<-"  "
   t[15,4]<-" 1"
fimfuncao

//////////////////////////////////////////

funcao amarelodificil () : inteiro
var
inicio
   t[11,9]<-" 2"
   t[11,10]<-" 2"
   t[11,11]<-" 1"
   t[11,12]<-" 1"
   t[11,13]<-" 1"
   t[11,14]<-"  "
   t[11,15]<-"  "

   t[12,10]<-" 2"
   t[12,11]<-" 2"
   t[12,13]<-" 1"
   t[12,14]<-" 1"
   t[12,15]<-" 1"

   t[13,9]<-" 1"
   t[13,10]<-" 2"
   t[13,12]<-" 2"
   t[13,13]<-" 1"
   t[13,14]<-" 2"

   t[14,9]<-"  "
   t[14,10]<-" 1"
   t[14,11]<-" 2"
   t[14,12]<-" 2"
   t[14,13]<-" 1"
   t[14,14]<-" 2"

   t[15,9]<-"  "
   t[15,10]<-"  "
   t[15,11]<-" 1"
   t[15,13]<-" 1"
   t[15,14]<-" 1"
   t[15,15]<-" 1"
fimfuncao

//////////////////////////////////////////

funcao azuldificil () : inteiro
var
inicio
   t[1,6]<-" 1"
   t[1,7]<-" 1"
   t[1,8]<-" 1"
   t[1,9]<-" 1"
   t[1,10]<-" 1"

   t[2,7]<-" 1"
   t[2,8]<-" 2"
   t[2,10]<-" 3"

   t[3,6]<-" 1"
   t[3,7]<-" 2"
   t[3,8]<-" 3"
   t[3,10]<-" 3"

   t[4,6]<-" "
   t[4,7]<-" 1"
   t[4,9]<-" 2"
   t[4,10]<-" 1"

   t[5,6]<-" 2"
   t[5,7]<-" 2"
   t[5,8]<-" 1"
   t[5,9]<-" 1"
   t[5,10]<-" 1"

   t[6,7]<-" 1"
   t[6,8]<-" "
   t[6,9]<-" "
   t[6,10]<-" 1"

   t[7,6]<-" 2"
   t[7,7]<-" 1"
   t[7,8]<-" "
   t[7,9]<-" "
   t[7,10]<-" 2"

   t[8,6]<-" 2"
   t[8,7]<-" 1"
   t[8,8]<-" 1"
   t[8,9]<-" "
   t[8,10]<-" 1"

   t[9,6]<-" 2"
   t[9,8]<-" 2"
   t[9,9]<-" 1"
   t[9,10]<-" 2"

   t[10,6]<-" 2"
   t[10,7]<-" 1"
   t[10,8]<-" 2"
   t[10,10]<-" 1"

   t[11,6]<-" "
   t[11,7]<-" "
   t[11,8]<-" 2"

   t[12,6]<-" 1"
   t[12,7]<-" 1"
   t[12,8]<-" 2"

   t[13,6]<-" 1"
   t[13,8]<-" 2"

   t[14,6]<-" 2"
   t[14,7]<-" 1"
   t[14,8]<-" 1"

   t[15,6]<-" 1"
   t[15,7]<-" "
   t[15,8]<-" "
fimfuncao

//////////////////////////////////////////

funcao verdedificil() : inteiro
var
inicio
   t[1,11]<-"  "
   t[1,12]<-" 1"
   t[1,13]<-" 1"
   t[1,14]<-" 1"
   t[1,15]<-"  "

   t[2,11]<-" 1"
   t[2,12]<-" 2"
   t[2,14]<-" 2"
   t[2,15]<-" 1"

   t[3,12]<-" 3"
   t[3,13]<-" 3"
   t[3,15]<-" 1"

   t[4,11]<-" 1"
   t[4,12]<-" 2"
   t[4,14]<-" 3"
   t[4,15]<-" 1"

   t[5,11]<-" 1"
   t[5,12]<-" 2"
   t[5,13]<-" 1"
   t[5,14]<-" 2"

   t[6,12]<-" 1"
   t[6,13]<-" "
   t[6,14]<-" 1"
   t[6,15]<-" 1"

   t[7,11]<-" 3"
   t[7,13]<-" 2"
   t[7,14]<-" 1"
   t[7,15]<-" 1"

   t[8,12]<-" 1"
   t[8,13]<-" 3"
   t[8,15]<-" 2"

   t[9,11]<-" 1"
   t[9,12]<-" 1"
   t[9,13]<-" 2"
   t[9,15]<-" 2"

   t[10,11]<-"  "
   t[10,12]<-"  "
   t[10,13]<-" 1"
   t[10,14]<-" 1"
   t[10,15]<-" 1"
fimfuncao

//////////////PROGRAMA PRINCIPAL//////////

enquanto menu <> 5  faca
  se sa=0 entao
   menup
   leia(menu)
   limpatela
  fimse
   //MENU 1//
   se menu = 1 entao
      vd<-0
      a<-login
      jogador[regJ]<-jogadoral
      //NOME DO JOGADOR E DIFICULDADE//
      se sa=0 entao
         escreval("Insira o nick do jogador")
         leia(jogador[regJ])
         limpatela
      fimse
      dificuldade
      escreval
      leia(dif)
      enquanto (dif<0) ou (dif>3) faca
               escreval("Insira um valor válido para dificuldade")
               leia(dif)
      fimenquanto
      limpatela
      escolha dif
         //DIFICULDADE FÁCIL//
      caso 1
         enquanto vd=0 faca
            se fecho=0 entao
               a<-fechar
               fecho<-1
               tabela
            fimse

            escreval ("ESCOLHA UM QUADRADINHO PARA INTERAGIR")
            escreva("Linha-> ")
            leia(linha)
            escreva("Coluna-> ")
            leia(coluna)
            enquanto (linha<0) ou (linha>15) faca
               escreval("Insira um valor válido para linha")
               leia(linha)
            fimenquanto
            enquanto (coluna<0) ou (coluna>15) faca
               escreval("Insira um valor válido para coluna")
               leia(coluna)
            fimenquanto
            escreval("")
            escreval("=====================")
            escreval("| Escolha uma ação  |")
            escreval("=====================")
            escreval("1-Dar um clique   ")
            escreval("2-Colocar Bandeira")
            leia (bc)

            se bc=1 entao
               a<-derrotafacil
               se vd=0 entao
                  //ÁREA VERMELHA FÁCIL//
                  escolha linha
                  caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15
                       escolha coluna
                       caso 1, 2, 3, 4, 5
                           se regvermelho=0 entao
                              limpatela
                              a<-vermelho
                              regvermelho<-1
                              tabela
                           fimse
                       fimescolha
                  fimescolha
                  //ÁREA AZUL FÁCIL//
                  escolha linha
                  caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15
                       escolha coluna
                       caso 6, 7, 8, 9, 10
                            se regazul=0 entao
                               limpatela
                               a<-azul
                               regazul<-1
                               tabela
                            fimse
                       fimescolha
                  fimescolha
                  //ÁREA AMARELA FÁCIL//
                  escolha linha
                  caso 11, 12, 13, 14, 15
                       escolha coluna
                       caso 9, 10, 11, 12, 13, 14, 15
                            se regamarelo=0 entao
                               limpatela
                               a<-amarelo
                               regamarelo<-1
                               tabela
                            fimse
                       fimescolha
                  fimescolha
                  //ÁREA VERDE FÁCIL//
                  escolha linha
                  caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
                       escolha coluna
                       caso 11, 12, 13, 14, 15
                            se regverde=0 entao
                               limpatela
                               a<-verde
                               regverde<-1
                               tabela
                            fimse
                       fimescolha
                  fimescolha
               fimse //vd=0//
            fimse //bc=clique//

                 //BANDEIRA FÁCIL//
                 se bc=2 entao
                    t[linha,coluna]<-"|> "
                    a<-vitoriafacil
                 fimse
                 se vd=0 entao
                    escreval("Aperte enter para continuar")
                    leia(fds)
                    limpatela
                    tabela
                 fimse
                 se vd=1 entao
                    a<-reinicia
                 fimse
         fimenquanto//vd=0 FÁCIL//

      //DIFICULDADE MÉDIA//
      caso 2
         enquanto vd=0 faca
            se fecho=0 entao
               a<-fechar
               fecho<-1
               tabela
            fimse

            escreval ("ESCOLHA UM QUADRADINHO PARA INTERAGIR")
            escreva("Linha-> ")
            leia(linha)
            escreva("Coluna-> ")
            leia(coluna)
            enquanto (linha<0) ou (linha>15) faca
               escreval("Insira um valor válido para linha")
               leia(linha)
            fimenquanto
            enquanto (coluna<0) ou (coluna>15) faca
               escreval("Insira um valor válido para coluna")
               leia(coluna)
            fimenquanto
            escreval("")
            escreval("=====================")
            escreval("| Escolha uma ação  |")
            escreval("=====================")
            escreval("1-Dar um clique   ")
            escreval("2-Colocar Bandeira")
            leia (bc)

            se bc=1 entao
               a<-derrotamedio
               se vd=0 entao
                  //ÁREA VERMELHA MÉDIO//
                  escolha linha
                  caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15
                       escolha coluna
                       caso 1, 2, 3, 4, 5
                           se regvermelho=0 entao
                              limpatela
                              a<-vermelhomedio
                              regvermelho<-1
                              tabela
                           fimse
                       fimescolha
                  fimescolha
                  //ÁREA AZUL MÉDIO//
                  escolha linha
                  caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15
                       escolha coluna
                       caso 6, 7, 8, 9, 10
                            se regazul=0 entao
                               limpatela
                               a<-azulmedio
                               regazul<-1
                               tabela
                            fimse
                       fimescolha
                  fimescolha
                  //ÁREA AMARELA MÉDIO//
                  escolha linha
                  caso 11, 12, 13, 14, 15
                       escolha coluna
                       caso 9, 10, 11, 12, 13, 14, 15
                            se regamarelo=0 entao
                               limpatela
                               a<-amarelomedio
                               regamarelo<-1
                               tabela
                            fimse
                       fimescolha
                  fimescolha
                  //ÁREA VERDE MÉDIO//
                  escolha linha
                  caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
                       escolha coluna
                       caso 11, 12, 13, 14, 15
                            se regverde=0 entao
                               limpatela
                               a<-verdemedio
                               regverde<-1
                               tabela
                            fimse
                       fimescolha
                  fimescolha
               fimse
            fimse

                 //BANDEIRA MÉDIO//
                 se bc=2 entao
                    t[linha,coluna]<-"|> "
                    a<-vitoriamedio
                 fimse
                 se vd=0 entao
                    escreval("Aperte enter para continuar")
                    leia(fds)
                    limpatela
                    tabela
                 fimse
                 se vd=1 entao
                    a<-reinicia
                 fimse
         fimenquanto//vd=0 MÉDIO//

      //DIFICULDADE DIFÍCIL//
      caso 3
         enquanto vd=0 faca
            se fecho=0 entao
               a<-fechar
               fecho<-1
               tabela
            fimse

            escreval ("ESCOLHA UM QUADRADINHO PARA INTERAGIR")
            escreva("Linha-> ")
            leia(linha)
            escreva("Coluna-> ")
            leia(coluna)
            enquanto (linha<0) ou (linha>15) faca
               escreval("Insira um valor válido para linha")
               leia(linha)
            fimenquanto
            enquanto (coluna<0) ou (coluna>15) faca
               escreval("Insira um valor válido para coluna")
               leia(coluna)
            fimenquanto
            escreval("")
            escreval("=====================")
            escreval("| Escolha uma ação  |")
            escreval("=====================")
            escreval("1-Dar um clique   ")
            escreval("2-Colocar Bandeira")
            leia (bc)

            se bc=1 entao
               a<-derrotadificil
               se vd=0 entao
                  //ÁREA VERMELHA DIFÍCIL//
                  escolha linha
                  caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15
                       escolha coluna
                       caso 1, 2, 3, 4, 5
                           se regvermelho=0 entao
                              limpatela
                              a<-vermelhodificil
                              regvermelho<-1
                              tabela
                           fimse
                       fimescolha
                  fimescolha
                  //ÁREA AZUL DIFÍCIL//
                  escolha linha
                  caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15
                       escolha coluna
                       caso 6, 7, 8, 9, 10
                            se regazul=0 entao
                               limpatela
                               a<-azuldificil
                               regazul<-1
                               tabela
                            fimse
                       fimescolha
                  fimescolha
                  //ÁREA AMARELA DIFÍCIL//
                  escolha linha
                  caso 11, 12, 13, 14, 15
                       escolha coluna
                       caso 9, 10, 11, 12, 13, 14, 15
                            se regamarelo=0 entao
                               limpatela
                               a<-amarelodificil
                               regamarelo<-1
                               tabela
                            fimse
                       fimescolha
                  fimescolha
                  //ÁREA VERDE DIFÍCIL//
                  escolha linha
                  caso 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
                       escolha coluna
                       caso 11, 12, 13, 14, 15
                            se regverde=0 entao
                               limpatela
                               a<-verdedificil
                               regverde<-1
                               tabela
                            fimse
                       fimescolha
                  fimescolha
               fimse
            fimse
                 //BANDEIRA DIFÍCIL//
                 se bc=2 entao
                    t[linha,coluna]<-"|> "
                    a<-vitoriadificil
                 fimse
                 se vd=0 entao
                    escreval("Aperte enter para continuar")
                    leia(fds)
                    limpatela
                    tabela
                 fimse
                 se vd=1 entao
                    a<-reinicia
                 fimse
         fimenquanto//vd=0 DIFÍCIL//
         
      fimescolha//difuculdade//
   fimse//se menu=1//

         //MENU 2//
         se menu = 2 entao
            sa<-1
            para b de 1 ate 10 faca
               escreval(b,"->",jogador[b])
            fimpara
            escreval("Escolha o save em que deseja jogar")
            leia (save)
            enquanto (save<0) ou (save>10) faca
               escreval("Insira um valor válido")
               leia(save)
            fimenquanto
            jogadoral<-jogador[save]
            para c de 1 ate 10 faca
               se c=save entao
                  jogador[regJ]<-""
                  regJ<-c
               fimse
            fimpara
            limpatela
         menu<-1
         fimse

         //MENU 3//
         se menu=3 entao
            para ranka de 1 ate 10-1 faca
               para rankb de ranka+1 ate 10 faca
                  se ponto[ranka]>ponto[rankb] entao
                     rankc<-ponto[ranka]
                     jogac<- jogador[ranka]
                     ponto[ranka]<-ponto[rankb]
                     rankjogo[ranka]<-jogador[rankb]
                     ponto[rankb]<-rankc
                     rankjogo[rankb]<-jogac
                  senao
                     rankjogo[ranka] <- jogador[ranka]
                     rankjogo[rankb] <- jogador[rankb]
                  fimse
               fimpara
            fimpara
            podio
         fimse
         //MENU 4//
         se menu=4 entao
            pag<-1
            pag1
            enquanto (pag>=1) e (pag<5) faca

                    leia(sss)
                    limpatela
                    se sss=1 entao
                       pag<-pag-1
                       senao
                            se sss=2 entao
                               pag<-5
                               senao
                                    se sss=3 entao
                                       pag<-pag+1
                                    fimse
                            fimse
                    fimse

                    se pag=1 entao
                       pag1
                    fimse
                         se pag=2 entao
                            pag2
                         fimse
                              se pag=3 entao
                                 pag3
                              fimse
                                   se pag=4 entao
                                      pag4
                                   fimse
            fimenquanto
            limpatela
         fimse
fimenquanto
Fimalgoritmo
