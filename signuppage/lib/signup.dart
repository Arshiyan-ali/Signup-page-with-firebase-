import 'package:flutter/material.dart';
import 'package:signuppage/home.dart';

class Signview extends StatefulWidget {
  const Signview({super.key});

  @override
  _SignviewState createState() => _LoginViewState();
}

class _LoginViewState extends State<Signview> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  // void dispose() {
  //   // Dispose the controllers when the widget is removed from the widget tree
  //   emailController.dispose();
  //   passController.dispose();
  //   super.dispose();
  // }

  void login(BuildContext context) {
    print(emailController.text);
    print(passController.text);
    if (emailController.text == "arshiyanali128@gmail.com" &&
        passController.text == "12345") {
      final snackBar = SnackBar(
        content: const Text('Login successful'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            // Some code to undo the change.
          },
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      print("login successful...");
      emailController.clear();
      passController.clear();
    } else {
      print("login failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Login page",
            style: TextStyle(color: Color.fromARGB(255, 244, 229, 229)),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 15, 94, 18),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://img.freepik.com/free-vector/realistic-style-technology-particle-background_23-2148426704.jpg?semt=ais_hybrid"),
                fit: BoxFit.cover)),
        width: 500,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16.0), // Add spacing between fields
            TextField(
              controller: passController,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 16.0), // Add spacing before button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeView()),
                );
                ;
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 60, 64, 67),
                  minimumSize: Size(150, 50)),
              child: const Text(
                "Login",
                style: TextStyle(color: Color.fromARGB(255, 231, 241, 231)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
