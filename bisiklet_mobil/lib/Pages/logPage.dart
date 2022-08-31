import 'package:bisiklet_mobil/Constants/languageItem.dart';
import 'package:bisiklet_mobil/Pages/regPage.dart';
import 'package:flutter/material.dart';

class LogPage extends StatefulWidget {
  const LogPage({Key? key}) : super(key: key);

  @override
  State<LogPage> createState() => _LogPageState();
}

class _LogPageState extends State<LogPage> {
  TextEditingController passwordControler=TextEditingController();
  TextEditingController emailControler=TextEditingController();
  bool _isObscure=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LanguageItem.loginAppTitle),
      ),
      body: Container(
        margin: const EdgeInsets.only(right: 15,left:15,bottom:30,top: 10),
        padding:const EdgeInsets.only(top: 10,bottom: 10),
        child: ListView(
          shrinkWrap: true,
          reverse: true,
          children:<Widget> [
            LogoImageWidget(),
            _buildSpacer(),
            EmailTextFieldWidget(emailControler: emailControler, buildMet: _buildOutlineInputBorder()),
            _buildSpacer(),
            PasswordTextFieldWidget(passwordControler: passwordControler, buildMet: _buildOutlineInputBorder(), isObscure: _isObscure),
            _buildSpacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {
                },
                child: Text(LanguageItem.forgotPassword),
              ),
            ),
              _buildSpacer(),
             Container(
                margin: EdgeInsets.all(10),
                width: 300,
                height: 50,
                child: ElevatedButton(
                    onPressed:(){
                      },
                    child: Text(LanguageItem.regBtnTxt)
                ),
              ),
          ].reversed.toList(),
        ),
      ),

    );
  }

  _buildSpacer() {
    return Spacer();
  }
  OutlineInputBorder _buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(60.0),
    );
  }
}
