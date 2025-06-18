import 'package:flutter/material.dart';
import 'counter_screen.dart';
import 'todo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Week 2 Data Management',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Week 2 Task')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Counter App"),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CounterScreen()),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("To-Do List"),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const TodoScreen()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
