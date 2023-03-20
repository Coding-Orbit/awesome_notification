import 'package:awesome_notification/main.dart';
import 'package:awesome_notification/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Theme.of(context).primaryColor,
            Colors.grey[200]!,
          ],
        )),
        child: SizedBox(
          width: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const TopBar(title: 'Second Screen'),
              const Spacer(),
              const Center(
                child: Text("Navigated from notification"),
              ),
              // This icon button has been added fot ios navigation
              IconButton(
                onPressed: () => MainApp.navigatorKey.currentState?.pop(),
                icon: const Icon(Icons.arrow_circle_left_outlined),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
