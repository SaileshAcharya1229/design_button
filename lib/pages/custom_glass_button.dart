import 'dart:ui';

import 'package:flutter/material.dart';

class CustomGlassButton extends StatelessWidget {
  final Widget child;
  final bool isPressed;
  const CustomGlassButton(
      {super.key, required this.child, required this.isPressed});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(isPressed ? 0.4 : 0.3),
            borderRadius: BorderRadius.circular(25),
            border: Border.all(width: 2, color: Colors.white30),
            boxShadow: [
              BoxShadow(
                blurRadius: 25,
                color: Colors.black.withOpacity(0.1),
                spreadRadius: -5,
              )
            ],
          ),
          child: Center(child: child),
        ),
      ),
    );
  }
}
