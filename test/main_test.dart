import 'package:dart_calculadoraimc/dart_calculadoraimc.dart';
import 'package:test/test.dart';

// para testar: dart test main_test.dart

void main() {
  test('Teste de cálculo de IMC', () {
    final pessoa = Pessoa("John Doe", 70.0, 1.75);
    final imc = pessoa.calcularIMC();
    expect(imc, equals(22.857142857142858));
  });
}
