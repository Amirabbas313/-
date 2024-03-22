import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b3232),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(30),
          child: GNav(
              rippleColor: Color(0xff1b3232),
              hoverColor: Color(0xffd6a266),
              haptic: true,
              tabBorderRadius: 25,
              duration: Duration(milliseconds: 600),
              color: Color(0xff938f84), 
              activeColor: Color(0xff1b3232),
              iconSize: 27,
              tabBackgroundColor:
                  Color(0xffd6a266),
              padding: EdgeInsets.symmetric(
                  horizontal: 20, vertical: 20),
              tabs: [
                GButton(
                  icon: Icons.home_outlined
                ),
                GButton(
                  icon: Icons.share_outlined,
                ),
                GButton(
                  icon: Icons.search_rounded,
                ),
                GButton(
                  icon: Icons.person_outline_sharp,
                )
              ]),
        ));
  }
}