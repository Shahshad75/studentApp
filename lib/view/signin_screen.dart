import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:student/resource/buttons/auth_bottons.dart';
import 'package:student/resource/colors/colors.dart';
import 'package:student/resource/images/images.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Images.coverImage), fit: BoxFit.cover)),
            width: double.maxFinite,
            height: 300,
          ),
          Container(
            width: double.maxFinite,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromARGB(82, 146, 146, 146),
                  Color.fromARGB(82, 228, 228, 228),
                ])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    //  color: Colors.red,
                    width: width,
                    child: const Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 50,
                            child: Icon(
                              EvaIcons.code,
                              size: 40,
                            ),
                          ),
                        ),
                        Text(
                          "Sign up your new \naccount now",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 28),
                        ),
                      ],
                    )),
                Authbotton(
                  icon: const Icon(EvaIcons.phone),
                  text: const Text("Continue with phone number"),
                  onTap: () {},
                ),
                Authbotton(
                  icon: const Icon(EvaIcons.google),
                  text: const Text("Continue with Google"),
                  onTap: () {},
                ),
                Authbotton(
                  icon: const Icon(EvaIcons.activity),
                  text: const Text("Sign up free"),
                  onTap: () {},
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ))
              ],
            ),
          ).animate().scaleY()
        ],
      ),
    );
  }
}
