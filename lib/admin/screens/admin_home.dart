import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Dashboard'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Dashboard Overview
              Text(
                'Dashboard Overview',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _dashboardCard('Total Users', '250', Icons.people),
                  _dashboardCard('Active Requests', '15', Icons.request_page),
                  _dashboardCard('Revenue', '\$12,000', Icons.attach_money),
                ],
              ),
              SizedBox(height: 20),

              // User Management
              _sectionHeader('User Management'),
              _adminOption('Manage Users', Icons.manage_accounts, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManageUsersPage()),
                );
              }),
              SizedBox(height: 10),

              // Mechanic Management
              _sectionHeader('Mechanic Management'),
              _adminOption('Manage Mechanics', Icons.build, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ManageMechanicsPage()),
                );
              }),
              SizedBox(height: 10),

              // Fuel Station Management
              _sectionHeader('Fuel Station Management'),
              _adminOption('Manage Fuel Stations', Icons.local_gas_station, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ManageFuelStationsPage()),
                );
              }),
              SizedBox(height: 10),

              // Payment and Transactions
              _sectionHeader('Payments and Transactions'),
              _adminOption('View Transactions', Icons.payment, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TransactionsPage()),
                );
              }),
              SizedBox(height: 10),

              // Reports and Analytics
              _sectionHeader('Reports and Analytics'),
              _adminOption('View Reports', Icons.analytics, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReportsPage()),
                );
              }),
              SizedBox(height: 10),

              // Feedback Management
              _sectionHeader('Feedback and Complaints'),
              _adminOption('Manage Feedback', Icons.feedback, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FeedbackPage()),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  // Dashboard Card Widget
  Widget _dashboardCard(String title, String value, IconData icon) {
    return Expanded(
      // Make sure the cards can flex to fit the space
      child: Card(
        elevation: 4,
        color: Colors.blueGrey[50],
        child: Container(
          padding: EdgeInsets.all(16),
          height: 120, // Increased height for better card spacing
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 30, color: Colors.blueGrey),
              SizedBox(height: 5),
              Text(
                value,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                title,
                style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Section Header Widget
  Widget _sectionHeader(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.blueGrey,
      ),
    );
  }

  // Admin Option Widget
  Widget _adminOption(String title, IconData icon, VoidCallback onTap) {
    return Card(
      elevation: 4,
      child: ListTile(
        leading: Icon(icon, color: Colors.blueGrey),
        title: Text(
          title,
          overflow: TextOverflow.ellipsis, // Handle overflow
        ),
        onTap: onTap,
      ),
    );
  }
}

// Sample Pages for Navigation (These pages will be placeholders for now)

class ManageUsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Manage Users')),
      body: Center(child: Text('Manage Users Content')),
    );
  }
}

class ManageMechanicsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Manage Mechanics')),
      body: Center(child: Text('Manage Mechanics Content')),
    );
  }
}

class ManageFuelStationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Manage Fuel Stations')),
      body: Center(child: Text('Manage Fuel Stations Content')),
    );
  }
}

class TransactionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transactions')),
      body: Center(child: Text('Transactions Content')),
    );
  }
}

class ReportsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reports')),
      body: Center(child: Text('Reports Content')),
    );
  }
}

class FeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Feedback and Complaints')),
      body: Center(child: Text('Feedback and Complaints Content')),
    );
  }
}
