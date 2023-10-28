import 'package:flutter/material.dart';

import 'colors.dart';

// class MyWidgets {
//   String text;
//   MyContainer({required this.text});
//   void MyContainer(text) {

//   }
// }

Row MyAppBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Icon(Icons.man_3_rounded),
      Container(
        decoration: BoxDecoration(
          color: mwhite,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Text(
            '745 Lincoin PI',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
      ),
      const Icon(Icons.shopify_rounded),
    ],
  );
}
