// lib/screens/dashboard_screen.dart
import 'package:flutter/material.dart';
import 'package:nimo_project/services/auth_service.dart'; // Assuming you need AuthService here too
import 'package:nimo_project/screens/login_screen.dart'; // For logout navigation

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthService _authService = AuthService(); // Get an instance of the auth service

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await _authService.logout(); // Perform logout
              // Navigate back to the login screen and remove all routes below it
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const LoginScreen()),
                    (Route<dynamic> route) => false,
              );
            },
            tooltip: 'Logout',
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.dashboard,
                size: 150,
                color: Colors.green.shade600,
              ),
              const SizedBox(height: 32.0),
              Text(
                'Welcome to your Dashboard!',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade800,
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                'This is your main application area after successful login. You can start building your features here.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.grey.shade700,
                ),
              ),
              const SizedBox(height: 48.0),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Dashboard action clicked!')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Dashboard-specific button color
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                child: const Text('Explore Features'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
