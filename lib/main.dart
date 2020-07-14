import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shadow/shadow.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Color.fromRGBO(208, 208, 208, 0.5),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(height: 1, width: 1,),
                    Padding(
                      padding: const EdgeInsets.only(right: 30, top: 50),
                      child: CircleAvatar(
                        radius: 20,
                        child: ClipOval(
                          child: Image.asset('images/girl.jpg', height: 50, width: 50, fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 18),
                  child: Text('Good Morning!!!', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                ),
                Text('Mon 12 May 2021', style: TextStyle(fontSize: 18, color: Colors.black54),),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Shadow(child: Image.asset('images/clock.png', scale: 3, color: Colors.black,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 19, right: 19),
                  child: Container(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(19.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('USA', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                              Text('New York', style: TextStyle(fontSize: 25, color: Colors.black54))
                            ],
                          ),
                          Text('8:00 AM', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 19, right: 19, top: 13),
                  child: Container(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(19.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('INDIA', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                              Text('Pune', style: TextStyle(fontSize: 25, color: Colors.black54))
                            ],
                          ),
                          Text('11:00 AM', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 1,
            right: 1,
            child: Padding(
              padding: const EdgeInsets.all(29.0),
              child: Container(
                height: 60, width: 60,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.blue, Color.fromRGBO(0, 41, 102, 1)])
                ),
                child: Icon(Icons.add_alarm, color: Colors.white60,),
              ),
            ),
          )
        ],
      )
    );
  }
}
