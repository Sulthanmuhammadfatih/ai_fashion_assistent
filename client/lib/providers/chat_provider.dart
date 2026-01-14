 import 'package:flutter/material.dart';
import '../models/chat_message.dart';

class ChatProvider with ChangeNotifier {
  final List<ChatMessage> _messages = [];

  List<ChatMessage> get messages => _messages;

  void sendInitialMessage() {
    final initialMessage = ChatMessage(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      text: 'Halo! Saya StyleGenius AI, asisten fashion Anda. Bagaimana saya bisa membantu Anda hari ini?',
      isUser: false,
      timestamp: DateTime.now(),
    );
    _messages.add(initialMessage);
    notifyListeners();
  }

  Future<void> sendMessage(String text) async {
    // Add user message
    final userMessage = ChatMessage(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      text: text,
      isUser: true,
      timestamp: DateTime.now(),
    );
    _messages.add(userMessage);
    notifyListeners();

    // Simulate AI response
    await Future.delayed(const Duration(seconds: 1));
    
    final aiMessage = ChatMessage(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      text: 'Terima kasih atas pertanyaan Anda! Saya sedang memproses permintaan fashion Anda.',
      isUser: false,
      timestamp: DateTime.now(),
    );
    _messages.add(aiMessage);
    notifyListeners();
  }
}