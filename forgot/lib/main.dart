import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'for',
      home:Forgot(),
    );
  }
}

class Forgot extends StatefulWidget {
  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(20),
          child:
          Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Forgot Password',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600
                ),

              ),
              SizedBox(
                height: 90
                ,
              ),
              Text('please, enter your email address. You will receive'
                  'a link to create a new password via email.',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                  ,

                ),

              ),
              SizedBox(
                height: 20
                ,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Email',
                  border: OutlineInputBorder(),

                ),
              ),
              SizedBox(
                height: 30
                ,
              ),

              Container(
                height: 60,
                width: double.infinity,
                color: Colors.blue,




                child:
                MaterialButton(onPressed: (){},

                  child:  Text('SEND',
                    style:TextStyle (
                      color: Colors.white,

                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }


// Perform authentication or any other logic here
}
