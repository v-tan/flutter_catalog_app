import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int days = 30;

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App")
      ),
      body: Center(
        child: Material(
          child: Container(
            child: Text("Welcome to $days days of Flutter"),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
