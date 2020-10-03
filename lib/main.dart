import 'package:flutter/material.dart';
import 'package:googleflutterfast/widgets/imagewidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter styled Text Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImageWidget(),
    );
  }
}

class TextBlock {
  final Color _color;
  final String _text;
  //getter
  String get text => _text;
  Color get color => _color;
  TextBlock(
    this._color,
    this._text,
  );
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  final List<TextBlock> textBlocks = [
    TextBlock(Colors.red, 'every'),
    TextBlock(Colors.blue, 'Mango'),
    TextBlock(Colors.pink, 'shirt'),
  ];
  void incrementCounter() {
    setState(() {
      if (_index < textBlocks.length) {
        _index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<TextSpan> textSpans = List<TextSpan>();
    for (var i = 0; i < _index; i++) {
      TextBlock textBlock = textBlocks[i];
      textSpans.add(
        TextSpan(
          text: textBlock.text,
          style: TextStyle(color: textBlock.color, fontSize: 32.0),
        ),
      );
    }
    return Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text.rich(TextSpan(children: textSpans))],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.note_add),
      ), // This trailing comma makes auto-formatting nicer for build
// methods.
    );
  }
}
