import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/home.jpg'), fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: ElevatedButton(
              child: Text("Sign Up"),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20),
                fixedSize: Size(300, 50),
                textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                backgroundColor: Color.fromARGB(255, 255, 65, 65),
              ),
            ),
          ),
        ));
  }
}
