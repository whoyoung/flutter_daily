import 'package:flutter/material.dart';

class IncrementPage extends StatefulWidget {
  
  @override
  _IncrementPageState createState() => _IncrementPageState();
}

class _IncrementPageState extends State<IncrementPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Map args = ModalRoute.of(context).settings.arguments;
    
   Object _paramWidget() {
     if (args != null && args["param"] != null) {
        // return true;
        var param = args["param"];
        return Text(
                      '$param',
                    );
      }
      
      return Text("");
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("IncrementPage"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'you have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.display1,
              ),
              
              _paramWidget()
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ), 
      );
  }
}