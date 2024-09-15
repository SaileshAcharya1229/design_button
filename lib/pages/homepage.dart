import 'package:design_button/pages/custom_glass_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://img.freepik.com/premium-photo/urban-architectural-bokeh-blurred-background-background-with-light-blur-night-view-lights-city-bokeh-night-light_494516-610.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              if (isOn) {
                isOn = false;
              } else {
                isOn = true;
              }
            });
          },
          child: SizedBox(
            height: 200,
            width: 300,
            child: CustomGlassButton(
              child: Text(
                isOn ? "OFF" : "ON",
                style: const TextStyle(
                  fontSize: 75,
                  color: Colors.white54,
                ),
              ),
              isPressed: isOn,
            ),
          ),
        ),
      ),
    ));
  }
}
