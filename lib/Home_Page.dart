import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final _alturaController = TextEditingController();
     final _pesoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC do Guilherme e do Hugo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          Icon(Icons.fitness_center),
          TextField(
            decoration: InputDecoration(label: Text("peso")),
          ),
            TextField(
            decoration: InputDecoration(label: Text("altura")),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var peso = double.tryParse(_pesoController.value.text);
          var altura = double.tryParse(_alturaController.value.text);
          var imc = 0.0;
          if (altura! > 0.0){
          imc = peso / (altura * altura);
                    }

          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("seu IMC é $imc"),
          ));
        },
        child: const Icon(Icons.calculate),
      ),
    );
  }
}