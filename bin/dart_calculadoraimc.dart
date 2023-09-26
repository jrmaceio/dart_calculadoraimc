
import 'dart:io';

import 'package:dart_calculadoraimc/dart_calculadoraimc.dart';

void main() {
  try {
    stdout.write("Digite o nome da pessoa: ");
    String nome = stdin.readLineSync() ?? "";
    
    stdout.write("Digite o peso da pessoa (em kg): ");
    double peso = double.parse(stdin.readLineSync() ?? "0");
    
    stdout.write("Digite a altura da pessoa (em metros): ");
    double altura = double.parse(stdin.readLineSync() ?? "0");
    
    Pessoa pessoa = Pessoa(nome, peso, altura);
    double imc = pessoa.calcularIMC();

    print("IMC da pessoa $nome é: $imc");

    if (imc < 16) {
      print("Classificado: Magreza grave");
    } else if (imc >= 16 && imc < 17) {
      print("Classificado: Magreza moderada");
    } else if (imc >= 17 && imc < 18.5) {
      print("Classificado: Magreza leve");
    } else if (imc >= 18.5 && imc < 25) {
      print("Classificado: Saudável");
    } else if (imc >= 25 && imc < 30) {
      print("Classificado: Sobrepeso");
    } else if (imc >= 30 && imc < 35) {
      print("Classificado: Obsidade Grau 1");
    } else if (imc >= 35 && imc < 40) {
      print("Classificado: Obsidade Grau 2 (SEVERA)");
    } else if (imc >= 40) {
      print("Classificado: Obsidade Grau 3 (MORBIDA)");          
    } else {
      // Caso não se encaixe nas condições anteriores
      print("IMC fora da faixa de classificação.");
    }

  } catch (e) {
    print("Ocorreu um erro: $e");
  }
}
