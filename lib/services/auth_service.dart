import 'package:nimo_project/models/user_model.dart';


class AuthService {
  // Use a mutable map for mock users to allow adding new registrations
  final Map<String, String> _mockUsers = {
    'test@example.com': 'password123',
    'user@domain.com': 'secretpass',
  };

  User? _currentUser;

  User? get currentUser => _currentUser;

  /// Simulates a user login.
  Future<bool> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 2)); // Simulate network delay

    if (_mockUsers.containsKey(email) && _mockUsers[email] == password) {
      _currentUser = User(id: 'user-${email.hashCode}', email: email, name: 'Mock User');
      print('AuthService: Login successful for $email');
      return true;
    } else {
      _currentUser = null;
      print('AuthService: Login failed for $email');
      return false;
    }
  }

  /// Simulates user registration.
  /// In a real app, this would make an API call to your backend (e.g., Firebase auth.createUserWithEmailAndPassword).
  Future<bool> signUp(String email, String password) async {
    await Future.delayed(const Duration(seconds: 2)); // Simulate network delay

    if (_mockUsers.containsKey(email)) {
      print('AuthService: Sign Up failed - Email already exists: $email');
      return false; // Email already registered
    } else {
      // Simulate successful registration
      _mockUsers[email] = password; // Add new user to our mock database
      print('AuthService: Sign Up successful for $email');
      // Note: We don't automatically log in the user after sign-up here;
      // they'll be redirected to the login screen to sign in.
      return true;
    }
  }

  /// Simulates user logout.
  Future<void> logout() async {
    await Future.delayed(const Duration(milliseconds: 500));
    _currentUser = null;
    print('AuthService: User logged out.');
  }

  /// Checks if a user is currently authenticated.
  bool isAuthenticated() {
    return _currentUser != null;
  }
}

// lib/models/user_model.dart (remains unchanged)
class User {
  final String id;
  final String email;
  final String? name;

  User({required this.id, required this.email, this.name});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      email: json['email'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
    };
  }
}