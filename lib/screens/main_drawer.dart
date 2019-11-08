import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildDrawerMenuItem(
      IconData iconName, String title, Function onTap, BuildContext context) {
    return ListTile(
      leading: Icon(
        iconName,
        size: 26,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.title,
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildDrawerMenuItem(
            Icons.restaurant,
            'Meals',
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
            context,
          ),
          buildDrawerMenuItem(
            Icons.settings,
            'Filters',
            () {
              Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
            },
            context,
          ),
        ],
      ),
    );
  }
}
