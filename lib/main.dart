import 'package:edteam_project/models/persona_modelo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}





class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  PersonaModelo personal = new PersonaModelo(
    nombre: 'Boris',
    descripcion: 'Ing de Sistemas',
    iconoDerecho: Icons.message,
    iconoIzquierda: Icons.search
  );

  Widget customListTile(PersonaModelo persona){
    return ListTile(
            title: Text(persona.nombre),
            subtitle: Text(persona.descripcion),
            trailing: Icon(persona.iconoDerecho),
            leading: Icon(persona.iconoIzquierda),
          );
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),),
        appBar: AppBar(
          title: Text("App Bar Notification"),
          ),
        body:customListTile(personal)
      )
    );
  }
}