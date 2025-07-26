import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram/screens/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Required before setting system UI
  
  // This line makes the status bar visible
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
