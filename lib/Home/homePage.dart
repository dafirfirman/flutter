import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/flutter_bird.png',
                    height: 150,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Mau belajar apa hari ini?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                    ),
                  ),
                ],
              ),
            ),
            _buildCard(
              title: 'Panduan Widget Flutter',
              buttonText: 'GO',
              gradientColors: [Colors.orange, Colors.purple],
              icon: Icons.grid_view,
            ),
            _buildSimpleCard('Quis'),
            _buildCard(
              title: 'PENGENALAN FLUTTER',
              buttonText: 'GO',
              gradientColors: [Colors.blue, Colors.blueAccent],
              icon: Icons.info,
              hasImage: true,
            ),
            _buildCard(
              title: 'FORUM',
              buttonText: 'GO',
              gradientColors: [Colors.green, Colors.lightGreen],
              hasImage: true,
              imagePath: 'assets/images/forum.png',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required String buttonText,
    required List<Color> gradientColors,
    IconData? icon,
    bool hasImage = false,
    String? imagePath,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    iconColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(buttonText),
                ),
              ],
            ),
          ),
          if (hasImage && imagePath != null)
            Image.asset(
              imagePath,
              height: 60,
            )
          else if (icon != null)
            Icon(
              icon,
              size: 50,
              color: Colors.white,
            ),
        ],
      ),
    );
  }

  Widget _buildSimpleCard(String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
