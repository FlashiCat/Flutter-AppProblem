import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesH extends StatelessWidget{
  late final String name;
  CategoriesH(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4caf50),
        title: Text(name),
        foregroundColor: Color(0xFFeceff1),
      ),
      body: DicePageH(),
    );
  }
}

class DicePageH extends StatefulWidget {
  const DicePageH({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePageH> {
  int DiceNumberH = 1;


  void changeDiceNumber() {
    setState(() {
      DiceNumberH = Random().nextInt(3) +1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.fromLTRB(50, 35, 50, 0),
          elevation: 8,
          color: Color(0xFF4caf50),
          child: SizedBox(
            height: 80,
            width: 150,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                child: Text(
                  'Sweets',
                  style: GoogleFonts.rubik(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  changeDiceNumber();
                  print('LeftDiceNumber = $DiceNumberH');
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  child: Image.asset('images/haupt$DiceNumberH.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}