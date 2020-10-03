import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  @override
  _ImageWidgetState createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget'),
      ),
      body: Column(
        children: [
          Container(
            child: Center(
              child: FadeInImage.assetNetwork(
                  fit: BoxFit.cover,
                  placeholder: 'assets/images/screen.png',
                  image:
                      'https://cdn.21buttons.com/posts/640x800/9f5a013e65a349d8848de0ba76da87f5_1080x1350.jpg'),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          DropdownButton(
            onChanged: (value) {
              debugPrint('$value');
            },
            items: <String>[
              'Man',
              'Women',
            ].map((String value) {
              return DropdownMenuItem<String>(child: Text(value));
            }).toList(),
          ),
          Container(),
        ],
      ),
    );
  }
}
