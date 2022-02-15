import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num_1 = 0, num_2 = 0, result = 0;
  // Para coger los datos de los campos de texto
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void sum() {
    this.setState(() {
      num_1 = int.parse(t1.text);
      num_2 = int.parse(t2.text);
      result = num_1 + num_2;
    });
  }

  void mult() {
    this.setState(() {
      num_1 = int.parse(t1.text);
      num_2 = int.parse(t2.text);
      result = num_1 * num_2;
    });
  }

  void clear() {
    this.setState(() {
      num_1 = 0;
      num_2 = 0;
      result = 0;
      t1.text = "0";
      t2.text = "0";
    });
  }

  void div() {
    this.setState(() {
      num_1 = int.parse(t1.text);
      num_2 = int.parse(t2.text);
      result = num_1 ~/ num_2;
    });
  }

  void subs() {
    this.setState(() {
      num_1 = int.parse(t1.text);
      num_2 = int.parse(t2.text);
      result = num_1 - num_2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // Damos una estructura
      appBar: new AppBar(title: new Text("Calculator")),
      body: new Container(
        padding: const EdgeInsets.all(20.0),
        child: new Column(children: <Widget>[
          // Lista de hijos
          new Text(
            "Output : $result",
            style: new TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Number 1"),
              controller: t1),
          new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Number 2"),
              controller: t2),
          new Padding(padding: const EdgeInsets.only(top: 20.0)),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new MaterialButton(
                  child: new Text("+"),
                  onPressed: () {
                    this.sum();
                  },
                  color: Colors.lightGreen),
              new MaterialButton(
                  child: new Text("-"),
                  onPressed: () {
                    this.subs();
                  },
                  color: Colors.lightGreen),
            ],
          ),
          new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                    child: new Text("*"),
                    onPressed: () {
                      this.mult();
                    },
                    color: Colors.lightGreen),
                new MaterialButton(
                    child: new Text("/"),
                    onPressed: () {
                      this.div();
                    },
                    color: Colors.lightGreen)
              ]),
          new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                    child: new Text("Clear"),
                    onPressed: () {
                      this.clear();
                    },
                    color: Colors.lightGreen),
              ])
        ]),
      ),
    );
  }
}
