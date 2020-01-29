import 'package:flutter/material.dart';
import 'package:preferencias_usuarios/src/pages/home_page.dart';
import 'package:preferencias_usuarios/src/pages/settings_page.dart';
import 'package:preferencias_usuarios/src/share_prefs/preferencias_usuario.dart';
 
void main()  async {
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();


  runApp(MyApp());
} 
 
class MyApp extends StatelessWidget {

  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preferencias',
      initialRoute: prefs.ultimaPagina,
      routes: {
        HomePage.routeName    : (BuildContext context) => HomePage(),
        SettingPage.routeName : (BuildContext context) => SettingPage()
      },
    );
  }
}