import 'package:flutter/material.dart';
import 'package:hack_it3/sign_in.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hack_it3/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hack !t 3',
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  child: Image.asset('Assets/logo.png'),
                ),
                Container(
                  child: Text(
                    'Who is coming to sit on our table and says that he can insure you better than us ?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w300),

                  ),
                ),
                Spacer(),
                Container(
                  height: MediaQuery.of(context).size.height * 0.11,
                  width: MediaQuery.of(context).size.width*0.6,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    color: Color(0xff6b5bab),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),

                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => SignIn()));
                    },
                    child: Text('Get started', style: GoogleFonts.lato(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500)),
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
