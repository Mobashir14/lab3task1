import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget App',
      debugShowCheckedModeBanner: false, 
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widget Demonstration'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              '../assets/1.jpg', 
              fit: BoxFit.cover,
            ),
            // Row with icons and text
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.favorite, color: Colors.red),
                    SizedBox(height: 8),
                    Text('Favorites'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.home, color: Colors.blue),
                    SizedBox(height: 8),
                    Text('Home'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.settings, color: Colors.green),
                    SizedBox(height: 8),
                    Text('Settings'),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Button Pressed!')),
                  );
                },
                child: const Text('Press Me'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
