import 'package:flutter/material.dart';

void main() => runApp(MyApp());

enum Topic { lifestyle, business, politics, sports, recommend }

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    // final double deviceWidth = MediaQuery.of(context).size.width;
    // final double targetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.95;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: new Image.asset('assets/cropped_darker_header.jpg',
              fit: BoxFit.cover),
        ),
        body: Container(
          // padding: EdgeInsets.all(10.0),
          child: Center(
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: 500.0,
                    height: 42.0,
                    child: const DecoratedBox(
                      decoration: const BoxDecoration(color: Colors.black),
                    ),
                  ),
                  Image(
                    image: AssetImage('assets/glasses.png'),
                    height: 200.0,
                  ),
                  Text('What will it be today?'),
                  RadioListTile<Topic>(
                    title: Text('Lifestyle'),
                    value: Topic.lifestyle,
                    groupValue: Topic.lifestyle,
                    onChanged: (Topic value) {},
                  ),
                  RadioListTile<Topic>(
                    title: Text('Business'),
                    value: Topic.business,
                    groupValue: Topic.business,
                    onChanged: (Topic value) {},
                  ),
                  RadioListTile<Topic>(
                    title: Text('Politics'),
                    value: Topic.politics,
                    groupValue: Topic.politics,
                    onChanged: (Topic value) {},
                  ),
                  RadioListTile<Topic>(
                    title: Text('Sports'),
                    value: Topic.sports,
                    groupValue: Topic.sports,
                    onChanged: (Topic value) {},
                  ),
                  RadioListTile<Topic>(
                    title: Text('Recommend me'),
                    value: Topic.recommend,
                    groupValue: Topic.recommend,
                    onChanged: (Topic value) {},
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.book),
              title: new Text('Read'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.share),
              title: new Text('Share'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.poll),
              title: Text('Poll'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more),
              title: Text('More'),
            ),
            
          ],
        ),
      ),
    );
  }
}
