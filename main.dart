import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text("تطابق الصور"),
          backgroundColor: Colors.indigo[800],
        ),
        body: ImagePage(),
      ),
    ),
  );
}

class ImagePage extends StatefulWidget {
  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  void cahngeImage() {
    RightImageNumber = Random().nextInt(8) + 1;
    LeftImageNumber = Random().nextInt(8) + 1;
  }

  int LeftImageNumber = 1;
  int RightImageNumber = 2;
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          LeftImageNumber == RightImageNumber
              ? 'مبروك لقد ربحت'
              : "حاول مرة أخرى",
          style: TextStyle(
            fontSize: 35.0,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextButton(
                      child: Image.asset("images/image-$LeftImageNumber.png"),
                      onPressed: () {
                        setState(() {
                          cahngeImage();
                        });
                      }),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextButton(
                    child: Image.asset("images/image-$RightImageNumber.png"),
                    onPressed: () {
                      setState(() {
                        cahngeImage();
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
