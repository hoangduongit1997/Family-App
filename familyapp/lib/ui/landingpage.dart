import 'package:flutter/material.dart';
import 'package:familyapp/theme.dart';

import 'aboutpage.dart';
import 'accountpage.dart';
import 'favoritefamilies.dart';
import 'homepage.dart';
import 'lovedoffers.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  //Declaration of bottom nav index
  int bottomIndex = 0;

  //Declaration of page headers, pages, and pages icon
  final List<String> headerCategories = ['Discover', 'Favorite Families', 'Loved Offers', 'About', ''];

  final List<Widget> children = [HomePage(), FavoriteFamiles(), LovedOffers(), AboutApp() , AboutDeveloper()];

  final List<Widget> headerIcons = [
    Padding(
      padding: const EdgeInsets.only(right: 15),
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.notifications_none),
        color: primaryText,
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 15),
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.sort),
        color: primaryText,
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 15),
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.search),
        color: primaryText,
      ),
    ),
    Container(),
    Container()
  ];


  @override
  Widget build(BuildContext context) {
    //Main Scaffold
    return Scaffold(
      //AppBar
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Text(
              headerCategories[bottomIndex],
              style: headlines,
            ),
          ),
          backgroundColor: bottomIndex == 4 ? Color(0xFF1D2427) : primaryColor,
          elevation: 0.0,
          actions: <Widget>[
            headerIcons[bottomIndex]
          ],
        ),
        //Bottom Navigation
        bottomNavigationBar: BottomNavigationBar(
//          elevation: 2,
            selectedItemColor: primaryText,
            unselectedItemColor: Color(0xFFE2E2E2),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (int index) {
              setState(() {
                bottomIndex = index;
              });
            },
//            type: BottomNavigationBarType.fixed,
            currentIndex: bottomIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(CustomIcons.home), title: Text('')),
              BottomNavigationBarItem(icon: Icon(Icons.star), title: Text('')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), title: Text('')),
              BottomNavigationBarItem(icon: Icon(Icons.info), title: Text('')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text('')),
            ]),
        backgroundColor: primaryColor,

        //Different Pages
        body: children[bottomIndex]
    );
  }

}
