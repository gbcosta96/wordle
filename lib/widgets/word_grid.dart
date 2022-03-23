import 'package:flutter/material.dart';
import 'package:wordle/widgets/app_icon.dart';
import 'package:wordle/constants/app_colors.dart';

class WordGrid extends StatelessWidget {
  final double gridWidth;
  final double gridHeight;
  final String playerName;
  final List<Widget> stackItems;
  final Color iconColor;

  const WordGrid({ Key? key,
    required this.gridWidth,
    required this.gridHeight,
    required this.playerName,
    this.iconColor = AppColors.letterRight,
    required this.stackItems }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AppIcon(iconData: Icons.person, onTap: () => {}, iconColor: iconColor),
            const SizedBox(width: 5),
            Text(playerName,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 5),
          width: gridWidth,
          height: gridHeight,
          padding: const EdgeInsets.all(1.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Stack(
              children: stackItems,
          ),
        ),
      ],
    );
  }
}