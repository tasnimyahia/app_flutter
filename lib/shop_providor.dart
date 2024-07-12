import 'package:flutter/material.dart';
class ShopProvidor extends ChangeNotifier{
   bool _allSelected = true;
  void toggleAll(){
    _allSelected = !_allSelected ;
    notifyListeners();
  }
  bool get allSelected => _allSelected;
  
  
}