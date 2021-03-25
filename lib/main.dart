import 'package:flutter/material.dart';
import './textBody.dart';
import './changeBodyButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _currentBodyText = 0;
  List<String> _textBody = [
    'This is the original text body',
    'This is the modified text body'
  ];
  void _changeText() {
    setState(() {
      _currentBodyText = (_currentBodyText + 1) % 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('First deliverable')),
        body: Column(
          children: <Widget>[
            TextBody(_textBody[_currentBodyText]),
            ChangeBodyButton(_changeText)
          ],
        ),
      ),
    );
  }
}
