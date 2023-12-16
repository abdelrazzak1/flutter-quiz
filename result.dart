import 'package:flutter/material.dart';


// custom widget
import 'components/button.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback callBackHandler;

  const Result({required this.score, required this.callBackHandler});


  @override
  Widget build(BuildContext context) {

    const List<String> imgs = [
      'image/0-2.gif',
      'image/0-2.gif',
      'image/0-2.gif',
      'image/3-5.gif',
      'image/3-5.gif',
      'image/3-5.gif',
      'image/5-7.gif',
      'image/5-7.gif',
      'image/8.png',
      'image/9.png',
      'image/10.png'
    ];

    return Container(
        margin: EdgeInsets.all(25),
        child: Center(
          child: Column(children: [
            Image.asset(
              imgs[score],
              height: 200,
              width: 200,
            ),
            SizedBox(height: 20),
            Text(score.toString() + "/10" , style: TextStyle(fontSize: 24),),
            Button(
              text: 'Retry',
              callBackHandler: callBackHandler,
            ),
            SizedBox(height: 200),
          ]),
        )
    );
  }
}