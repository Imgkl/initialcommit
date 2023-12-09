import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Initial Commit',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffFFF8E7),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: NeuContainer(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedTextKit(
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TyperAnimatedText('git commit -m "Initial commit"',
                        speed: const Duration(milliseconds: 100),
                        textStyle: const TextStyle(
                            fontSize: 50,
                            color: Colors.black,
                            fontFamily: "Source Code Pro")),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
