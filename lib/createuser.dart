import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("สร้างบัญชีผู้ใช้ใหม่"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "สร้างบัญชีผู้ใช้ใหม่",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                hintText: "ชื่อผู้ใช้",
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "รหัสผ่าน",
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String username = _usernameController.text;
                String password = _passwordController.text;
                // ทำสิ่งที่คุณต้องการกับข้อมูลการสมัครผู้ใช้ที่นี่
                print("Username: $username, Password: $password");
              },
              child: Text("ยืนยัน"),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: RegistrationForm(),
  ));
}
