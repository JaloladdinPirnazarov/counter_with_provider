import 'package:flutter/cupertino.dart';

class CounterViewModel extends ChangeNotifier {
  int count = 0;

  increment(){
    count ++;
    notifyListeners();
  }

  decrement(){
    if(count > 0){
      count --;
      notifyListeners();
    }
  }

  reset(){
    count = 0;
    notifyListeners();
  }
}