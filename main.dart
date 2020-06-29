import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retrieve Text Input',
      home: MyCustomForm(),
    );
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();
  var _inputtext;
  void _newtext() {
    setState(() {
      _inputtext = (myController.text);
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Text Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/niceflutter.png'),
            SizedBox(height: 50),
            TextField(
              controller: myController,
            ),
            SizedBox(height: 50),
            Text(
              'You have entered:',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '$_inputtext',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 80),
            RaisedButton(
              onPressed: _newtext,
              child: Text(
              'Show Text',
            ),
            ),
          ],
        ),
      ),
    );
  }
}
