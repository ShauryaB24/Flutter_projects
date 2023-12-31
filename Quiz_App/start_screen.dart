import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {

  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;


  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
          //height: 150,
          //color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(height: 80),
        Text('Learn flutter in a fun way',
        style: GoogleFonts.lato(
          color: const Color.fromARGB(255, 255, 244, 255), 
          fontSize: 28
        ),
        ),
        const SizedBox(height: 70),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text("Attempt Quiz",
          style: TextStyle(
            fontSize: 24
          ),
          ),
        )
      ],
      ),
    );  
  }
}