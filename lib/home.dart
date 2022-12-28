import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    TextEditingController _controller1 = TextEditingController();
    TextEditingController _controller2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("lab5"),
      ),
      body: Form(
        key: _formkey,
        child: ListView(
        children: [
          TextFormField(
            controller: _controller1,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter  username';
                
              }
              return null;
            },
          ),
          TextFormField(
            controller: _controller2,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter  password';
                
              }
              return null;
            },
          ),
          //TextFormField
          
          ElevatedButton(
            onPressed: () {
              if (_formkey.currentState!.validate())
              print(_controller1.text);
              print(_controller2.text);
            },
            child:  Text("submit"),
            )
        ],
      ),)
    );
  }
}
