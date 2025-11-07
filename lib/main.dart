import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const AppNotes()); // ✅ pakai const kalau bisa
}

class AppNotes extends StatelessWidget {
  const AppNotes({super.key}); // ✅ tambahkan constructor dengan super.key

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Notes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple.shade100),
        useMaterial3: true,
      ),
      home: LoginPage(), // LoginPage doesn't have a const constructor
    );
  }
}
