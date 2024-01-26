import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuantSphere - Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 32),
            TextButton(
              onPressed: () {
                // Perform login logic here
                String username = _usernameController.text;
                String password = _passwordController.text;

                // Replace the below logic with actual authentication
                if (username == 'example' && password == 'password') {
                  // Successful login, navigate to next screen or perform desired action
                  print('Login successful!');
                } else {
                  // Failed login, show an error message or perform desired action
                  print('Login failed. Please check your credentials.');
                }
              },
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  fixedSize: const Size.fromWidth(200)),
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
