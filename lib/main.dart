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
        backgroundColor: const Color(0xff111118),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NeuContainer(
                child: AnimatedTextKit(
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TypewriterAnimatedText('Initial Commit',
                        speed: const Duration(milliseconds: 200),
                        textStyle: const TextStyle(
                            fontSize: 100,
                            color: Colors.white,
                            fontFamily: "Source Code Pro")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
