import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final Icon icon;
  final String exerciseName;
  final String numberOfExercises;
  final Color color;
  const ExerciseTile({Key? key,required this.icon,required this.exerciseName,required this.numberOfExercises,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:12.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(16.0),
                right: Radius.circular(16.0))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                      padding: EdgeInsets.all(12),
                      color: color,
                      child: icon,
                )),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      exerciseName,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      numberOfExercises,
                      style: const TextStyle(
                          fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(Icons.more_horiz),
          ],
        ),
      ),
    )
    ;
  }
}
