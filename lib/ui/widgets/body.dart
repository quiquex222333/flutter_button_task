import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  List<int> numbers = [];
  int result = 0;

  void addToList(int value){
    numbers.add(value);
    print("object $value, $numbers");
  }

  void emptyValidation(){
    if (numbers.length == 0) {
      numbers.add(0);
    }
  }

  void sum() {
    emptyValidation();
    int suma = numbers.reduce((a, b) => a + b);
    numbers.clear();
    numbers.add(suma);
    print(numbers);
  }

  void res() {
    emptyValidation();
    int suma = numbers.reduce((a, b) => a - b);
    numbers.clear();
    numbers.add(suma);
    print(numbers);
  }

  void mul() {
    emptyValidation();
    int suma = numbers.reduce((a, b) => a * b);
    numbers.clear();
    numbers.add(suma);
    print(numbers);
  }

  void div() {
    emptyValidation();
    int suma;
    try {
      suma = numbers.reduce((a, b) => a ~/ b);
    } on IntegerDivisionByZeroException {
      suma = 0;
    }
    numbers.clear();
    numbers.add(suma);
    print(numbers);
  }

  void clear(){
    numbers.clear();
    print(numbers);
  }

  void results(){
    emptyValidation();
    setState(() { 
      result = numbers[0];
      numbers.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Center(child: Text("$result"))),
          Expanded(
            child: Row(
              mainAxisAlignment:  MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(onPressed: () => addToList(1), child: Text("1")),
                ElevatedButton(onPressed: () => addToList(2), child: Text("2")),
                OutlinedButton(onPressed: () => addToList(3), child: Text("3")),
                ElevatedButton(onPressed: sum, child: Text("+")),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment:  MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(onPressed: () => addToList(4), child: Text("4")),
                ElevatedButton(onPressed: () => addToList(5), child: Text("5")),
                OutlinedButton(onPressed: () => addToList(6), child: Text("6")),
                ElevatedButton(onPressed: res, child: Text("-")),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment:  MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(onPressed: () => addToList(7), child: Text("7")),
                ElevatedButton(onPressed: () => addToList(8), child: Text("8")),
                OutlinedButton(onPressed: () => addToList(9), child: Text("9")),
                ElevatedButton(onPressed: mul, child: Text("*")),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment:  MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(onPressed: clear, child: Text("CE")),
                ElevatedButton(onPressed: () => addToList(0), child: Text("0")),
                OutlinedButton(onPressed: results, child: Text("=")),
                ElevatedButton(onPressed: div, child: Text("/")),
              ],
            ),
          ),
        ],
      )
    );
  }
}
