

import 'package:flutter/material.dart';

import '../utils/constants/colors_constants.dart';

class CustomButton extends StatelessWidget {
   CustomButton({required this.text,required this.onBtnPressed,super.key});

  String text;
   Function()? onBtnPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onBtnPressed,
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            elevation: 20,
            backgroundColor: ColorsConstants.buttonColor,
            shadowColor: Theme.of(context).primaryColor,
            minimumSize: const Size.fromHeight(60),
          ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            SizedBox(),
        Text(text,),
            Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: ColorsConstants.buttonColor,
                      size: 24.0,
                    ),
                  ),

      ]),
    );
  }
}
