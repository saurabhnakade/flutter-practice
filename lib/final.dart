import 'package:flutter/material.dart';

class Final extends StatelessWidget {
  final int score;
  final VoidCallback reset;

  Final(this.score,this.reset);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top:80),
      child: Column(
        children: [
          Text(score.toString(),
          textAlign: TextAlign.center,),
          ElevatedButton(
            onPressed: reset, 
            child: Text('RESET'),
            // ignore: prefer_const_constructors
            // style: ButtonStyle(
            //   backgroundColor:MaterialStatePropertyAll(Colors.red),
            //   foregroundColor: MaterialStatePropertyAll(Colors.green),
            // ),
          )
        ],
      ),
    );
  }
}
