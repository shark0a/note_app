import 'package:flutter/material.dart';
import 'package:note_app/helper/const.dart';
class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hintText, required this.maxline, this.onSaved});
  final String hintText;
  final int maxline;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: fcolor,
       maxLines: maxline,
       onSaved: onSaved,
       validator: (value) {
         if (value?.isEmpty??true) {
           return 'field is required';
         }
         else{
          return null;
         }
       },
      decoration: InputDecoration(
      hintText:hintText,
      hintStyle: const TextStyle(color: fcolor),
      enabledBorder: buildBorder(),
      focusedBorder: buildBorder(fcolor),
      
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color??Colors.white),

      

    );
  }
}