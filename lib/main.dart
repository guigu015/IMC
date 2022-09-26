import 'package:flutter/material.dart';

import 'Home_Page.dart';

main(){
  runApp(CalcIMCApp());

}

class CalcIMCApp extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "Calculadora IMC",
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ) ;
  }

}