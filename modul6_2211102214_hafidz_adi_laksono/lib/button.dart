import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Buttons Example')),
        body: Center(child: ButtonExample()),
      ),
    );
  }
}

class ButtonExample extends StatefulWidget {
  @override
  _ButtonExampleState createState() => _ButtonExampleState();
}

class _ButtonExampleState extends State<ButtonExample> {
  String selectedValue = 'Hanasui';

  final List<DropdownMenuItem<String>> dropdownItems = [
    DropdownMenuItem(value: 'Hanasui', child: Text('Hanasui')),
    DropdownMenuItem(value: 'Skintific', child: Text('Skintific')),
    DropdownMenuItem(value: 'FFY', child: Text('FFY')),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            print('ini done');
          },
          child: Text('Submit'),
        ),
        SizedBox(height: 20),
        TextButton(
          onPressed: () {
            print('sukses');
          },
          child: Text('Menu'),
        ),
        SizedBox(height: 20),
        DropdownButton<String>(
          value: selectedValue,
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
          items: dropdownItems,
        ),
      ],
    );
  }
}
