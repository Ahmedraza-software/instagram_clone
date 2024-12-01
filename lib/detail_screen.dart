import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("assets/4.jpg"),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Alex",
                      style: TextStyle(fontFamily: "Parkinsans", fontSize: 25),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 80),
                  child: Icon(
                    Icons.more_horiz_rounded,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
