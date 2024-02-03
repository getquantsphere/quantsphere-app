import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Navigation extends StatefulWidget {
  static const title = 'QuantSphere';

  const Navigation({super.key});

  @override
  NavigationState createState() => NavigationState();
}

class NavigationState extends State<Navigation> {
  var _currentIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('HomePage', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('InvestmentsPage', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('ProfilePage', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Navigation.title),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_currentIndex),
        ),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
              selectedColor: Colors.black,
            ),

            SalomonBottomBarItem(
              icon: const Icon(Icons.account_balance),
              title: const Text("Investments"),
              selectedColor: Colors.black,
            ),

            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Profile"),
              selectedColor: Colors.black,
            ),
          ],
          itemPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
        ),
      );
  }
}
