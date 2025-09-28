import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}


class _BottomNavBarState extends State<BottomNavBar> {
  final appScreen = [
    HomeScreen(),
    Center(child: Text("Search")),
    Center(child: Text("Ticket")),
    Center(child: Text("Profile")),
  ];

  int _selectedIndex = 0;

  void _onItemTapped (int index){
    setState((){
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appScreen[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          items: [
              BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_add_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_home_add_filled),
                  label: "Home"),
              BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_clipboard_search_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_clipboard_search_filled),
                  label: "Search"),
              BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                  label: "Ticket"),
              BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
                  label: "Profile"),
      ]),
    );
  }
}
