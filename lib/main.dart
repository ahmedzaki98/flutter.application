import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double result =0.0;
  double Fval, Secval ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
          centerTitle: true,
          backgroundColor: Colors.teal[700],
        ),
        body: Container(
          margin: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextField(
                       keyboardType: TextInputType.number,
                       decoration: InputDecoration(
                         hintText: "First Number",
                       ),
                      onChanged: (value){
                         setState(() {
                           Fval = double.parse(value);
                         });
                      },
                     ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(15.0, 0, 15.0, 0)
                  ),
                     Expanded(
                       flex: 2,
                       child: TextField(
                         keyboardType: TextInputType.number,
                         decoration: InputDecoration(
                           hintText: "Second Number",
                         ),
                         onChanged: (value){
                           setState(() {
                             Secval = double.parse(value);
                           });
                         },
                       ),
                     ),
                    ],
                  ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Text("+", style: TextStyle(
                                color: Colors.white,
                              fontSize:25,
                            ),),
                            onPressed: (){
                              setState(() {
                               result = Fval + Secval;
                              });
                            },
                            color: Colors.teal[700]
                            ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0)
                        ),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),

                            child: Text("-", style: TextStyle(
                              color: Colors.white,
                              fontSize:30,
                            ),),
                            onPressed: (){
                              setState(() {
                                result = Fval - Secval;
                              });
                            },
                            color: Colors.teal[700]
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Text("×", style: TextStyle(
                              color: Colors.white,
                              fontSize:25,
                            ),),
                            onPressed: (){
                              setState(() {
                                result = Fval * Secval;
                              });
                            },
                            color: Colors.teal[700]
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0)
                        ),
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),

                            child: Text("÷", style: TextStyle(
                              color: Colors.white,
                              fontSize:25,
                            ),),
                            onPressed: (){
                              setState(() {
                                result = Fval / Secval;
                              });
                            },
                            color: Colors.teal[700]
                        ),
                      ],
                    ),
                  ],
                ),

              ),
              Text("Result: $result",
              style: TextStyle(fontSize: 22),
              ),
            ],
              ),
          ),
        ),
      );
  }
}