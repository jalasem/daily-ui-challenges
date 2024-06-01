import 'package:daily_ui_challenges/days/day_0/index.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DailyUIChallenges());
}

class DailyUIChallenges extends StatelessWidget {
  const DailyUIChallenges({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daily UI Challenges',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DailyChallenges(),
    );
  }
}

class DailyChallenges extends StatelessWidget {
  const DailyChallenges({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Daily UI Challenges',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: ListView(children: [
        ListTile(
          title: const Text('Day 0'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const Day0Counter(
                title: 'Simple Counter',
              ),
            ));
          },
        ),
      ]),
    );
  }
}
