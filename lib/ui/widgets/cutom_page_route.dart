import 'package:flutter/material.dart';

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;

  CustomPageRoute({required this.child})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) {
              return child;
            });

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return SlideTransition(
      position: Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero)
          .animate(animation),
      child: child,
    );
  }
}
