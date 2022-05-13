import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hack_it3/sign_in.dart';
import 'main.dart';
import 'package:flutter/cupertino.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey1 = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _firstnameController = TextEditingController();
  final _familynameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(


        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  icon: Icon(CupertinoIcons.arrow_left), color: Colors.black)
              ),
            ),

          body: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ListView(
                children: [

                  Text(
                      'Create your Account',
                      style: GoogleFonts.lato(
                          fontSize: 45,
                          fontWeight: FontWeight.bold
                      )
                  ),

                  SizedBox(height: 40),


                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: TextFormField(
                      controller: _firstnameController,
                      // The validator receives the text that the user has entered.
                      decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.person_fill),
                        prefixIconColor: Color(0xffaeaeae),
                        hintText: 'First name',
                        hintStyle: GoogleFonts.inter(
                            fontWeight: FontWeight.w200),
                        filled: true,
                        fillColor: Color(0xfffafafa),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide(
                                width: 2,
                                color: Color(0xffad99ff)
                            )
                        ),
                        focusColor: Color(0xfff3f0ff),
                        hoverColor: Color(0xfff3f0ff),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),

                      textInputAction: TextInputAction.done,

                      keyboardType: TextInputType.emailAddress,

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: TextFormField(
                      controller: _familynameController,
                      // The validator receives the text that the user has entered.
                      decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.person_fill),
                        prefixIconColor: Color(0xffaeaeae),
                        hintText: 'Family name',
                        hintStyle: GoogleFonts.inter(
                            fontWeight: FontWeight.w200),
                        filled: true,
                        fillColor: Color(0xfffafafa),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide(
                                width: 2,
                                color: Color(0xffad99ff)
                            )
                        ),
                        focusColor: Color(0xfff3f0ff),
                        hoverColor: Color(0xfff3f0ff),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),

                      textInputAction: TextInputAction.done,

                      keyboardType: TextInputType.emailAddress,

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),



                  // Champ de text userame
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: TextFormField(
                      controller: _emailController,
                      // The validator receives the text that the user has entered.
                      decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.mail_solid),
                        prefixIconColor: Color(0xffaeaeae),
                        hintText: 'Email address',
                        hintStyle: GoogleFonts.inter(
                            fontWeight: FontWeight.w200),
                        filled: true,
                        fillColor: Color(0xfffafafa),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide(
                                width: 2,
                                color: Color(0xffad99ff)
                            )
                        ),
                        focusColor: Color(0xfff3f0ff),
                        hoverColor: Color(0xfff3f0ff),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),

                      textInputAction: TextInputAction.done,

                      keyboardType: TextInputType.emailAddress,

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),

                  //champs de texte password
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: TextFormField(
                      controller: _passwordController,
                      // The validator receives the text that the user has entered.
                      decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.lock_fill),
                        prefixIconColor: Color(0xffaeaeae),
                        hintText: 'Password',
                        hintStyle: GoogleFonts.inter(
                            fontWeight: FontWeight.w200),
                        filled: true,
                        fillColor: Color(0xfffafafa),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide(
                                width: 2,
                                color: Color(0xffad99ff)
                            )
                        ),
                        focusColor: Color(0xfff3f0ff),
                        hoverColor: Color(0xfff3f0ff),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),

                      textInputAction: TextInputAction.done,

                      keyboardType: TextInputType.emailAddress,

                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),

                  SizedBox(height: 10),




                  Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: RaisedButton(
                      color: Color(0xff6b5bab),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),

                      ),
                      onPressed: () {
                        if (_formKey1.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                      child: Text('Sign up', style: GoogleFonts.lato(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500)),
                    ),
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'You already have an account ?',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16,
                            fontWeight: FontWeight.w300
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => SignIn()));
                          },
                          child: Text('Sign in',
                              style: GoogleFonts.lato(fontSize: 16,
                                  color: Color(0xff6b5bab),
                                  fontWeight: FontWeight.bold)

                          )
                      )
                    ],
                  ),
                ],
              )
          ),
        )
    );
  }
}