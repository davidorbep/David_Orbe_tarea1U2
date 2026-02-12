import 'package:flutter/material.dart';
import 'pantalla_detalles.dart';

class PantallaPrincipal extends StatelessWidget {

  final String ciudad = "Quito";
  final String temperatura = "22°C";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Clima Actual")),

      // Container: Agrupa widgets y permite aplicar estilos y espacios
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),

        // Column: Organiza los widgets verticalmente
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Text: Muestra información en pantalla
            Text(ciudad,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),

            SizedBox(height: 20),

            // Icon: Muestra un icono representando el clima
            Icon(Icons.wb_sunny, size: 100, color: Colors.orange),

            SizedBox(height: 20),

            // Text: Muestra la temperatura
            Text(temperatura, style: TextStyle(fontSize: 40)),
          ],
        ),
      ),

      // FloatingActionButton: Botón para navegar entre pantallas
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => PantallaDetalles()),
          );
        },
      ),
    );
  }
}
