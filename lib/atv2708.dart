class ContaCorrente {
  double saldo;

  ContaCorrente(this.saldo);

  void depositar(double valor) {
    saldo += valor;
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
    } else {
      print("Saldo insuficiente!");
    }
  }
}

class ContaPoupanca {
  double saldo;

  ContaPoupanca(this.saldo);

  void depositar(double valor) {
    saldo += valor;
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
    } else {
      print("Saldo insuficiente!");
    }
  }
}

class GerenciadorDeConta<T> {
  T conta;

  GerenciadorDeConta(this.conta);

  void depositar(double valor) {
    if (conta is ContaCorrente) {
      (conta as ContaCorrente).depositar(valor);
    } else if (conta is ContaPoupanca) {
      (conta as ContaPoupanca).depositar(valor);
    }
  }

  void sacar(double valor) {
    if (conta is ContaCorrente) {
      (conta as ContaCorrente).sacar(valor);
    } else if (conta is ContaPoupanca) {
      (conta as ContaPoupanca).sacar(valor);
    }
  }

  double getSaldo() {
    if (conta is ContaCorrente) {
      return (conta as ContaCorrente).saldo;
    } else if (conta is ContaPoupanca) {
      return (conta as ContaPoupanca).saldo;
    }
    return 0.0;
  }
}
