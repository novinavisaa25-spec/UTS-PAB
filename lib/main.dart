import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Tentang Saya'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage('assets/images/60.jpeg'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Nama : Novi Nopisa',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 10),
              const Text(
                'NPM : 20241320061',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 50),
              const Text(
                '"Sekilas tentang saya ...."',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}