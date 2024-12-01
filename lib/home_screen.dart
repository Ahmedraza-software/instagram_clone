import 'package:flutter/material.dart';
import '';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // Tracks the currently selected index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // App Bar Section
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Instagram",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Mea_Culpa",
                      fontSize: 35,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.camera_enhance,
                        size: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.share,
                        size: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            // Story Section
            const Row(
              children: [
                SizedBox(width: 30),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/1.jpg"),
                ),
                SizedBox(width: 15),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/2.jpg"),
                ),
                SizedBox(width: 15),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/3.jpg"),
                ),
                SizedBox(width: 15),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/4.jpg"),
                ),
                SizedBox(width: 15),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/5.jpg"),
                ),
                SizedBox(width: 15),
              ],
            ),
            const SizedBox(height: 5),
            // Post Section
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailScreen()));
                },
                child: Container(
                  width: 370,
                  height: 600,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      // Header Section
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20, left: 20),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage("assets/4.jpg"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 20, left: 10),
                                child: Text(
                                  "Alex",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Parkinsans",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 0, left: 10),
                                child: Text(
                                  "5 min",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "Parkinsans",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(top: 20, right: 20),
                            child: Icon(
                              Icons.more_horiz_rounded,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      // Image Section
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/hero.jpg", // Replace with your image
                            fit: BoxFit.cover,
                            width: 350,
                            height: 200,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Actions Section
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 15),
                                Icon(
                                  Icons.chat_bubble_outline,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 15),
                                Icon(
                                  Icons.send,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            Icon(
                              Icons.bookmark_border,
                              size: 30,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Track the selected index
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update selected index
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Likes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed, // Keep labels always visible
      ),
    );
  }
}
