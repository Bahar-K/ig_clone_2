import 'package:flutter/material.dart';
import '../widgets/textFormFields.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Center(
                      child: Text(
                    "Instagram",
                    style: TextStyle(fontFamily: "Billabong", fontSize: 60),
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextFormField(
                    hintText: "Username",
                    height: 36,
                  ),
                  SizedBox(height: 16),
                  CustomTextFormField(
                    hintText: "Password",
                    height: 36,
                  ),
                  SizedBox(height: 19),
                  GestureDetector(
                      onTap: () {
                        print("forgotpassword");
                      },
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text("Forgot password?"))),
                  SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      print("object");
                    },
                    child: Container(
                      width: double.infinity,
                      height: 44,
                      child: Center(
                        child: Text(
                          "Log in",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue.shade400,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook_sharp),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Log in with Facebook")
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.black38,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text("OR"),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.black38,
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don’t have an account?"),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                          onTap: () {
                            print("sign-up");
                          },
                          child: Text(
                            "Sign up.",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Divider(
                  thickness: 1,
                  color: Colors.black38,
                ),
                SizedBox(
                  height: 25,
                ),
                Text("Instagram от Facebook"),
                SizedBox(
                  height: 23,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
