import 'package:fashion_ai_app/screen/chat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const StyleGeniusApp());
}

class StyleGeniusApp extends StatelessWidget {
  const StyleGeniusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StyleGenius AI',
      theme: ThemeData(
        primaryColor: const Color(0xFF8A2BE2),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.purple,
        ),
        fontFamily: 'Roboto',
        useMaterial3: true,
      ),
      home: ChatScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
