import 'dart:io';

// Como é avaliação, pode-se inserir comentários para explicar/justificar
// a solução/implementação. Caso não tenha, irei interpretar conforme apresentado.

// Critérios de Avaliação: (Tudo que estudamos durante o período)

// Alinhamento com o escopo/domínio;
// Complexidade e/ou relevância da função;
// Baixo acoplamento (capacidade de reuso) e coesão das definições;
// Coesão e coerência na sintaxe e semântica;
// Legibilidade do código, nomenclatura sugestivas das funções, variáveis e parâmetros;
// Uso correto e adequado do tratamento de erros e validações.

// elaborar 10 funções correlatas que tratem regras de negócio ou que de suporte
// a requisitos do projeto. As funções elaboradas deverá possuir:

//(i)  anonymous function e/ou arrow function (pelo menos 2 exemplos);

//(ii) parâmetros posicionais obrigatórios e opcionais;

//(iii) parâmetros nomeados obrigatórios e opcionais; e



//(iv) testes unitários.

//==============================================================================


double adicionarQuantidade(
    {required double quantidade,
    required double valor,
    double limitemax = 100,}) {
  double adicao = (quantidade + valor);

  if (adicao >= limitemax) {
    print(// Caso seja alcançado o limite maximo, o usuário sera informado
        'O limite maximo do produto foi atingido.');
    return quantidade;
  } else {
    // Caso esteja tudo de acordo, o valor irá ser adicionado normalmente
    print('Foram adicionados $valor ddo produto, o total agora é de $adicao');
    return quantidade = (quantidade = adicao);
  }
}

//==============================================================================

//==============================================================================


double subtrairQuantidade(String produto, double quantidade, double valor) {
  double subtracao = (quantidade - valor);

  // Caso a quantidade seja igual a 0, será informado ao usuário, e atualizado o valor
  if (subtracao == 0) {
    print('A quantidade de $produto chegou em $subtracao');
    return quantidade = (quantidade = subtracao);
  }
  // Caso a quantidade seja menor que 0, será informado ao Funcionario, e o valor não será atualizado.
  else if (subtracao < 0) {
    print(
        'O solicitado está abaixo do disponivel, há apenas $quantidade de $produto em estoque');
    return quantidade;
  } else {
    // Caso não passe por nenhum if, o valor será acrescentado e adicionado normalmente.
    print('Foram removidos $valor de $produto o total agora é de $subtracao');
    return quantidade = subtracao;
  }
}
//==============================================================================

//==============================================================================

String quantProdutos(
    double quantidade, double valor, double limitemax, Function acao) {
  return acao(quantidade, valor, limitemax);
}

void menuQuantidades() {
  print('''Escolha uma opção: 
    1 - Adicionar no estoque;
    2 - Remover no estoque;
  ''');

  print('Escolha a opção: ');
  var opcao = int.parse(stdin.readLineSync()!);

  if (opcao == 1) {
    // Exibe se foi adicionado ou chegou ao limite | Função Anonima
    print('Escolha a quantidade de produto: ');
    var valor = double.parse(stdin.readLineSync()!);
    quantProdutos(
      50,
      valor,
      100,
      (double quantidade, double valor, double limitemax) {
        if (quantidade + valor > limitemax) {
          var resposta = 'Limite maximo alcançado';
          print(resposta);
          return resposta;
        } else {
          var resposta = 'Adicionado';
          print(resposta);
          return resposta;
        }
      },
    );
  } else if (opcao == 2) {
    // Exibe se foi removido ou zerado | Arrow Function
    print('Escolha a quantidade de produto: ');
    var valor = double.parse(stdin.readLineSync()!);
    var resultado = quantProdutos(
        50,
        valor,
        100,
        (double quantidade, double valor) =>
            (valor < quantidade) ? 'Removidos' : 'Estoque Zerado');
    print(resultado);
  } else {
    print("opcao invalida");
  }
  ;
}
//==============================================================================

//==============================================================================

// Suponhamos que, as variaveis abaixos tenham sido requisitadas 
// por um Banco de dados, essa Arrow function apenas 

String produto = "Exemplo de produto";
late var quantidade;
late var valorPorUnidade;
late var valor;

mostrarCalculoDoValoPorUnidade() => {

  valor = (valorPorUnidade * quantidade),
  
  print(valor)

  };
//==============================================================================


//==============================================================================

// Regra de Negocio, comprar acima de 50 unidade ganham 10% de desconto geral.
double descontoPorQuantidades({required desconto, required quantidade, required valorPorUnidade}){

if (quantidade > 50) {
  double valorDescontado = (quantidade * valorPorUnidade) / desconto;
  return valorDescontado;
} else{
    valor = valorPorUnidade * quantidade;
    return valor;
  } 
}
//==============================================================================

//==============================================================================

// Regra de negócio, em promoções, ao comprar X quantidades de tal produto, você
// recebe desconto por unidade.
double descontoPorUnidade({valorDeterminado = 3, required double desconto, required double quantidade, required double valorPorUnidade,}) {

  if (quantidade > valorDeterminado) {
    var  valor =  valorPorUnidade / desconto;
    var valorUnidadeDescontado = quantidade * valor;
    return valorUnidadeDescontado; 
  }
  else{ 
    valor = valorPorUnidade * quantidade;
  return valor;
  }
}
//==============================================================================


//==============================================================================
// regra de negócio, caso o cliente possua uma conta "Prime", ele não pagara fretes
// a forma de calculo de frete nesta função está totalmente errada, o correto seria
// a utilização de dependencias que peguem a localização exata, ou API's que busquem
// a localização pelo CEP.
double planosFrete(double distancia, double valor, String planos){

  double valorFrete;

  if (planos == 'Prime'){
    valorFrete =
    valorFrete = valor;
    return valorFrete;
  } else {
    distancia / 10;
    valorFrete = distancia * valor;
    return valorFrete;
  }

}
//==============================================================================

