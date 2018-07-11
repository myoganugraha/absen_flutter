import 'package:flutter/material.dart';
import 'package:absen/ui/loginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
  };
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Absen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}