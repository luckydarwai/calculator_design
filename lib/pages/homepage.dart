import 'package:calculator_design/pages/Constraints/const.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController1 = TextEditingController();
  TextEditingController textController2 = TextEditingController();
  double result = 0;

  void addValues() {
    setState(() {
      double num1 = double.parse(textController1.text);
      double num2 = double.parse(textController2.text);
      result = num1 + num2;
    });
  }

  void subValues() {
    setState(() {
      double num1 = double.parse(textController1.text);
      double num2 = double.parse(textController2.text);
      result = num1 - num2;
    });
  }

  void mulValues() {
    setState(() {
      double num1 = double.parse(textController1.text);
      double num2 = double.parse(textController2.text);
      result = num1 * num2;
    });
  }

  void divValues() {
    setState(() {
      double num1 = double.parse(textController1.text);
      double num2 = double.parse(textController2.text);
      result = (num1 / num2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
          child: Text(
            widget.title,
          ),
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textController1,
                decoration: const InputDecoration(
                    hintText: "Enter the 1st value",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(18.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange),
                        borderRadius: BorderRadius.all(Radius.circular(18.0))),
                    fillColor: Colors.orange),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textController2,
                decoration: const InputDecoration(
                    hintText: "Enter the 2nd value",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(18.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange),
                        borderRadius: BorderRadius.all(Radius.circular(18.0))),
                    fillColor: Colors.orange),
                keyboardType: TextInputType.number,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.amberAccent)),
                  onPressed: addValues,
                  child: const Text(
                    "Add",
                    style: txtDesign,
                  ),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.amberAccent)),
                    onPressed: subValues,
                    child: Text("Sub", style: txtDesign)),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.amberAccent)),
                    onPressed: divValues,
                    child: Text("Div", style: txtDesign)),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.amberAccent)),
                    onPressed: mulValues,
                    child: Text("Mul", style: txtDesign)),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Result : $result",
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ]),
    );
  }
}
