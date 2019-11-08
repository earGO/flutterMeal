import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/main_drawer.dart';

class FiltersScreen extends StatelessWidget {

  static const String routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter meals'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Ima filters screen'),
      ),
    );
  }
}
