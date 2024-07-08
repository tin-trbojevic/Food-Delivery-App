import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/components/my_textfield.dart';
import 'package:food_delivery/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap,});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();


  void register() async {
    final _authService = AuthService();

    if(passwordController.text == confirmPasswordController.text) {
      try {
        await _authService.signUpWithEmailPassword(
          emailController.text,
          passwordController.text
          );
      }

      catch (e) {
        showDialog(
          context: context, 
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          )
        );
      }
    }


    else {
      showDialog(
        context: context, 
        builder: (context) => const AlertDialog(
          title: Text("Passwords don't match!"),
        )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          Icon(
            Icons.fastfood_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),

          const SizedBox(height: 25),

          Text(
            "Let's create an account for you",
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          
          ),

          const SizedBox(height: 25),

          MyTextField(controller: emailController, hintText: "Email", obscureText: false),

          const SizedBox(height: 10),

          MyTextField(controller: passwordController, hintText: "Password", obscureText: true),

          const SizedBox(height: 10),

          MyTextField(controller: confirmPasswordController, hintText: "Confirm password", obscureText: true),
          
          const SizedBox(height: 25,),

          MyButton(text: "Sign Up", onTap: register),

          const SizedBox(height: 25,),

          Row (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(
              "Already have an account?",
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary
              ),
            ),
            const SizedBox(width: 7,),
            GestureDetector(
              onTap: widget.onTap,
              child: Text(
                "Login now",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
          ),
        ],
      ),
      ),
    );
  }
}