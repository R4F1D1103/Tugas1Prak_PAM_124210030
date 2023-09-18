import 'package:flutter/material.dart';
import 'package:tugas1prak_pam_124210030/main.dart';

class PageMasuk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Center(
            child:ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.deepPurpleAccent)),
              //Navigator.pop() digunakan untuk kembali ke halaman sebelumnya
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                      return HalamanLogin();
                    }));
              },
              child: Text('TERIMAKASIH'),
            )
        ),
      ),
    );
  }
}