import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';


class FormValidation extends StatefulWidget {
  const FormValidation({Key? key}): super(key:key);
  @override
  _FormValidationState createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation>{

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void onSubmit() {
    if(formkey.currentState!.validate()){
        print("submit");
    }
  }
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key:formkey,
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                        decoration: InputDecoration(
                          labelText: "Name",
                          labelStyle: TextStyle(fontSize: 14, color: Colors.blue),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.blue
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Colors.blue
                              )
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Colors.red
                              )
                          ),
                          errorBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Colors.red
                              )
                          ),
                          border:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Colors.blue
                              )
                          ),
                        ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Name Required"),
                        MinLengthValidator(4, errorText: "Name should be atleast 6 character"),
                        MaxLengthValidator(20, errorText: "Name should not be greater then 20 character")
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(fontSize: 14, color: Colors.blue),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.blue
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.blue
                            )
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.red
                            )
                        ),
                        errorBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.red
                            )
                        ),
                        border:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.blue
                            )
                        ),
                      ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Email Required"),
                        EmailValidator(errorText: "Enter valid email")
                      ]),
                    ),


                    SizedBox(
                      height: 20,
                    ),

                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(fontSize: 14, color: Colors.blue),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.blue
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.blue
                            )
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.red
                            )
                        ),
                        errorBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.red
                            )
                        ),
                        border:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Colors.blue
                            )
                        ),
                      ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Email Password"),
                        MinLengthValidator(6, errorText: "Password should be atleast 6 character"),
                        MaxLengthValidator(15, errorText: "Password should not be greater then 15 character")
                      ]),
                    ),

                    SizedBox(
                      height: 30,
                    ),

                    ElevatedButton(
                      onPressed: () {
                        onSubmit();
                      },
                      child: Text("Thank you and support us"),
                    )

                  ],
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}