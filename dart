# Laboratory-Exam

  //Paulline Joy Nacorda      BSIT-3R6//

import 'package:flutter/material.dart';

void main() {
  runApp(JoysApplication());
}

class JoysApplication extends StatelessWidget {
  final List<String> names = ["Dan", "Reyes", "John"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF102030),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF004080),
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.yellow, fontSize: 16),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF004080),
          title: Row(
            children: [
              Icon(Icons.home, color: Colors.amber ),
              SizedBox(width: 8),
              Text('Hello it is Joy :)', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) {
              String name = names[index];
              return ListTile(
                leading: CircleAvatar(
                  child: Icon(
                    Icons.account_circle_rounded,
                    size: 30,
                    color: Colors.grey,
                  ),
                  backgroundColor: Colors.black,
                ),
                title: Text(
                  name,
                  style: TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  '${name.length} characters',
                  style: TextStyle(color: Colors.grey[400], fontSize: 14),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

