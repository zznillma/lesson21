import 'dart:io';

void main() {
  reversed();
}

reversed() {
  String answer = '';
  print('1) Хотите обменять другую валюту на сом?\n2) Хотите обменять сом на другую валюту');
  answer = stdin.readLineSync()!;
  if(answer == "1") {
    Sell sell = Sell();
    sell.converter();
    reversed();
  } else if (answer == "2") {
    Buy buy =Buy();
    buy.converter();
    reversed();
  }
}

class Valute {
  int dollar;
  int euro;
  num rubl;
  num tenge;

  Valute(
    this.dollar,
    this.euro,
    this.rubl,
    this.tenge,
  );

  void converter() {}
}

class Buy implements Valute {
  @override
  int dollar = 86;

  @override
  int euro = 93;

  @override
  num rubl = 1.25;

  @override
  num tenge = 0.12;

  @override
  void converter() {
    String valute = '';
    int som = 0;
    print('Выберите валюту:\nUSD\nEUR\nRUB\nKZT');
    valute = stdin.readLineSync()!;
    if (valute == "USD") {
      print('сколько сом вы хотите обменять?');
      som = int.parse(stdin.readLineSync()!);
      print('$som на $dollar');
      print('${som ~/ dollar}');
    } else if (valute == "EUR") {
      print('сколько сом вы хотите обменять?');
      som = int.parse(stdin.readLineSync()!);
      print('$som на $euro');
      print('${som ~/ euro}');
    } else if (valute == "RUB") {
      print('сколько сом вы хотите обменять?');
      som = int.parse(stdin.readLineSync()!);
      print('$som на $rubl');
      print('${som ~/ rubl}');
    } else if (valute == "KZT") {
      print('сколько сом вы хотите обменять?');
      som = int.parse(stdin.readLineSync()!);
      print('$som на $tenge');
      print('${som ~/ tenge}');
    } else {
      print('Error');
    }
  }
}

class Sell implements Valute {
  @override
  int dollar = 87;

  @override
  int euro = 94;

  @override
  num rubl = 1.3;

  @override
  num tenge = 0.2;

  @override
  void converter() {
    String valute = '';
    int som = 0;

    print('Выберите валюту:\nUSD\nEUR\nRUB\nKZT');
    valute = stdin.readLineSync()!;
    if (valute == "USD") {
      print('сколько долларов вы хотите обменять?');
      som = int.parse(stdin.readLineSync()!);
      print('$som на $dollar');
      num answer = som * dollar;
      answer = answer.toInt();
      print(answer);
    } else if (valute == "EUR") {
      print('сколько евро вы хотите обменять?');
      som = int.parse(stdin.readLineSync()!);
      print('$som на $euro');
      num answer = som * euro;
      answer = answer.toInt();
      print(answer);
    } else if (valute == "RUB") {
      print('сколько рублей вы хотите обменять?');
      som = int.parse(stdin.readLineSync()!);
      print('$som на $rubl');
      num answer = som * rubl;
      answer = answer.toInt();
      print(answer);
    } else if (valute == "KZT") {
      print('сколько тенге вы хотите обменять?');
      som = int.parse(stdin.readLineSync()!);
      print('$som на $tenge');
      num answer = som * tenge;
      answer = answer.toInt();
      print(answer);
    } else {
      print('Error');
    }
  }
}
