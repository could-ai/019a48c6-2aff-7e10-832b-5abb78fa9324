import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/survey_screen.dart';
import 'screens/thank_you_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GalleganCares',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/survey': (context) => const SurveyScreen(),
        '/thankyou': (context) => const ThankYouScreen(),
      },
    );
  }
}
