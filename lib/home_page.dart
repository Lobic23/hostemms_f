import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final Map<String, dynamic> user;

  const HomePage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Student Dashboard")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "User Information",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 16),

                Text("Name: ${user["name"]}"),
                Text("Email: ${user["email"]}"),
                Text("Role: ${user["role"]}"),
                Text("User ID: ${user["id"]}"),
                Text("Created At: ${user["createdAt"]}"),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
