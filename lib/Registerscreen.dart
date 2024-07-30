import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> registrationFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 32),
        child: Center(
          child: Form(
            key: registrationFormKey,
            child: Column(
              children: [
                Text(
                  "New Account",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(height: 32),
                // USERNAME TEXTFILED
                TextFormField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a valid username.";
                    }
                    if (value.length < 6) {
                      return "'Please enter at least 6 characters.";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // EMAIL TEXTFILED
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a valid email.";
                    }
                    if (!value.contains('@')) {
                      return "Please use @ symbol";
                    }
                    if (!value.contains('.')) {
                      return "Please use a '.'";
                    }
                    if (value.contains(',')) {
                      return "Don't use a ','";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 16),
                // PASSWORD TEXTFILED
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Passwort',
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a password.";
                    }
                    if (value.length < 6) {
                      return "Please enter at least 6 characters.";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                    onPressed: () {
                      // Valiadtor Benutzen
                      // Prüfe ob alle Felder des Forms valide sind
                      // username != valide || email != valid || pw != valide
                      if (registrationFormKey.currentState!.validate()) {
                        print("Username: ${usernameController.text}");
                        print("Email: ${emailController.text}");
                        print("Passwort: ${passwordController.text}");
                      }
                    },
                    child: const Text('Create Account'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
