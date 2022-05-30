import 'package:emotion_detector_app/ui/landing_page/emotion_detection_screen.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Facial Expression Recognition APP")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: const Text("Do You Want To Detect Facial Expressions?"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EmotionDetectionScreen()),
                );
              },
              child: const Text("Start Detecting Emotions"),
            )
          ],
        ),
      ),
    );
  }
}
