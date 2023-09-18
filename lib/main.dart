import 'package:flutter/material.dart';
import 'package:tugas1prak_pam_124210030/PageMasuk.dart';

void main() {
  runApp(const HalamanLogin());
}

class HalamanLogin extends StatelessWidget {
  const HalamanLogin({super.key});

  static const String _title = 'Login';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.teal,
            leading: Icon(Icons.home),
            title: Text('Login Page'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Log in',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 6,
              child: Image.asset('Asset/image/VIRGO.png'),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide:
                      BorderSide(width: 3, color: Colors.lightGreen)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  labelText: 'User Name',
                  floatingLabelStyle: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide:
                      BorderSide(width: 3, color: Colors.lightGreen)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  labelText: 'Password',
                  floatingLabelStyle: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
                height: 50,
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.greenAccent)),
                  child: const Text('Login'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        // Halaman tujuan
                        MaterialPageRoute(builder: (context) => PageMasuk()));
                  },
                )),
          ],
        ),
      ),
    );
  }
}


