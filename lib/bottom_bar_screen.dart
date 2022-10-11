import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:fruit/Home_Page.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _selectedIndex = 0;

  List screens = [
    HomePage(),
    Center(child: Text("Profile")),
    Center(child: Text("Message")),
    Center(child: Text("Settings")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[_selectedIndex],
        bottomNavigationBar: BottomNavyBar(
          iconSize: 30,
          containerHeight: 70,
          selectedIndex: _selectedIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: [
            BottomNavyBarItem(
                icon: Icon(Icons.home_outlined),
                title: Text('Home'),
                activeColor: Colors.orange,
                inactiveColor: Colors.grey),
            BottomNavyBarItem(
                icon: Icon(Icons.shopping_cart_outlined),
                title: Text('Shoping'),
                activeColor: Colors.orange,
                inactiveColor: Colors.grey),
            BottomNavyBarItem(
                icon: Icon(Icons.notifications),
                title: Text('Messages'),
                activeColor: Colors.orange,
                inactiveColor: Colors.grey),
            BottomNavyBarItem(
                icon: Icon(Icons.person),
                title: Text('Settings'),
                activeColor: Colors.orange,
                inactiveColor: Colors.grey),
          ],
        ));
  }
}
