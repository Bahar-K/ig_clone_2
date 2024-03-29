import 'package:flutter/material.dart';
import 'package:ig_clone_2/views/profile_page.dart';
import '../search_page.dart';
import '../views/home_page.dart';
import '../views/profile_page.dart';

class ButtomBar extends StatefulWidget {
  const ButtomBar({Key? key}) : super(key: key);

  @override
  _ButtomBarState createState() => _ButtomBarState();
}

class _ButtomBarState extends State<ButtomBar> {
  int currentIndex = 0;
  List<Widget> menu = [
    const HomePage(),
    const Search(),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.blue,
    ),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      top: false,
      child: Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: menu,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withOpacity(0.8),
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(label: "", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "", icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: "", icon: Icon(Icons.add_box)),
            BottomNavigationBarItem(
                label: "", icon: Icon(Icons.favorite_border)),
            BottomNavigationBarItem(
              label: "",
              icon: Image.asset(
                "assets/images/avatar1.png",
                scale: 2.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
