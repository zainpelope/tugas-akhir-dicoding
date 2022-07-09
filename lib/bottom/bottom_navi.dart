import 'package:flutter/material.dart';
import 'package:proyek_akhir_dicoding/bottom/profile.dart';
import 'package:proyek_akhir_dicoding/bottom/settings.dart';
import 'package:proyek_akhir_dicoding/bottom/trips.dart';

class BelajarNavBar extends StatefulWidget {
  const BelajarNavBar({Key? key}) : super(key: key);

  @override
  _BelajarNavBarState createState() => _BelajarNavBarState();
}
class _BelajarNavBarState extends State<BelajarNavBar> {
  int _selectedNavbar = 0;
  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }
  List halaman = [const Trips(),const Profile(),const Settings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: halaman[_selectedNavbar],
      bottomNavigationBar: BottomNavigationBar(
        items:  const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.room),
            label: ('Trips'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: ('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: ('Settings'),
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}
