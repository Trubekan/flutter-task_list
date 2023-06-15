import 'package:flutter/material.dart';
import 'package:laboratorio_02/app/view/task_list.dart';

class SlashPage extends StatelessWidget {
  void navigateToTaskListPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TaskListPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                'images/Vector.png',
                width: 180,
                height: 165,
              ),
            ),
            const SizedBox(height: 48),
            Image.asset(
              'images/onboarding-image.png',
              width: 240,
              height: 225,
            ),
            const SizedBox(height: 48),
            Text(
              'Lista de tareas',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 24),
            GestureDetector(
              onTap: () => navigateToTaskListPage(context),
              child: Text(
                'Haz click aquí para acceder al contador 🙂',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
