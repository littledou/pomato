import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Demo",
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  var text = "100";
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(text + "- $count"),
          MaterialButton(
            onPressed: () {
              setState(() {
              count++;
              
              });
            },
            child: Text("hello"+"- $count"),
            padding: EdgeInsets.all(10),
            color: Colors.blue,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            text = "200";
            count++;
          });
        },
        tooltip: "update",
        child: Icon(Icons.update),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return RaisedButton(
            onPressed: () {
              print("on press");
            },
            child: DemoItem(),
          );
        },
      ),
    );
  }
}

class DemoItem extends StatefulWidget {
  @override
  _DemoItemState createState() => _DemoItemState();
}

class _DemoItemState extends State<DemoItem> {
  _getBottomItem(IconData icon, String text) {
    return new Expanded(
      flex: 1,
      child: new Center(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(
              icon,
              size: 16.0,
              color: Colors.grey,
            ),
            new Padding(padding: new EdgeInsets.only(left: 5.0)),
            new Text(
              text,
              style: new TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Card(
        child: FlatButton(
            onPressed: () {
              print("onPress");
            },
            child: new Padding(
              padding: EdgeInsets.only(
                left: 0,
                top: 10,
                right: 10,
                bottom: 10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    child: Text(
                      "item title",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    margin: EdgeInsets.only(top: 6, bottom: 2),
                    alignment: Alignment.topLeft,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _getBottomItem(Icons.star, "1000"),
                      _getBottomItem(Icons.link, "1100"),
                      _getBottomItem(Icons.subject, "1200")
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}


