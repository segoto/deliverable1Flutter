import 'package:flutter/material.dart';

class TextBody extends StatelessWidget {
  final textBody;
  TextBody(this.textBody);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        textBody,
      ),
    );
  }
}
