import 'package:flutter/material.dart';

class Authbotton extends StatelessWidget {
  const Authbotton(
      {super.key, required this.onTap, required this.icon, required this.text});
  final void Function()? onTap;
  final Icon icon;
  final Text text;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        width: width * .90,
        height: height / 16,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color:
                    const Color.fromARGB(255, 152, 152, 152).withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
            border: Border.all(color: const Color.fromARGB(255, 95, 95, 95)),
            color: const Color.fromARGB(255, 223, 223, 223),
            borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: SizedBox(
                  child: icon,
                )),
            Expanded(
                flex: 4,
                child: SizedBox(
                  child: text,
                ))
          ],
        ),
      ),
    );
  }
}
