import 'package:e_class/pages/teachers/single_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ModuleButton extends StatelessWidget {
  ModuleButton(
      this.value, this.subject, this.subjectName, this.heading, this.user,
      {super.key});

  var subject;
  final String subjectName;
  final int value;
  final String heading;
  var user;

  void moduleRouter(context, subject, moduleNo, user) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                SingleView(heading, subject, moduleNo, user)));
  }

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () => moduleRouter(context, subject, value, user),
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                    width: 1,
                    color: Color.fromARGB(255, 96, 49, 49),
                  ),
                  backgroundColor: const Color.fromARGB(154, 255, 240, 182),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              child: Text("Module $value",
                  style: const TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 20,
                  )),
            )),
      ),
    );
  }
}
