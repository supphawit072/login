import 'package:flutter/material.dart';

class Welcompage extends StatefulWidget {
  const Welcompage({super.key});

  @override
  State<Welcompage> createState() => _WelcompageState();
}

class _WelcompageState extends State<Welcompage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  colors: [Colors.white, Colors.pink.shade200])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // _textHeader(),
              _textWelcome(),
              _loginForm(),
              _buttonLogin(),
              _buttonLoginf(),
              _buttonCreate()
            ],
          ),
        ),
      ),
    );
  }

  // Widget _textHeader() {
  //   return Padding(
  //     padding: const EdgeInsets.all(5.0),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.end,
  //       children: [
  //         IconButton(
  //             onPressed: () {},
  //             icon: Icon(
  //               Icons.help,
  //               color: Colors.white,
  //             )),
  //         TextButton(
  //           onPressed: () {},
  //           child: Text("",
  //               style: TextStyle(
  //                   color: Colors.black,
  //                   fontWeight: FontWeight.bold,
  //                   fontSize: 15)),
  //         ),
  //         Container(
  //           width: 2.0,
  //           height: 20,
  //           color: Colors.white,
  //         ),
  //         TextButton(
  //           onPressed: () {},
  //           child: Text("",
  //               style: TextStyle(
  //                   color: Colors.black,
  //                   fontWeight: FontWeight.bold,
  //                   fontSize: 15)),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget _textWelcome() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                colors: [Colors.white, Colors.pink.shade200],
              ),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 8),
          Text(
            "Instagram",
            style: TextStyle(
              fontSize: 36,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _loginForm() {
    return Container(
      width: 350,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20), // Add some spacing between the input fields
            TextField(
              obscureText: true, // Hide the entered text for password
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buttonLogin() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      width: double.infinity, // Set the width to match the parent's width
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Colors.white, // Set the background color to blue
        ),
        child: Text(
          "เข้าสู่ระบบ",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buttonLoginf() {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextButton(
        onPressed: () {
          // Add the functionality for the "Forgot Password" button here
        },
        child: Text(
          "ลืมรหัสผ่านใช่หรือไม่",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ]);
  }

  Widget _buttonCreate() {
    return Positioned(
      child: Container(
        transform: Matrix4.translationValues(0.0, 160.0, 0.0),
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0), // Set the border radius
          child: ElevatedButton(
            onPressed: () {
              // Add your logic for the button here
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 1,
            ),
            child: Container(
              decoration: BoxDecoration(
                  // gradient: LinearGradient(
                  //   colors: [
                  //     Colors.blue.withOpacity(0.2),
                  //     Colors.blue.withOpacity(0.2),
                  //   ],
                  // ),
                  ),
              child: Center(
                child: Text(
                  "สร้างบัญชีผู้ใช้ใหม่",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
