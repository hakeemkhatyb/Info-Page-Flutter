import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // this is the whole page
        appBar: AppBar(
            backgroundColor: Colors.black26,
            title: Text("Hakim Al-Khateeb")), //This is the upper toolbar
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
            // this puts the design inside of the screen
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // margin x
          children: <Widget>[
            CircleAvatar(
              //profile picture
              radius: 50.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('Assets/me.png'),
            ),
            Text(
              "Hakim Al-Khateeb",
              style: TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.transparent,
                  fontSize: 32.0,
                  fontFamily: 'SourceSans'),
            ),
            Text(
              'Technical Support Specialist',
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              // spacing
              height: 20,
              width: 150.0,
              child: Divider(
                // a line
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.call,
                  color: Colors.blueGrey,
                ),
                title: Text("+90342424243"),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 25),
              color: Colors.white,
              child: ListTile(
                // used to put an icon next to text
                leading: Icon(
                  Icons.email,
                  color: Colors.blueGrey,
                ),
                title: Text("Hakeemtest@gmail.com"),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
