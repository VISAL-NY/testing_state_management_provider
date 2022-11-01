import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  double count=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            alignment: Alignment.center,
            child: Text("${count}",style: TextStyle(fontSize: 30),),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
               setState(() {
                 count++;
               });
            },
            child:Text("+",style: TextStyle(fontSize: 20),),
            elevation: 20,
            backgroundColor: Colors.black,
            splashColor: Colors.red,
          ),
        ),
      ),
    );
  }
}
