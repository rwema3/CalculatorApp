import 'package:flutter/material.dart';
import 'home_page.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Creamos la Aplicacion
    return new MaterialApp(
      title: "Calculator Flutter",
      theme: new ThemeData(primarySwatch: Colors.green),
      home: new HomePage() // Creamos un nuevo widget
    );
  }
}
