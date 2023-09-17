##  A ideia fundamental por trás da busca binária é dividir repetidamente a lista pela metade e
## descartar uma metade com base na comparação do elemento procurado com o elemento no meio da lista.
## Esse processo é repetido até que o elemento desejado seja encontrado ou até que seja determinado
## que o elemento não está na lista. O maior problema é ordenar a lista antes.

def search_recursivo(array, valor_alvo, esquerda, direita) # Função recursiva que realiza a busca.
  return -1 if esquerda > direita

  meio = esquerda + (direita - esquerda) /2

  if array[meio] == valor_alvo
    return meio
  elsif array[meio] < valor_alvo
    return search_recursivo(array, valor_alvo, meio +1, direita)
  else
    return search_recursivo(array, valor_alvo, esquerda, meio-1)
  end

end

def ordenado?(array)
  (0...(array.length -1)).each do |i|
    return false if array[i] > array[i+1]
  end
  return true
end

def binary_search(array, valor_alvo) # Função principal com a inicialização e a chamada da função recursiva
  return -1 unless ordenado?(array)
  return search_recursivo(array, valor_alvo, 0, array.length -1)
end
