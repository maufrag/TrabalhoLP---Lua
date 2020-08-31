function AdicionarValorNaLista(colecao, valor)
  table.insert(colecao, tonumber(valor));
end

function VerificarSeValorEstaNaLista(valor, colecao)

  for chave, elemento in pairs(colecao) do
    if elemento == valor then
      return;
    end
  end

  AdicionarValorNaLista(colecao, valor);

end

function ValidarValorInformado(valor, colecao)
 
  if type(tonumber(valor)) == "number" then
    VerificarSeValorEstaNaLista(valor, colecao);
  end    
end

function OrdenarLista(colecao)
 table.sort(colecao);
end

function ExibirSegundoMaiorElemento(colecao)
  local tamanho = table.getn(colecao);

  if tamanho == 0 then
    print("Nenhum valor foi informado");
    return;
  elseif tamanho == 1 then
    io.write("O array só possui um elemento e seu valor é: " .. colecao[tamanho]);
  else
    OrdenarLista(colecao);
    io.write("O segundo maior elemento do array é: " .. colecao[tamanho - 1])
  end
end



local lista = {};
for i = 1, 10 do
  io.write("Informe um valor\n");
  local valor = io.read();
  ValidarValorInformado(valor, lista);
end

ExibirSegundoMaiorElemento(lista);
