import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fodies/sign_up.dart';
import 'package:flutter/src/rendering/box.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 80),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("images/logo.png"),
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Maintenance",
                        style:
                            TextStyle(fontSize: 25, fontFamily: "Rubik Medium"),
                      ),
                      Text(
                        "Box",
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: "Rubik Medium",
                            color: Color(0xffF9703d)),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Log in",
                style: TextStyle(fontSize: 25, fontFamily: "Rubik Medium"),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                    label: Text("Email"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    prefixIcon: Icon(Icons.mail)),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                    label: Text("Password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    prefixIcon: Icon(Icons.lock)),
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                "Forgot password ?",
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 200,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xffF9703d),
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: 300,
                    child: const Center(
                      child: Text(
                        "log in ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: "Rubik Regular"),
                      ),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have any account ?",
                    style: TextStyle(fontFamily: "Rubik Regular"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const SignUpScreen()),
                      );
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Color(0xffF9703d),
                          fontFamily: "Rubik Regular"),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
