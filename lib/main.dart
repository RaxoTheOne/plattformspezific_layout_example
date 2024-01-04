import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Platform-specific Buttons'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Plattformabhängiger Button
            PlatformButton(),
          ],
        ),
      ),
    );
  }
}

class PlatformButton extends StatelessWidget {
  const PlatformButton({super.key});

  @override
  Widget build(BuildContext context) {
    if (Theme.of(context).platform == TargetPlatform.iOS) {
      // Cupertino-Button für iOS
      return CupertinoButton(
        onPressed: () {
          // Aktion für den Button
          print('Cupertino Button wurde gedrückt');
        },
        color: CupertinoColors.systemBlue,
        child: const Text('Cupertino Button'),
      );
    } else {
      // Elevated-Button für andere Plattformen (Material Design)
      return ElevatedButton(
        onPressed: () {
          // Aktion für den Button
          print('Elevated Button wurde gedrückt');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
        ),
        child: const Text('Elevated Button'),
      );
    }
  }
}
