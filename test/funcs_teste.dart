import 'package:test/test.dart';
import 'package:dart_application/funcs.dart';


main(){

    group('testes de remoção e adição de produtos', (){
      test('adição de produtos', () {
        expect(adicionarQuantidade(quantidade: 50, valor: 10),60);
      });

      test('adição de produtos caso chegue no limite máximo', () {
        expect(adicionarQuantidade(quantidade: 50, valor: 60),50);
      });

      test('remoção de produtos', () {
        expect(subtrairQuantidade('celular', 60, 10), 50);
      });

      test('remoção de produtos caso passe o limite minimo', () {
        expect(subtrairQuantidade('celular', 10, 60), 10);
      });

  });

    group('testes de descontos', (){

      test('verificar distribuição de frete para membros', (){
        expect(planosFrete(40, 60.99, 'Prime'),60.99);
      });

      test('verificar distribuição de frete gratuito', (){
        expect(()=> planosFrete(40, -60.99, 'Prime'), throwsException);
      });

    });

}