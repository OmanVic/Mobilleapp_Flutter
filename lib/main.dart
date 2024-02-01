
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'From Scratch',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Scratch'),
          backgroundColor: Colors.limeAccent,
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const Icon(Icons.account_circle, size: 30, color: Colors.blue),
                const SizedBox(width: 8), // Add width value
                Text('Starting from scratch', style: TextStyle(fontSize: 10)),
                const Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.volume_up))
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              print("Fluther is fun !!!");
            },
            child: const Text('Text Button'),
          ),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
