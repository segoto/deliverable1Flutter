import 'package:flutter/material.dart';

class ChangeBodyButton extends StatelessWidget {
  final Function changeText;
  ChangeBodyButton(this.changeText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
            onPressed: changeText, child: Text('Change the body text')));
  }
}
