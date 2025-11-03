import 'package:flutter/material.dart';
import 'package:gallegan_cares/screens/home_screen.dart';
import 'package:gallegan_cares/screens/survey_screen.dart';
import 'package:gallegan_cares/screens/thank_you_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      title: 'GalleganCares',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          primary: Colors.green,
          secondary: Colors.lightGreen,
          tertiary: Colors.yellow,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(textTheme),
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
