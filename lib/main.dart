import 'package:flutter/material.dart';
import 'screens/profile_screen.dart'; // gunakan placeholder di main

void main() => runApp(const MemoaApp());

class MemoaApp extends StatelessWidget {
  const MemoaApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Memoa Social',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFA2D2FF)),
      useMaterial3: true,
    ),
    home: const ProfileScreen(),
    debugShowCheckedModeBanner: false,
  );
}
