import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget icons(IconData icon, String name) {
    return Container(
      width: 90,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(9)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.orangeAccent,
          ),
          Text(name)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.orangeAccent,
                  Colors.pinkAccent,
                ],
              )),
              child: Column(
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.clear),
                      color: Colors.white,
                      alignment: Alignment(-42.0, 10.0),
                      onPressed: () {}),
                  Container(
                    margin: const EdgeInsets.only(top: 60),
                    width: 99,
                    height: 100,
                    child: ClipOval(
                      child: Image.asset(
                        'images/2.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    'Maggie Vega',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Text(
                    '\nFreelancer',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 1.5,
                      padding: const EdgeInsets.only(
                          right: 40, left: 40, bottom: 40, top: 80),
                      children: <Widget>[
                        icons(Icons.play_circle_filled, 'Video'),
                        icons(Icons.payment, 'Feeds'),
                        icons(Icons.message, 'Messages'),
                        icons(Icons.music_note, 'Music'),
                        icons(Icons.notifications, 'Notifications'),
                        icons(Icons.settings, 'Settings'),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    width: 110,
                    height: 3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9),
                    ),
                  )
                ],
              ))),
    );
  }
}
