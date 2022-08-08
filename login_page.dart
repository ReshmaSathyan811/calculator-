import 'package:flutter/material.dart';

class Login_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, top: 20),
              child: Container(
                width: 100,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/logo_black.jpg"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20, right: 100),
              child: Text(
                " Welcome Back,",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 20, right: 100),
              child: Text(" Sign in to continue,",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 50, right: 100),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Email',
                  labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Divider(
              height: 10,
               thickness: 2,
               indent: 20,
               endIndent: 40,
               color: Colors.grey[200],
             ),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 10, right: 27),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Password', suffixIcon: Align(
                  widthFactor: 1,
                  heightFactor: 1.0,
                  child: Icon(
                      Icons.remove_red_eye),),
                  labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
                obscureText: true,
                obscuringCharacter: '*',
              ),
            ),
            Divider(
              height: 20,
              thickness: 2,
              indent: 20,
              endIndent: 40,
              color: Colors.grey[200],
            ),
            Padding(
              padding: EdgeInsets.only(left: 230, top: 8),
              child: TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: Text(
                  'Forgot Password',
                  style: (TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold)),
                ),

              ),
            ),
            Container(
              height: 70,
              width: 600,
              padding: EdgeInsets.only(left: 30, top: 20, right: 40),
              child: ElevatedButton(
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 25),
                ),
                onPressed: () {},
                 style : ElevatedButton.styleFrom(
                  primary:Colors.deepPurple[600],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 180),
                ),
                Text("New user?",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
                TextButton(
                  child: Text(
                    "Signup",
                    style: TextStyle(fontSize: 20, color: Colors.purple),
                  ),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
