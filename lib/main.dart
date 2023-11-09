import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.green,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left = 1, right = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        ValueRandom();
                      });
                      print('Left image is clicked');
                    },
                    child: Image.asset('images/dice$left.png'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        ValueRandom();
                      });
                      print('Right image is clicked');
                    },
                    child: Image.asset('images/dice$right.png'),
                  ),
                ),
              ),
            ],
          ),
          if (left + right == 7)
            const Column(
              children: [
                Text('LUCKY 7!',
                    style: TextStyle(fontSize: 25)),
              ],
            ),
        ],
      ),
    );
  }

  void ValueRandom(){
    left = 1 + Random().nextInt(6);
    right = 1 + Random().nextInt(6);
  }
}



