import 'package:flutter/material.dart';
import 'package:flutter_application_1/user/screens/fuel.dart';
import 'package:flutter_application_1/user/screens/repair.dart';
import 'package:flutter_application_1/user/screens/tow.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromARGB(255, 237, 244, 171), // Light grey background color

      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(kToolbarHeight), // Set the height of the AppBar
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 234, 205, 20),
                const Color.fromARGB(255, 25, 196, 156)
              ], // Gradient colors
              begin: Alignment.topLeft, // Start of the gradient
              end: Alignment.bottomRight, // End of the gradient
            ),
          ),
          child: AppBar(
            title: Text(
              'Welcome to Fuel & Fix Assist System',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(
                    255, 0, 0, 0), // Set text color to white for contrast
                fontSize: 20,
                letterSpacing: 1,
              ),
            ),
            centerTitle: true,
            backgroundColor:
                Colors.transparent, // Make AppBar background transparent
            elevation: 10, // Remove shadow to show the gradient properly
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // First Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildOptionBox(
                  context: context,
                  title: 'Fuel',
                  icon: Icons.local_gas_station,
                  colors: [
                    Color.fromARGB(255, 228, 76, 21),
                    Color.fromARGB(255, 180, 166, 38)
                  ],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FuelStationApp()),
                    );
                  },
                ),
                buildOptionBox(
                  context: context,
                  title: 'Repair Services',
                  icon: Icons.build,
                  colors: [
                    Color.fromARGB(255, 221, 65, 26),
                    Color.fromARGB(197, 24, 41, 28)
                  ],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VehicleRepairApp()),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 30), // Space between rows
            // Second Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildOptionBox(
                  context: context,
                  title: 'Tow Services',
                  icon: Icons.drive_eta,
                  colors: [
                    Color.fromARGB(255, 102, 172, 97),
                    Color.fromARGB(255, 12, 19, 2)
                  ],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TowingServiceApp()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOptionBox({
    required BuildContext context,
    required String title,
    required IconData icon,
    required List<Color> colors,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 180,
        height: 180,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 20,
              offset: Offset(6, 8),
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 35,
              ),
              SizedBox(height: 12),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.5),
                      offset: Offset(2, 2),
                      blurRadius: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
