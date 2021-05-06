import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('ElevatedButton'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // penggunaan dasar
            ElevatedButton(
              onPressed: () {
                print('ini done');
              },
              child: new Text('belajarflutter.com'),
            ),
            //ElevatedButton.Icon
            ElevatedButton.icon(
              label: Text(
                'belajaraflutter.com',
              ),
              icon: Icon(Icons.web),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
              ),
              onPressed: () {
                print('yang kedua');
              },
            ),
            //ElevatedButton onPressed Dan onLongPress
            ElevatedButton(
              child: Text('belajarflutter.com'),
              onPressed: () { 
                print('menggunakan onPressed');
               },
               onLongPress: (){
                 print('Menggunakan LongPress klik yang lama button ');
               },
              
            ),
          ],
        ),
      ),
    );
  }
}
