import 'package:atv2708/atv2708.dart';
import 'package:test/test.dart';

void main() {
  test('deve depositar', () {
    final conta = ContaCorrente(1000);
    conta.depositar(500);
    expect(conta.saldo, 1500);
  });
  test('deve sacar', () {
      final conta = ContaCorrente(1000);
      conta.sacar(300);
      expect(conta.saldo, 700);
  });
  test('não deve sacar', () {
      final conta = ContaCorrente(1000);
      conta.sacar(1300);
      expect(conta.saldo, 1000);
  });
  test('deve gerenciar uma conta corrente', () {
    final contaCorrente = ContaCorrente(500);
    final gerenciador = GerenciadorDeConta<ContaCorrente>(contaCorrente);

    gerenciador.depositar(500);
    gerenciador.sacar(200);
    
    expect(gerenciador.getSaldo(), 800);
  });
}
