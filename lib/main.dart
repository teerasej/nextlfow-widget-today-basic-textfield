import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nextflow Flutter Widget Today',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter 3 นาที: รับข้อความด้วย TextField'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  TextEditingController _textController = TextEditingController();
  String _input = "...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                TextField(
                  
                  // keyboardType: TextInputType.emailAddress,
                  // keyboardType: TextInputType.phone,

                  // keyboardType: TextInputType.multiline,
                  // maxLines: 5,

                  keyboardType: TextInputType.number,

                  textInputAction: TextInputAction.search,

                  controller: _textController,
                  
                ),
                RaisedButton(child: Text('ok'), onPressed: () {
                  setState(() {
                    _input = _textController.text;
                  });
                }),
                Text('$_input')
              ],
            )));
  }
}
