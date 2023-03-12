import 'package:flutter/material.dart';
import 'Widgets/LoginField.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerBirthdate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 1, right: 1),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25),
                  ),
                  child: Image.asset("images/sign_in.jpg")),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(top: 7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 0.1), // changes position of shadow
                    ),
                  ],
                ),
                child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(15),
                      child: Column(
                        children: const [
                          Text(
                            "REGISTRATION",
                            style: TextStyle(
                                fontSize: 40,
                                fontFamily: 'tajawal',
                                fontWeight: FontWeight.w900),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Field(
                      name: "Name",
                      icon: const Icon(Icons.person_outline),
                      controller: _controllerName,
                      obsText: false,
                    ),
                    Field(
                      name: "Email",
                      icon: const Icon(Icons.email_outlined),
                      controller: _controllerEmail,
                      obsText: false,
                    ),
                    Field(
                      name: "Birthdate",
                      icon: const Icon(Icons.date_range_outlined),
                      controller: _controllerBirthdate,
                      obsText: false,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        // color: Colors.black12,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 0.1), // changes position of shadow
                          ),
                        ],
                      ),
                      margin: const EdgeInsets.all(10),
                      child: SizedBox(
                        width: 140,
                        height: 60,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                          child: TextButton(
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.grey)),
                            onPressed: () {
                              _controllerName.text ="";
                              _controllerEmail.text="";
                              _controllerBirthdate.text="";
                            },
                            child: const Text(
                              'REGISTER',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'tajawal'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
