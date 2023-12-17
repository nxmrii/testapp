import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Login Page",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
        backgroundColor: Colors.teal,
      ),

      body: Center(
        child: Container(
          padding: const EdgeInsets.all(100),
          width: 450,
          height: 450,
          alignment: Alignment.center,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/profile.png",
              width: 70,
              height: 70 ),

              const Text("Login ",
              style: TextStyle(
                fontSize: 40,
                color: Colors.transparent
              ),
              ),

              const TextField(
                keyboardType: TextInputType.name,
                textAlign: TextAlign.left,
                textInputAction: TextInputAction.done,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: "User Name",
                  icon: Icon(Icons.account_circle)
                ),
              ),


              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password',
                    icon:  Padding(
                        padding:  EdgeInsets.only(top: 15.0),
                        child:  Icon(Icons.lock)
                    ),
                ),
              ),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  elevation: 8,
                  //fixedSize: const Size(90, 49)
                  //maximumSize: Size(20, 20)
                  //enabledMouseCursor: MouseCursor.defer,
                ),
                child: const
                Text('login',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),


            ],

     ),

        ),
      ),


    );
  }
}


