/* if (sıcaklık>=25){klimayı çalıştır;}
else {camı aç;}

sıcaklık>=25 ? klimayı çalıştır : camı aç */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  String? seciliButon;
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                seciliButon = 'SOL';
              });

              print(seciliButon);
            },
            child: Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Text(
                    seciliButon == 'SAĞ' ? 'Aktif Buton' : 'Pasif Buton',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                width: 150,
                height: 250,
                color:
                    seciliButon == 'SOL' ? Colors.blueAccent : Colors.blueGrey),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                seciliButon = 'SAĞ';
              });

              print(seciliButon);
            },
            child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Text(
                    seciliButon == 'SOL' ? 'Aktif Buton' : 'Pasif Buton',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
                width: 150,
                height: 250,
                color:
                    seciliButon == 'SAĞ' ? Colors.blueAccent : Colors.blueGrey),
          )
        ],
      ),
    ));
  }
}
