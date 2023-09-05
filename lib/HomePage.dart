import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:switcher_button/switcher_button.dart';
import 'package:theme/ThemeModal.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State{
  @override
  Widget build(BuildContext context){
    return Consumer(builder: (context,ThemeModal themeNotifier,child){
      return Scaffold(
          appBar: AppBar(
            title: Text(themeNotifier.isDark ? "Dark Theme" : "Light Theme"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SwitcherButton(
                  value: themeNotifier.isDark ? false : true,
                  onChange: (value){
                    themeNotifier.isDark
                        ? themeNotifier.isDark = false
                    : themeNotifier.isDark = true;
                  },
                ),
                Text('Welcome Chaitanya',textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineMedium),
              ],
            ),
          ),
      );
    });
  }
}