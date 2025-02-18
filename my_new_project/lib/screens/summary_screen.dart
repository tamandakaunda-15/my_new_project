import 'package:flutter/material.dart';

class SummaryScreen extends StatelessWidget {
  final String name;
  final String phone;
  final String email;

  SummaryScreen({required this.name, required this.phone, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Summary")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name: $name", style: TextStyle(fontSize: 18)),
            Text("Phone: $phone", style: TextStyle(fontSize: 18)),
            Text("Email: $email", style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Text("Start Over"),
            ),
          ],
        ),
      ),
    );
  }
}
