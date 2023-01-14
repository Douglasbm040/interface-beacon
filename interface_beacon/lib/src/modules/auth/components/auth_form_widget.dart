import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:interface_beacon/src/modules/custom/components/custom_textfield_widget.dart';

class AuthFormWidget extends StatelessWidget {
  const AuthFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(17),
        child: Form(
            child: Column(
          children: [
            const Icon(
              Icons.person_pin,
              size: 150,
              color: Colors.blue,
            ),
            const CustomTextFieldWidget(label: "email"),
            const SizedBox(height: 10),
            const CustomTextFieldWidget(label: 'senha'),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                },
                child: const SizedBox(
                    height: 50, child: Center(child: Text("Entrar")))),
            const SizedBox(height: 20),
            TextButton(onPressed: () {}, child: const Text('logar')),
          ],
        )),
      ),
    );
  }
}
