import 'package:flutter/material.dart';

class PantallaDetalles extends StatelessWidget {

  final String humedad = "60%";
  final String viento = "15 km/h";

  final List<Map<String, String>> pronostico = [
    {"dia": "Lunes", "temp": "20°C"},
    {"dia": "Martes", "temp": "18°C"},
    {"dia": "Miércoles", "temp": "21°C"},
    {"dia": "Jueves", "temp": "19°C"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detalles del Clima")),

      // Container: Permite organizar widgets y aplicar estilos
      body: Container(
        padding: EdgeInsets.all(20),

        // Column: Organiza widgets verticalmente
        child: Column(
          children: [

            // Row: Organiza widgets horizontalmente
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                // Column: Agrupa información de humedad verticalmente
                Column(
                  children: [
                    // Text: Muestra título
                    Text("Humedad",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    // Text: Muestra dato de humedad
                    Text(humedad),
                  ],
                ),

                // Column: Agrupa información del viento
                Column(
                  children: [
                    Text("Viento",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(viento),
                  ],
                ),
              ],
            ),

            SizedBox(height: 30),

            // Text: Título del pronóstico
            Text("Pronóstico",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

            SizedBox(height: 10),

            Expanded(
              // ListView.builder: Muestra una lista desplazable del pronóstico
              child: ListView.builder(
                itemCount: pronostico.length,
                itemBuilder: (context, index) {

                  return Card(
                    child: ListTile(
                      // Icon: Representa el clima
                      leading: Icon(Icons.cloud),

                      // Text: Muestra día
                      title: Text(pronostico[index]["dia"]!),

                      // Text: Muestra temperatura
                      trailing: Text(pronostico[index]["temp"]!),
                    ),
                  );
                },
              ),
            ),

            // ElevatedButton: Botón para navegar a la pantalla anterior
            ElevatedButton(
              child: Text("Volver"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
