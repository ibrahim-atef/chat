import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final double width;

  const AuthButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height * .06,
        width: width,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 6,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          gradient: LinearGradient(
            colors: [
              Color(0xff7900FF),
              Color(0xff7900FF),
              // Color(0xffba0b08),
              // Color(0xff931c04),
              // Color(0xff3f0303),
            ],
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 22,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
