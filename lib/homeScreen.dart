import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int diceOne = Random().nextInt(6) + 1;
  int diceTwo = Random().nextInt(6) + 1;
  // bool check = false;

  void diceRoll() {
    // if (check == false) {
    //   setState(() {
    //     diceOne = 2;
    //     diceTwo = 2;
    //     check = true;
    //   });
    // } else if (check == true) {
    //   setState(() {
    //     diceOne = 1;
    //     diceTwo = 1;
    //     check = false;
    //   });
    // }

    setState(() {
      diceOne = Random().nextInt(6) + 1;
      diceTwo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ROLL MY DICE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: EdgeInsets.all(20),
                    child: Image(
                      image: AssetImage('assets/images/Dice_$diceOne.png'),
                    )),
                Padding(
                    padding: EdgeInsets.all(20),
                    child: Image(
                        image: AssetImage('assets/images/Dice_$diceTwo.png'))),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, 
                          vertical: 10.0
                          ),
                      shape: const StadiumBorder(),
                    ),
              onPressed: diceRoll,
              child: const Text('ROLL'),
            )
          ],
        ),
      ),
    );
  }
}
