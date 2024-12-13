import 'package:flutter/material.dart';
import 'package:loginuicolors/forgot.dart';
import 'package:loginuicolors/home.dart';
import 'package:loginuicolors/login.dart';
import 'package:loginuicolors/register.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHome(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'forgot': (context) => MyForgotPassword(),
      'home': (context) => MyHome(),
    },
  ));
}

// ตัวอย่างฟังก์ชันเชื่อมต่อ API สำหรับการล็อกอิน
Future<Map<String, dynamic>> loginUser(String username, String password) async {
  final url = Uri.parse(
      'http://127.0.0.1:8000/api/login/'); // เปลี่ยน URL ให้ตรงกับ API ของคุณ
  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({'username': username, 'password': password}),
  );

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to login');
  }
}
