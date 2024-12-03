import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberme = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 30.0),
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'images/logo.png',
                    height: 150,
                    width: 150,
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    'elkmash',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20.0),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Remember Me'),
                Checkbox(
                    value: rememberme,
                    onChanged: (value) {
                      rememberme = value!;
                      setState(() {});
                    }),
              ],
            ),
            const SizedBox(height: 20.0),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: const Text('Sign In'),
            ),
            const SizedBox(height: 10.0),
            const Center(
              child: Text(
                "Don't have an account? Sign Up",
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String gender = 'Male';
  String status = 'Single';
  double age = 18;
  bool receiveNotifications = false;
  bool termsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'images/logo.png', // Replace with your logo path
                    height: 100,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Elkmash',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Text('Gender:', style: TextStyle(fontSize: 16)),
                Expanded(
                  child: RadioListTile(
                    title: const Text('Male'),
                    value: 'Male',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile(
                    title: const Text('Female'),
                    value: 'Female',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const DropdownMenu(
                width: double.infinity,
                label: Text('statue'),
                dropdownMenuEntries: [
                  DropdownMenuEntry(value: 1, label: 'single'),
                  DropdownMenuEntry(value: 2, label: 'maried'),
                  DropdownMenuEntry(value: 3, label: 'divorced'),
                ]),
            const SizedBox(height: 16),
            Text('Age: ${age.toInt()}', style: const TextStyle(fontSize: 16)),
            Slider(
              value: age,
              min: 10,
              max: 100,
              divisions: 90,
              label: age.toInt().toString(),
              onChanged: (value) {
                setState(() {
                  age = value;
                });
              },
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Receive Notifications'),
                Switch(
                    value: receiveNotifications,
                    onChanged: (value) {
                      setState(() {
                        receiveNotifications = value;
                      });
                    })
              ],
            ),
            CheckboxListTile(
              title: const Text('I agree to the Terms and Conditions'),
              value: termsAccepted,
              onChanged: (value) {
                setState(() {
                  termsAccepted = value!;
                });
              },
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Notes',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
