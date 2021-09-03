import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bmi_result extends StatelessWidget {

  final int result;
  final bool isMale;
  final int age;

  bmi_result({
      required this.result,
      required this.isMale,
      required this.age,
   });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left,
          ),
        ),
        title: Text(
          'BMI RESULT',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text(
             'Gender : ${isMale ? 'Male' : 'Female'}',
             style: TextStyle(
               fontSize: 25.0,
               fontWeight: FontWeight.bold,
             ),
           ),
            Text(
              'Result : $result',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age : $age',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
