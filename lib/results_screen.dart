import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summery.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> get summeryData {
    final List<Map<String, Object>> summery = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summery.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answer[0],
        'user_answer': chosenAnswers[i]
      });
    }
    return summery;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summeryData
        .where((data) => data['correct_answer'] == data['user_answer'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!'),
            const SizedBox(
              height: 30,
            ),
            QuestionSummery(summeryData: summeryData),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz!'),
            ),
          ],
        ),
      ),
    );
  }
}
