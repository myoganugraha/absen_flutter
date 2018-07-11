import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget{

  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  
  bool _isChecked = false;

  @override
  Widget build(BuildContext context){

    final logoGits = Image.asset(
      'assets/LOGOG.png', 
      width: 72.0, height: 72.0,
      alignment: Alignment.centerLeft,
    );

    final welcomeTv = Padding(
      padding: EdgeInsets.symmetric(vertical:4.0),
      child: new Text("Welcome to",
      style: TextStyle(fontSize: 24.0,
      color: Colors.blue,),
      )
    );

    final gitsAbsensi = Padding(
      padding: EdgeInsets.symmetric(vertical:4.0),
      child: new Text("GITS ABSENSI",
      style: TextStyle(fontSize:24.0, fontWeight: FontWeight.bold,
      color: Colors.blue,),
      )
    );

    final emailTv = Padding(
      padding: EdgeInsets.symmetric(vertical:0.0),
      child: new Text("Email",
      )
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: true,
      initialValue: null,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(0.0, 5.0, 20.0, 10.0),
      ),
      style: TextStyle(fontSize: 15.0 ,color: Colors.orange),
    );

    final passwordTv = Padding(
      padding: EdgeInsets.symmetric(vertical:0.0),
      child: new Text("Password",
      )
    );

    final password = TextFormField(
      obscureText: true,
      autofocus: false,
      initialValue: null,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(0.0, 5.0, 20.0, 10.0),
      ),
      style: TextStyle(color: Colors.orange),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical:16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            //Navigator.of(context).pushNamed(MainPage.tag);
          },
          color: Colors.orange,
          child: Text('Log In', style: TextStyle(color: Colors.white)),
          
        ),
      ),
    );

    final rowRememberMe = Container(

      margin: new EdgeInsets.symmetric(vertical: 5.0,),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new GestureDetector(
                          child: new Row(
                            children: <Widget>[
                              new Checkbox(
                                value: _isChecked,
                                onChanged: (value) => setState(() {
                                  _isChecked = !_isChecked;
                                }),
                              ),
                              new Text(
                                "Remember Me",
                              )
                            ],
                          ),
                          onTap: () => setState(() {
                            _isChecked = !_isChecked;
                          }),
                        ),
                      ],
                    ),
                    new Container(
                      child: new Text(
                        "Forgot Password ?",
                        style: new TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                )
              );


    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 28.0, right: 28.0),
          children: <Widget>[

            logoGits,

            welcomeTv,
            
            gitsAbsensi,
            SizedBox(height:40.0),
            
            emailTv,
            email,
            SizedBox(height: 32.0),

            passwordTv,
            password,
            SizedBox(height:50.0),

            loginButton,

            rowRememberMe,

          ],
        ),
      ),
    );
  }
}