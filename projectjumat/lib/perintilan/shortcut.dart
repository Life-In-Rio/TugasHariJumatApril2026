import 'package:flutter/material.dart';

class Shortcut extends StatelessWidget {
  const Shortcut({super.key});

  Widget shortcutItem(String title, String image, {String? subtitle}) {
    return Container(
      height: 130,
      width: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              width: 40,
              height: 40,
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            if (subtitle != null) Text(subtitle),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Shortcut',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Edit",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 2),
                Container(
                  height: 3,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            shortcutItem(
              'Kantong Utama',
              'assets/monybag.png',
              subtitle: 'Rp.50.000',
            ),
            shortcutItem(
              'Investasi',
              'assets/profit.png',
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            shortcutItem(
              'Jago Amal',
              'assets/let.png',
              subtitle: 'zakat dan sedekah',
            ),
            shortcutItem(
              'Saldo Saya',
              'assets/money.png',
              subtitle: 'Rp.50.000',
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            shortcutItem(
              'Buat',
              'assets/diagram.png',
              subtitle: 'Auto-Budgeting',
            ),
            shortcutItem(
              'Ajak Teman',
              'assets/community-building.png',
              subtitle: 'Undang dan dapat Bonus!'
            ),
          ],
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}