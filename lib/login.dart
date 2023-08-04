import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/login_page_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.12),
              decoration: BoxDecoration(
                color: const Color(0xFF14183B),
                borderRadius: BorderRadius.circular(24),
                boxShadow: [BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 15,
                  spreadRadius: 5
                )]
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.04),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Login",
                      style: TextStyle(
                        fontFamily: 'Poppins-Medium',
                        fontWeight: FontWeight.w400,
                        fontSize: 36,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 0,
                        top: MediaQuery.of(context).size.height * 0.001,
                        right: 0,
                        bottom: MediaQuery.of(context).size.height * 0.05
                      ),
                      child: const Text(
                        "Login for better experience",
                        style: TextStyle(
                          fontFamily: 'Poppins-Regular',
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: 'username',
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.only(
                          left: 10,
                          top: 0,
                          bottom: 0
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none
                        )
                      ),
                      style: const TextStyle(
                        fontFamily: 'Poppins-Regular',
                        fontSize: 14
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.012,
                        bottom: MediaQuery.of(context).size.height * 0.004
                      ),
                      child: TextField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'password',
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.only(
                          left: 10,
                          top: 0,
                          bottom: 0
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none
                        )
                        ),
                        style: const TextStyle(
                          fontFamily: 'Poppins-Regular',
                          fontSize: 14
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Forget password?",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontFamily: 'Poppins-Regular',
                          fontSize: 14,
                          color: Color(0xFFFE0078),
                          decoration: TextDecoration.underline
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.022),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFE0078),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          textStyle: const TextStyle(
                            fontFamily: 'Poppins-Medium',
                            fontSize: 14
                          )
                        ),
                        child: const Text("LOGIN"),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have account?",
                          style: TextStyle(
                            fontFamily: 'Poppins-Regular',
                            fontSize: 13,
                            color: Colors.white
                          ),
                        ),
                        Text(
                          " Sign up",
                          style: TextStyle(
                            fontFamily: 'Poppins-Medium',
                            fontSize: 14,
                            color: Color(0xFFFE0078)
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.04,
                        bottom: MediaQuery.of(context).size.height * 0.014
                      ),
                      child: const Text(
                        "Or login with",
                        style: TextStyle(
                          fontFamily: 'Poppins-Regular',
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.12,
                          height: MediaQuery.of(context).size.width * 0.12,
                          child: Image.asset('assets/images/icon_google.png'),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.12,
                          height: MediaQuery.of(context).size.width * 0.12,
                          child: Image.asset('assets/images/icon_facebook.png'),
                        ),
                      ],
                    )
                  ]
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}