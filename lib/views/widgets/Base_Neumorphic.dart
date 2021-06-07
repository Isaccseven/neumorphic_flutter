import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class BaseNeumorphic extends StatelessWidget {
  final Widget child;
  final int width;
  final int height;

  BaseNeumorphic(
      {required this.child, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width.toDouble(),
      height: this.height.toDouble(),
      child: Neumorphic(
        margin: const EdgeInsets.all(10),
        style: NeumorphicStyle(
          intensity: 0.85,
          lightSource: LightSource.topLeft,
          color: NeumorphicTheme.baseColor(context),
          boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.circular(20),
          ),
          depth: 5,
        ),
        child: this.child,
      ),
    );
  }
}
