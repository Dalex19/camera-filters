import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splash_prac/ui/styles/waves_painter.dart';

class MyWave extends StatelessWidget {
  const MyWave({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WavesClipper(),
      child: Container(
        color: Theme.of(context).primaryColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.55,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Welcome",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(
            height: 20,
          ),
          Text("to", style: Theme.of(context).textTheme.displayLarge),
          const SizedBox(
            height: 20,
          ),
          Transform.rotate(
            angle: -0.10,
            child: Container(
              height: 70,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ]),
              child: Center(
                  child: Transform.rotate(
                angle: 0.10,
                child: Text(
                  "App",
                  style: GoogleFonts.poppins(
                      fontSize: 50,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).secondaryHeaderColor),
                ),
              )),
            ),
          )
        ]),
      ),
    );
  }
}
