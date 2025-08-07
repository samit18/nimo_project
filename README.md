# 🧱 auth_dashboard_boilerplate

A foundational **Flutter boilerplate** project providing a clean, structured starting point for applications requiring **user authentication** and a **dashboard interface**. This repository sets up the basic architecture, including screen, model, and service layers, with mock authentication ready for integration with real backend services.

---

## ✨ Features

### 🔐 User Authentication:
- **Login Screen**: UI and logic for user sign-in.
- **Sign-Up Screen**: UI and logic for new user registration.
- **Mock Authentication Service**: Simulated login/sign-up with hardcoded users (`AuthService`) for quick testing.

### 🧭 Dashboard:
- **Dashboard Screen**: Basic placeholder screen accessible after login.

### 🧱 Architecture:
- **Clean Folder Structure**: Separated into `screens`, `models`, and `services` for scalability and maintenance.
- **Responsive UI**: Built with standard Flutter widgets to support all screen sizes.
- **Google Fonts**: Uses the `Inter` font for modern design.

---

## 📊 Latest Updates

- **UI/UX Enhancements**: Improved styling for Login & Sign-Up pages, with better input fields and feedback.
- **Robust Mock Auth**: Enhanced error handling and simple validation during sign-up to simulate real backend behavior.

---

## 🚀 Getting Started

### 🔧 Prerequisites
- Flutter SDK installed
- IDE (VS Code, Android Studio, etc.) with Flutter & Dart plugins

Markdown

### 📥 Installation

```
git clone https://github.com/Yamiteeee/auth_dashboard_boilerplate.git
cd auth_dashboard_boilerplate
flutter pub get
flutter run
```
🔑 Authentication Details
The project uses a mock AuthService (lib/services/auth_service.dart) with hardcoded credentials for demonstration:

Login:
Email: test@example.com
Password: password123
Sign-Up: You can register new users; they will be added to the in-memory mock user list for the current session.
To integrate with a real backend (e.g., Firebase, REST API):
Modify the login and signUp methods within lib/services/auth_service.dart to make actual API calls or use a chosen authentication SDK.
```
📂 Project Structure
auth_dashboard_boilerplate/
├── lib/
│   ├── main.dart             # App entry point
│   ├── models/
│   │   └── user_model.dart   # User data model
│   ├── screens/
│   │   ├── dashboard_screen.dart # Dashboard UI
│   │   ├── login_screen.dart     # Login screen UI
│   │   └── signup_screen.dart    # Sign-up screen UI
│   └── services/
│       └── auth_service.dart # Auth logic (mock or real)
├── pubspec.yaml              # Dependencies & metadata
└── README.md                 # This file
```

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
EOF

echo "README.md has been generated successfully!"
How to use this bash script:

