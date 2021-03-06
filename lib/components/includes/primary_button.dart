import 'package:flutter/material.dart';
import 'package:foodmix/const.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    this.label = 'Xem Thêm',
    required this.callback,
    this.icon = Icons.arrow_drop_down,
    this.radius = 10,
    this.vertical = 10
  }) : super(key: key);

  final String label;
  final VoidCallback callback;
  final IconData? icon;
  final double radius;
  final double vertical;


  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero
      ),
        onPressed: () {
          callback();
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: vertical),
            width: double.infinity,
            color: kPrimary,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(label.toUpperCase(), style: const TextStyle(color: Colors.white, fontSize: 14)),
                (()=> icon != null ? Icon(icon, color: Colors.white) : Container())()
              ],
            ),
          ),
        )
    );
  }
}
