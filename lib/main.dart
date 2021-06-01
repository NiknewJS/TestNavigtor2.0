import 'package:flutter/material.dart';
import 'myactiv.dart';
import 'dart:async';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      theme:  ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(title: 'Start Activity For Result'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String stringFromActivity = 'Start Activity To Change Me \n😀😀😀';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title:  Text(widget.title),
      ),
      body:  Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              stringFromActivity, style: new TextStyle(fontSize: 20.0), textAlign: TextAlign.center,
            ),
             Container(height: 20.0,),
              ElevatedButton(child:  Text('Start Activity'),
              onPressed: () => _startActivity(),)
          ],
        ),
      ),
    );
  }

  Future _startActivity() async {

    Map results = await Navigator.of(context).push( MaterialPageRoute(builder:  (BuildContext context){
      Future.delayed(const Duration(seconds: 2),(){
        print('error');

      });
      return StartActivityForResult();
    }));

    if (results != null &&  results.containsKey('item')) {
       print('fff ${ results.length}');
      setState(() {
        stringFromActivity = results['item'];
        print(stringFromActivity);
      });
    }
  }
}