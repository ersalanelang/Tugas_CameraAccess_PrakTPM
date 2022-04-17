import 'package:flutter/material.dart';
import 'package:tugas3/page_camera.dart';

// Nama   : Ersalan Elang Kusuma
// NIM    : 123190163
// Kelas  : Praktikum Teknologi dan Pemrograman Mobile IF-C

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const PageCamera(),
    );
  }
}
