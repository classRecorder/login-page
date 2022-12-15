import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginpage/TestPage.dart';
import 'package:loginpage/SignUpPage.dart';



void main() {
  runApp(MaterialApp(
    home: forgotPassPage(),
  ));
}

class forgotPassPage extends StatefulWidget {
  @override
  State<forgotPassPage> createState() => _forgotPassPageState();
}

class _forgotPassPageState extends State<forgotPassPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('forgot password'),
          backgroundColor: Colors.grey[800],
        ),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 250.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //        Text for information

                  Text(
                    'Forgot your password?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'please enter your email to reset your password ',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),

                  //        Email textfield

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Email:',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  label: Text('Email'),
                                  border: InputBorder.none,
                                  hintText: 'Email'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),



                  //        Send email button

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: InkWell(
                      child: Container(
                        padding: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: Text(
                              'Send email',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0),
                            )),
                      ),
                      onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TestPage(),
                            ),
                          );
                      },
                    ),
                  ),
                  SizedBox(height: 10),

                ],
              ),
            ),
          ),
        ));
  }
}
