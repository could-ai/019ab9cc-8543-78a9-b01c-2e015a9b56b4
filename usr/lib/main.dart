import 'package:flutter/material.dart';
import 'package:couldai_user_app/core/app_theme.dart';
import 'package:couldai_user_app/screens/auth/login_screen.dart';
import 'package:couldai_user_app/screens/admin/admin_dashboard.dart';
import 'package:couldai_user_app/screens/teacher/teacher_dashboard.dart';
import 'package:couldai_user_app/screens/student/student_dashboard.dart';

void main() {
  runApp(const SchoolSystemApp());
}

class SchoolSystemApp extends StatelessWidget {
  const SchoolSystemApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Management System',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/admin_dashboard': (context) => const AdminDashboard(),
        '/teacher_dashboard': (context) => const TeacherDashboard(),
        '/student_dashboard': (context) => const StudentDashboard(),
      },
    );
  }
}
