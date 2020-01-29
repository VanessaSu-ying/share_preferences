import 'package:shared_preferences/shared_preferences.dart';


class PreferenciasUsuario{

  static final PreferenciasUsuario _instancia = new PreferenciasUsuario._internal();

  factory PreferenciasUsuario(){
    return _instancia;
  }

  PreferenciasUsuario._internal();

  SharedPreferences _prefs;

   initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();

   }

   //Get y set genero

   get genero{
     return _prefs.getInt('genero') ?? 1;
   }

   set genero( int value){
     _prefs.setInt('genero', value);
   }

    //Get y set color secundario

   get colorSecundario{
     return _prefs.getBool('colorSecundario') ?? false;
   }

   set colorSecundario( bool value){
     _prefs.setBool('colorSecundario', value);
   }

  //Get y set nombre usuario

   get nombreUsuario{
     return _prefs.getString('nombreUsuario') ?? '';
   }

   set nombreUsuario( String value){
     _prefs.setString('nombreUsuario', value);
   }
   
  //Get y set utlima pagina

   get ultimaPagina{
     return _prefs.getString('ultimaPagina') ?? 'home';
   }

   set ultimaPagina( String value){
     _prefs.setString('ultimaPagina', value);
   }


}