import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // String errortextVal = '';
  final _formfield = GlobalKey<FormState>();
  final numberController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b3232),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          child: Form(
            key: _formfield,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff1b3232)),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter number';
                            }
                            bool numbervalue = RegExp(r"123457890").hasMatch(value);
                            if (!numbervalue) {
                              return 'Your phone number is not right.';
                            }
                          },
                          // onChanged: (value) {
                          //   setState(() {
                          //     if (value.contains(' ')) {
                          //       errortextVal = 'Your phone number is not right.';
                          //     } else {
                          //       errortextVal = '';
                          //     }
                          //   });
                          // },
          
                          controller: numberController,
                          keyboardType: TextInputType.number,
                          cursorColor: Colors.grey,
                          style: TextStyle(color: Colors.white),
          
                          decoration: InputDecoration(
          
                              // errorText:
                              //     errortextVal.isEmpty ? null : errortextVal,
                              icon: Icon(
                                Icons.call_outlined,
                                size: 22,
                              ),
                              iconColor: Color(0xffb7905d),
                              hintText: 'phone number',
                              hintStyle: TextStyle(color: Colors.grey[600]),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff1b3232)),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter password';
                            }
                            else if(passController.text.length < 6){
                              return 'Password lenght should be more then 6 characters';
                            }
                          },
                          controller: passController,
                          obscureText: passToggle,
                          keyboardType: TextInputType.text,
                          cursorColor: Colors.grey,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.lock_outlined,
                                size: 22,
                              ),
                              suffix: InkWell(
                                onTap: () {
                                  setState(() {
                                    passToggle = !passToggle;
                                  });
                                },
                                child: Icon(
                                  passToggle
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined,
                                  color: Colors.grey[700],
                                  size: 22,
                                ),
                              ),
                              iconColor: Color(0xffb7905d),
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.grey[600]),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                        height: 60,
                        width: 250,
                        child: ElevatedButton(
                            onPressed: () {
                              if (_formfield.currentState!.validate()) {
                                print('amir');
                                numberController.clear();
                                passController.clear();
                              }
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(color: Color(0xff1b3232)),
                            ),
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ))),
                    SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                        height: 60,
                        width: 60,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.qr_code_scanner_rounded,
                              color: Color(0xffd6a266),
                            ),
                            style: ButtonStyle(
                              elevation: MaterialStatePropertyAll(0),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Color(0xff3a5858)
                                    ),
                                      borderRadius: BorderRadius.circular(20))),
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xff244444)),
                            ))),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
