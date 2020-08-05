import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/img/background_1.png'),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(
                height: 200,
              ),
              blockCenter(),
              blockEnd(),
            ],
          ),
        ),
      ),
    );
  }

  Widget blockCenter() {
    return Column(
      children: <Widget>[
        Text(
          'TRAVELER',
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          'Comparte el mundo y conviértete en un viajero increíble',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget blockEnd() {
    return Column(
      children: <Widget>[
        FlatButton(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
          color: Color(0xff52E4C4),
          child: Text(
            'Ingresar',
            style: TextStyle(
              color: Color(0xff286759),
              fontSize: 14,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          onPressed: () {
            setState(() {
              print('Hola Mundo');
            });
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          'Nuevo miembro',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }
}
