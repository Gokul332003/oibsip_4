import 'package:flutter/material.dart';
import '../utils/question_bank.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentIndex = 0;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Question ${currentIndex + 1}/${QuestionBank.getTotalQuestions()}',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              QuestionBank.getQuestion(currentIndex)['question'],
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Column(
              children: List.generate(
                QuestionBank.getQuestion(currentIndex)['options'].length,
                (index) => AnswerOption(
                  optionText: QuestionBank.getQuestion(currentIndex)['options'][index],
                  onPressed: () {
                    checkAnswer(QuestionBank.getQuestion(currentIndex)['options'][index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void checkAnswer(String selectedAnswer) {
    String correctAnswer = QuestionBank.getQuestion(currentIndex)['correctAnswer'];

    setState(() {
      if (selectedAnswer == correctAnswer) {
        score++;
      }

      if (currentIndex < QuestionBank.getTotalQuestions() - 1) {
        currentIndex++;
      } else {
        showFinalScore();
      }
    });
  }

  void showFinalScore() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Quiz Completed'),
          content: Text('Your final score is $score/${QuestionBank.getTotalQuestions()}'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                // You can navigate back to the home screen or reset the quiz
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}

class AnswerOption extends StatelessWidget {
  final String optionText;
  final VoidCallback onPressed;

  const AnswerOption({
    required this.optionText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(optionText),
    );
  }
}
