module Relatorio where
  main:: IO ()
  main = putStr relatorio

  tamanho:: Int
  tamanho=30

  relatorio::String
  relatorio = cabecalho ++ "\n" ++ corpo ++ "\n" ++ rodape ++ "\n"
 
  cabecalho::String
  cabecalho = imprimirSimbolo tamanho '-' ++ "\n" ++ "Empresa Modelo" ++ "\n" ++ imprimirSimbolo tamanho '-' ++ "\n"

  corpo::String
  corpo = imprimirSimbolo tamanho '-' ++ "\n" ++ "Dados de venda" ++ "\n" ++ imprimirSimbolo tamanho '-' ++ "\n" ++ imprimirSimbolo tamanho '-' ++ "\n"  ++ imprimirSimbolo tamanho '-' ++ "\n" ++ imprimeMeses 12 ++ imprimirSimbolo tamanho '-' ++ "\n"

  vendas :: Int -> Int
  vendas 1 = 10
  vendas 2 = 12
  vendas 3 = 8
  vendas 4 = 0
  vendas 5 = 30
  vendas 6 = 23
  vendas 7 = 23
  vendas 8 = 9
  vendas 9 = 19
  vendas 10 = 13
  vendas 11 = 22
  vendas 12 = 18


  mes :: Int -> String
  mes 1 = "Janeiro"
  mes 2 = "Fevereiro"
  mes 3 = "Marco"
  mes 4 = "Abril"
  mes 5 = "Maio"
  mes 6 = "Junho"
  mes 7 = "Julho"
  mes 8 = "Agosto"
  mes 9 = "Setembro"
  mes 10 = "Outubro"
  mes 11 = "Novembro"
  mes 12 = "Dezembro"

  imprimeMeses :: Int -> String
  imprimeMeses 1 = imprimeMes 1
  imprimeMeses n = imprimeMeses (n-1) ++ imprimeMes n

  imprimeMes :: Int -> String
  imprimeMes n = mes n ++ imprimirSimbolo 15 '.' ++ show(vendas n) ++ "\n"

  rodape::String
  rodape = imprimirSimbolo tamanho '-' ++ "\n" ++ "Funções do relatório" ++ "\n" ++ imprimirSimbolo tamanho '-' ++ "\n" ++ "\n" ++ imprimirSimbolo tamanho '-' ++ "\n"


  maiorVenda:: Int -> Int
  maiorVenda 1 = vendas 1
  maiorVenda x 
    | x >= maiorVenda(x-1) = vendas x
    | otherwise = maiorVenda(x-1)

  vendaZerada:: Int-> Bool
  vendaZerada  1 = vendas 1 ==0 
  vendaZerada x = vendaZerada (x-1)
    ||vendas x ==0

  imprimirSimbolo :: Int -> Char -> String
  imprimirSimbolo 0 ch = ""
  imprimirSimbolo n ch = ch : imprimirSimbolo (n-1) ch
{-
corpo :: String
corpo = imprimeMeses 12

imprimeMeses :: Int -> String
imprimeMeses 1 = imprimeMes 1
imprimeMeses n = imprimeMeses (n-1) ++ imprimeMes n

imprimeMes :: Int -> String
imprimeMes n = mes n ++ "  " ++ show(vendas n) ++ "\n"

mes :: Int -> String
mes 1 = "Janeiro"
mes 2 = "Fevereiro"
mes 3 = "Marco"
mes 4 = "Abril"
mes 5 = "Maio"
mes 6 = "Junho"
mes 7 = "Julho"
mes 8 = "Agosto"
mes 9 = "Setembro"
mes 10 = "Outubro"
mes 11 = "Novembro"
mes 12 = "Dezembro"

rodape :: String
rodape =  imprimirTracos tamanho ++ "\n" ++
          "Soma Total:" ++ show (somavendas 12) ++ "\n"

vendas :: Int -> Int
vendas 1 = 10
vendas 2 = 12
vendas 3 = 8
vendas 4 = 0
vendas 5 = 30
vendas 6 = 23
vendas 7 = 23
vendas 8 = 9
vendas 9 = 19
vendas 10 = 13
vendas 11 = 22
vendas 12 = 18
vendas _  = 0

somavendas :: Int -> Int
somavendas 1 = vendas 1
somavendas n = vendas n + somavendas (n-1)

--------------------------------------------------------
-- Implementar as funções abaixo utilizando recursão
-- Incluir as informações no relatório de Vendas
--------------------------------------------------------

-- Calcular a maior venda entre o mês 1 e n, inclusive
maiorvenda :: Int -> Int
maiorvenda n = undefined

-- Verificar se há venda zerada entre o mês 1 e n, inclusive.
vendaZerada :: Int -> Bool
vendaZerada n = undefined

-- Retorna a quantidade de vendas zeradas entre o mês 1 e n, inclusive
quantidadeVendaZerada :: Int -> Int
quantidadeVendaZerada n = undefined

-- Calcular a média de vendas no entre o mês 1 e n, inclusive.
mediaVendas :: Int -> Float
mediaVendas n = undefined

------------------------------------------------
-- TO DO:

-- Melhorar layout do relatório conforme tamanho
-- Centralizar os títulos 
-- Calcular desvio padrão
-- Criar função Haskell para plotar gráfico de vendas 
-- Gerar relatório trimestral, semestral, anual, ... (função relatório deve receber parâmetro!!!)
-- relatorio :: Int -> String
-- Incluir preço do produto. 
-- preco = 3450.30
-- Incluir no relatório o total de vendas por mês (R$)
-- Incluir no relatório o total de vendas (R$)
------------------------------------------------

-}

