import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle( fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      )
    );
  }

  Widget _crearImagen(){
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Albert_Bierstadt_-_Rocky_Mountain_Landscape_-_Google_Art_Project.jpg/1200px-Albert_Bierstadt_-_Rocky_Mountain_Landscape_-_Google_Art_Project.jpg'),
        height: 250.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Lago.', style: estiloTitulo,),
                  SizedBox(height: 7.0,),
                  Text('Imagen landscape.', style: estiloSubTitulo)
                ],
              ),
            ),
            
            Icon(Icons.star, color: Colors.red, size: 30.0,),
            Text('41', style: TextStyle(fontSize: 20.0),)

          ],
        ),
      ),
    );
  }

  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE')
      ],
    );
  }

  Widget _accion( IconData icon, String texto ){
    return Column(
      children: [
        Icon( icon, color: Colors.blue, size: 40.0, ),
        SizedBox(height: 5.0,),
        Text( texto, style: TextStyle( fontSize: 15.0, color: Colors.blue ), )
      ],
    );
  }

  Widget _crearTexto(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Porttitor leo a diam sollicitudin tempor id eu nisl. Est sit amet facilisis magna etiam. Porttitor leo a diam sollicitudin. Tempus iaculis urna id volutpat lacus laoreet non curabitur. Vel eros donec ac odio tempor orci dapibus ultrices. Luctus accumsan tortor posuere ac. Tristique senectus et netus et malesuada. Eget nulla facilisi etiam dignissim diam quis enim lobortis. Quis commodo odio aenean sed adipiscing. Sagittis orci a scelerisque purus semper eget duis. Nec feugiat in fermentum posuere urna nec tincidunt praesent. Nunc vel risus commodo viverra maecenas accumsan lacus. Suspendisse interdum consectetur libero id faucibus nisl. Neque vitae tempus quam pellentesque nec nam. Molestie nunc non blandit massa enim nec dui. Velit aliquet sagittis id consectetur purus. Venenatis tellus in metus vulputate eu scelerisque felis imperdiet.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}