import 'package:flutter/material.dart';
import 'profile_card.dart'; // นำเข้าไฟล์ ProfileCard

// ฟังก์ชันเริ่มต้นแอป
void main() {
  runApp(const MyApp());
}

// สร้าง MyApp เป็น StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Profile Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfileScreen(),
    );
  }
}

// สร้างหน้าหลัก ProfileScreen
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Widget'),
        centerTitle: true,
      ),
      body: const Center(
        child: ProfileCard(
          name: 'Rawinnipa Damrongburanakulchai',
          position: 'Cyber Crime Analyst',
          email: 'rawin@email.com',
          phoneNumber: '0999999999',
          imageUrl:
              'assets/images/rabbit.jpg',
        ),
      ),
    );
  }
}
