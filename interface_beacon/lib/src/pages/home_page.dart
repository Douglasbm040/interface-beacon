import 'package:flutter/material.dart';
import 'package:interface_beacon/src/components/home_atualiza_form_widget.dart';
import 'package:interface_beacon/src/components/home_cadastro_form_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green,
            child: const Icon(
              Icons.volume_up_rounded,
              size: 50,
              semanticLabel: "botao para a ligar som",
            ),
          ),
          backgroundColor: Theme.of(context).primaryColorDark,
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Text("Cadastrar"),
                Text("Atualizar"),
              ],
            ),
            title: const Text('Bem vindo a interface beacon'),
          ),
          body: const TabBarView(children: [
            HomeCadastroFormWidget(
              title: "Cadastre o seu beacon",
              titlebuttom: "enviar dados",
            ),
            HomeAtualizaFormWidget(
              title: "Atualize o seu beacom",
              titlebuttom: "transmitir os dados",
            ),
          ]),
        ),
      ),
    );
  }
}
