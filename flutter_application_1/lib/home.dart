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
          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 150.0), // ขยับปุ่มลง
              child: Column(
                mainAxisSize: MainAxisSize.min, // ทำให้ Column มีขนาดพอดี
                children: [
                  ElevatedButton(
                    child: Text("LOGIN"),
                    onPressed: () {
                      Navigator.pushNamed(context, 'login');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(20),
                      fixedSize: Size(300, 50),
                      textStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      backgroundColor: Color.fromARGB(255, 255, 65, 65),
                      foregroundColor: Colors.white, // สีของฟอนต์
                    ),
                  ),
                  SizedBox(height: 20), // เพิ่มระยะห่างด้านล่างปุ่ม
                  ElevatedButton(
                    child: Text("REGISTER"),
                    onPressed: () {
                      Navigator.pushNamed(context, 'register');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(20),
                      fixedSize: Size(300, 50),
                      textStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      backgroundColor: Colors.white, // สีพื้นหลัง
                      foregroundColor:
                          Color.fromARGB(255, 255, 65, 65), // สีของฟอนต์
                      side: BorderSide(
                        color: Color.fromARGB(255, 255, 65, 65), // สีขอบ
                        width: 2, // ความกว้างของขอบ
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
