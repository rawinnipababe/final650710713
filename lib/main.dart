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
          name: 'Patipan Watjanaporn',
          position: 'Programer',
          email: 'patipan.watjanaporn@email.com',
          phoneNumber: '0821233214',
          imageUrl:
              'https://i.pinimg.com/736x/50/65/00/5065004e80ce5ea95914fbdc4b1065cc.jpg',
        ),
      ),
    );
  }
}
