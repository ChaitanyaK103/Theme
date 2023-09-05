import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/HomePage.dart';
import 'package:theme/ThemeModal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (_) => ThemeModal(),
      child : Consumer(builder: (context, ThemeModal themeModal,child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Mark II',
          theme: themeModal.isDark ? ThemeData.dark() : ThemeData.light(),
          home: HomePage(),
        );
      })
    );
  }
}

