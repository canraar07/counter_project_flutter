import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter App Flutter'),
          backgroundColor: Colors.cyanAccent,
        ),
        body: StateWidget(),
      )
    );
  }
}

class StateWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return WidgetBody();
  }
}

class WidgetBody extends State<StateWidget>{
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(left: 90),
        child : Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(right: 20),
                    child : RaisedButton(
                      color: Colors.green,
                      onPressed: (){
                        print(i);
                        setState(() {
                          i--;
                        });
                      },
                      child: Icon(Icons.exposure_neg_1),
                    )
                ),
                Text(i.toString(),
                  style:
                  TextStyle(
                    fontSize: 50
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 20),
                    child: RaisedButton(
                          color: Colors.red,
                          onPressed: (){
                            print(i);
                            setState(() {
                              i++;
                            });
                          },
                          child: Icon(Icons.exposure_plus_1),
                        )
                ),
              ],
       ))
    );
  }

}
