import 'package:flutter/material.dart';

class VerticleNavigationBar extends StatefulWidget {
  final List<BottomNavigationBarItem> bottomNavigationBarItem;
  final int selectedIndex;
  final void Function(int) onTap;
  final Color selectedItemColor;
  final Widget body;

  const VerticleNavigationBar(
      {super.key,
      required this.bottomNavigationBarItem,
      required this.selectedIndex,
      required this.onTap,
      required this.selectedItemColor,
      required this.body});

  @override
  State<VerticleNavigationBar> createState() => _VerticleNavigationBarState();
}

class _VerticleNavigationBarState extends State<VerticleNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: RotatedBox(
              quarterTurns: 3,
              child: BottomNavigationBar(
                items: widget.bottomNavigationBarItem,
                currentIndex: widget.selectedIndex,
                selectedItemColor: widget.selectedItemColor,
                onTap: widget.onTap,
              ),
            )),
        Expanded(
          child: Center(
            child: widget.body,
          ),
        )
      ],
    );
  }
}
