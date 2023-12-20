
import 'package:flutter/material.dart';

import '../utils/constants/colors_constants.dart';
class CustomTextField extends StatelessWidget {

  CustomTextField({
    super.key,
    required this.Controller,
    required this.isPassword,
    required this.hint,
    this.validatorFun,
    required this.myPrefixIcon,
    required this.type
  });

  final TextEditingController? Controller;
  bool isPassword;
  String hint;
  TextInputType type;
  Icon myPrefixIcon;
  String? Function(String?)? validatorFun;
  Color fillColor= Colors.white;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: Controller,
      obscureText: isPassword?true:false,
      obscuringCharacter: "*",
      keyboardType: type,
      validator: validatorFun,
      decoration: InputDecoration(
          label:Text(hint) ,
        labelStyle: TextStyle(
          color:ColorsConstants.txtFieldLabelColor,
        ),
          border: InputBorder.none,
          hintText: hint,
          filled: true,
          hoverColor: fillColor,
          fillColor:fillColor,
          prefixIcon:myPrefixIcon,


      ),
    );
  }
}

