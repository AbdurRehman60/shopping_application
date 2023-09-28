import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_application/models/Category.dart';
import 'package:shopping_application/screens/constants.dart';
import 'package:shopping_application/screens/home/Compnets/Categories.dart';
import 'package:shopping_application/screens/home/Compnets/search_from.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/Location.svg',
            ),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            Text(
              '15/New Texas',
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/Notification.svg',
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore",
              style: GoogleFonts.oswald(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const Text(
              "Best Outfits For you",
              style: TextStyle(fontSize: 18),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultBorderRadius),
              child: SearchForm(),
            ),
            Categories(),
          ],
        ),
      ),
    );
  }
}
