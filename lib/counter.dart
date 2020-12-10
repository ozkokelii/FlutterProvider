import 'package:flutter/cupertino.dart';

class Counter with ChangeNotifier {
  int _sayac;

  int get sayac => _sayac;

  Counter(this._sayac);

  void arttir() {
    _sayac++;
    notifyListeners();
  }

  void azalt() {
    _sayac--;
    notifyListeners();
  }
}
