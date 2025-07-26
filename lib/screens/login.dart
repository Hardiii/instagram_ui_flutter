import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isTaped = false; // State variable to track tap state
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight * 0.25,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.purple,
                  Colors.pink.shade500,
                  Colors.yellow.shade700,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
              ),
            ),
            child: Center(
              child: Image.asset(
                'assets/img/logo.png',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              setState(() {
                isTaped = false; // Toggle the tap state
              });
            },
            child: AnimatedAlign(
              alignment: isTaped ? Alignment.center : Alignment.bottomCenter,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                height: isTaped ? screenHeight : screenHeight * 0.80,
                width: screenWidth,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: isTaped ? Radius.circular(0) : Radius.circular(30),
                    topRight: isTaped
                        ? Radius.circular(0)
                        : Radius.circular(30),
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            print('Tapped on language selection');
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText(
                                  'English (US)',
                                  style: GoogleFonts.lato(
                                    color: isTaped
                                        ? Colors.white
                                        : AppTheme.textColor,
                                    fontSize: 16,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: isTaped
                                      ? Colors.white
                                      : AppTheme.textColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: isTaped
                            ? Alignment.topCenter
                            : Alignment.center,
                        child: SizedBox(
                          width: screenWidth * 0.9,
                          child: TextField(
                            onTap: () {
                              setState(() {
                                isTaped = true; // Set to true when tapped
                              });
                            },
                            onSubmitted: (_) {
                              setState(() {
                                isTaped = false; // Reset to false on submit
                              });
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: screenHeight * 0.022,
                                horizontal: 16.0,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: BorderSide(
                                  color: AppTheme.textColor,
                                  width: 0.7,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: BorderSide(
                                  color: AppTheme.textColor,
                                  width: 1.0,
                                ),
                              ),
                              labelText: 'Username, email, or mobile number',
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                              labelStyle: GoogleFonts.lato(
                                color: AppTheme.textColor,
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Align(
                        alignment: isTaped
                            ? Alignment.topCenter
                            : Alignment.center,
                        child: SizedBox(
                          width: screenWidth * 0.9,
                          child: TextField(
                            onTap: () {
                              setState(() {
                                isTaped = true; // Set to true when tapped
                              });
                            },
                            onSubmitted: (_) {
                              setState(() {
                                isTaped = false; // Reset to false on submit
                              });
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                vertical: screenHeight * 0.022,
                                horizontal: 16.0,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: BorderSide(
                                  color: AppTheme.textColor,
                                  width: 0.7,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0),
                                borderSide: BorderSide(
                                  color: AppTheme.textColor,
                                  width: 1.0,
                                ),
                              ),
                              labelText: 'Password',
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                              labelStyle: GoogleFonts.lato(
                                color: AppTheme.textColor,
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: screenWidth * 0.9,
                        height: screenHeight * 0.056,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: AutoSizeText(
                            'Log in',
                            style: GoogleFonts.lato(
                              color: AppTheme.textLightColor,
                              fontSize: 21,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.primaryColor,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextButton(
                        onPressed: () {},
                        child: AutoSizeText(
                          'Forgot password?',
                          style: GoogleFonts.lato(
                            color: AppTheme.textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          elevation: 0.0,
                          overlayColor: Colors.transparent,
                        ),
                      ),
                      Expanded(child: Container(color: Colors.transparent)),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SafeArea(
                          child: Column(
                            children: [
                              Container(
                                width: screenWidth * 0.9,
                                height: screenHeight * 0.056,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: AutoSizeText(
                                    'Create new account',
                                    style: GoogleFonts.lato(
                                      color: AppTheme.primaryColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppTheme.textLightColor,
                                    side: BorderSide(
                                      color: AppTheme.primaryColor,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/img/meta_logo.png',
                                    width: 25,
                                    height: 25,
                                    fit: BoxFit.cover,
                                  ),
                                  AutoSizeText(
                                    ' Meta',
                                    style: GoogleFonts.lato(
                                      color: AppTheme.textColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Additional widgets can be added here
        ],
      ),
    );
  }
}
