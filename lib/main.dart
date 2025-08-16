import 'package:flutter/material.dart';
import 'screens/profile_screen.dart';
import 'screens/chat_screen.dart';
import 'screens/video_screen.dart';
import 'screens/photo_screen.dart';
import 'screens/group_screen.dart';

void main() => runApp(const MemoaApp());

class MemoaApp extends StatelessWidget {
  const MemoaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memoa Social',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFA2D2FF)),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;
  final _screens = const [
    ProfileScreen(),
    ChatScreen(),
    VideoScreen(),
    PhotoScreen(),
    GroupScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (i) => setState(() => _index = i),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          NavigationDestination(icon: Icon(Icons.chat), label: "Chat"),
          NavigationDestination(icon: Icon(Icons.videocam), label: "Video"),
          NavigationDestination(icon: Icon(Icons.photo), label: "Photo"),
          NavigationDestination(icon: Icon(Icons.group), label: "Group"),
        ],
      ),
    );
  }
}
