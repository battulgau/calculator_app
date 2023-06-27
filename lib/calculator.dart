import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  num num1 = 0;
  num num2 = 0;
  num result = 0;
  final _num1Controller = TextEditingController();
  final _num2Controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void _add(num a, num b) {
    setState(() {
      result = a + b;
    });
  }

  void _sub(num a, num b) {
    setState(() {
      result = a - b;
    });
  }

  void _mul(num a, num b) {
    setState(() {
      result = a * b;
    });
  }

  void _div(num a, num b) {
    setState(() {
      result = a / b;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Calculator"),
        ),
        body: Center(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: _num1Controller,
                    decoration:
                        const InputDecoration(labelText: '1-р тоог оруул!'),
                  ),
                  TextFormField(
                    controller: _num2Controller,
                    decoration:
                        const InputDecoration(labelText: '2-р тоог оруул!'),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.greenAccent),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black87),
                        textStyle: MaterialStateProperty.all(
                            const TextStyle(fontSize: 16)),
                      ),
                      onPressed: () => _add(num.parse(_num1Controller.text),
                          num.parse(_num2Controller.text)),
                      child: const Text('Нэмэх'),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.black87,
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed: () => _sub(num.parse(_num1Controller.text),
                          num.parse(_num2Controller.text)),
                      child: const Text('Хасах'),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.black87,
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed: () => _mul(num.parse(_num1Controller.text),
                          num.parse(_num2Controller.text)),
                      child: const Text('Үржих'),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellowAccent,
                        foregroundColor: Colors.black87,
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed: () => _div(num.parse(_num1Controller.text),
                          num.parse(_num2Controller.text)),
                      child: const Text('Хуваах'),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text("Хариу: $result"),
                ],
              ),
            ),
          ),
        ));
  }
}
