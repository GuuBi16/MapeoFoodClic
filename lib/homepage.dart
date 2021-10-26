import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  Completer<GoogleMapController> _controller = Completer();
  final LatLng _center = const LatLng(19.7192639, -99.2350336);

  @override
  void initState() {
    super.initState();
  }

  double zoomVal = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(FontAwesomeIcons.arrowLeft),
            onPressed: () {
              //
            }),
        title: Text("Restaurantes Mexicanos"),
        actions: <Widget>[
          IconButton(
              icon: Icon(FontAwesomeIcons.search),
              onPressed: () {
                //
              }),
        ],
      ),
      body: Stack(
        children: <Widget>[
          _buildGoogleMap(context),
          _zoomminusfunction(),
          _zoomplusfunction(),
          _buildContainer(),
        ],
      ),
    );
  }

  Widget _zoomminusfunction() {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
          icon: Icon(FontAwesomeIcons.searchMinus, color: Color(0xFFEE8700)),
          onPressed: () {
            zoomVal--;
            _minus(zoomVal);
          }),
    );
  }

  Widget _zoomplusfunction() {
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
          icon: Icon(FontAwesomeIcons.searchPlus, color: Color(0xFFEE8700)),
          onPressed: () {
            zoomVal++;
            _plus(zoomVal);
          }),
    );
  }

  Future<void> _minus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(19.2903597, -99.1821242), zoom: zoomVal)));
  }

  Future<void> _plus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(19.2903597, -99.1821242), zoom: zoomVal)));
  }

  Widget _buildContainer() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 150.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  19.2875079,
                  -99.1760329,
                  "Restaurante Arroyo"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  19.2887052,
                  -99.1654046,
                  "Antigua Hacienda de Tlalpan"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  19.3492661,
                  -99.2000909,
                  "San Ángel Inn"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  19.4274206,
                  -99.1936420,
                  "Chapulín"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  19.4359350,
                  -99.1376785,
                  "Café Tacuba"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  19.3488345,
                  -99.1636558,
                  "Los Danzantes"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  19.2948654,
                  -99.1283186,
                  "Porfirios Coapa"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  19.4315513,
                  -99.1900471,
                  "Porfirios Masaryk"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  19.4553448,
                  -99.2194807,
                  "Porfirios Toreo"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  19.4331026,
                  -99.1362955,
                  "Azul Historico"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  19.3138514,
                  -99.1850571,
                  "Azul y Oro"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  19.4130653,
                  -99.1714772,
                  "Azul Condesa"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  19.4350266,
                  -99.1459657,
                  "El Cardenal Cuahutemoc 1"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  19.4339326,
                  -99.1353377,
                  "El Cardenal Cuahutemoc 2"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  19.3951450,
                  -99.1753602,
                  "El Cardenal Benito Juárez"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  19.3473490,
                  -99.1888229,
                  "El Cardenal Álvaro Obregón"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  19.4310083,
                  -99.2099231,
                  "El Cardenal Miguel Hidalgo"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  19.4344523,
                  -99.2091766,
                  "La Hacienda de los Morales"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  19.4330510,
                  -99.1947873,
                  "Pujol"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  19.4363097,
                  -99.1379504,
                  "Limosneros"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  19.4652252,
                  -99.1777254,
                  "Nicos"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  19.4308458,
                  -99.1939002,
                  "Quintonil"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  19.4049138,
                  -99.1987476,
                  "Casa Merlos"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _boxes(String _image, double lat, double long, String restaurantName) {
    return GestureDetector(
      onTap: () {
        _gotoLocation(lat, long);
      },
      child: Container(
        child: new FittedBox(
          child: Material(
              color: Colors.white,
              elevation: 14.0,
              borderRadius: BorderRadius.circular(24.0),
              shadowColor: Color(0x802196F3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 180,
                    height: 200,
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(24.0),
                      child: Image(
                        fit: BoxFit.fill,
                        image: NetworkImage(_image),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: myDetailsContainer1(restaurantName),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  Widget myDetailsContainer1(String restaurantName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            restaurantName,
            style: TextStyle(
                color: Color(0xFFEE8700),
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
        SizedBox(height: 5.0),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                child: Text(
              "4.1",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
              ),
            )),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                FontAwesomeIcons.solidStarHalf,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
                child: Text(
              "(521)",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
              ),
            )),
          ],
        )),
        SizedBox(height: 5.0),
        Container(
            child: Text(
          "Pesos \u00B7 \u0024\u0024 \u00B7 1.6 mi",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 18.0,
          ),
        )),
        SizedBox(height: 5.0),
        Container(
            child: Text(
          "Cerrado \u00B7 Abierto 17:00 Jue",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        )),
      ],
    );
  }

  Widget _buildGoogleMap(BuildContext context) {
    Marker newyork1Marker = Marker(
        markerId: MarkerId('newyork1'),
        position: LatLng(19.3492611, -99.2000909),
        infoWindow: InfoWindow(title: 'San Ángel Inn'),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueOrange,
        ),
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (builder) {
                return Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "San Ángel Inn",
                        style:
                            TextStyle(fontSize: 20, color: Colors.orange[300]),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Restaurante mexicano fino en un antiguo monasterio con mesas al aire libre alrededor de una fuente.",
                        style:
                            TextStyle(fontSize: 16, color: Colors.orange[300]),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.mapMarkerAlt,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "Diego Rivera 50, San Ángel Inn, Álvaro Obregón, 01060 Ciudad de México, CDMX",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.clock,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "Abierto de Lunes a Domingo de 08:00 - 22:00",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.link,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "https://www.sanangelinn.com",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.phone,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "5556161402",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              });
        });
    Marker newyork2Marker = Marker(
        markerId: MarkerId('newyork2'),
        position: LatLng(19.2887052, -99.1654046),
        infoWindow: InfoWindow(title: 'Antigua Hacienda de Tlalpan'),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueOrange,
        ),
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (builder) {
                return Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Antigua Hacienda de Tlalpan",
                        style:
                            TextStyle(fontSize: 20, color: Colors.orange[300]),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Mariscos y carnes servidos en un restaurante de estilo colonial con numerosos comedores, un campo de césped y pavos reales.",
                        style:
                            TextStyle(fontSize: 16, color: Colors.orange[300]),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.mapMarkerAlt,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "Calz. de Tlalpan 4619, Tlalpan Centro I, Tlalpan, 14000 Ciudad de México, CDMX",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.clock,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "Abierto "
                            "Lunes a Viernes de 08:00 - 23:00 "
                            "Sabado "
                            "09:00 - 23:00 y "
                            "Domingo "
                            "09:00 - 19:00",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.link,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "https://www.aht.mx",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.phone,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "5556557888",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              });
        });
    Marker newyork3Marker = Marker(
        markerId: MarkerId('newyork3'),
        position: LatLng(19.2875079, -99.1760329),
        infoWindow: InfoWindow(title: 'Restaurante Arroyo'),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueOrange,
        ),
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (builder) {
                return Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Restaurante Arroyo",
                        style:
                            TextStyle(fontSize: 20, color: Colors.orange[300]),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Restaurante amplio y animado de cocina mexicana, con platos tradicionales y actuaciones en directo de mariachis.",
                        style:
                            TextStyle(fontSize: 16, color: Colors.orange[300]),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.mapMarkerAlt,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "Av. Insurgentes Sur 4003, Sta Úrsula Xitla, Tlalpan, 14000 Ciudad de México, CDMX",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.clock,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "Abierto "
                            "Lunes a Viernes de 12:00 - 20:00 "
                            "Sabado y Domingo "
                            "08:00 - 20:00",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.link,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "http://arroyorestaurante.mx/",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.phone,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "5555734344",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              });
        });
    Marker newyork4Marker = Marker(
        markerId: MarkerId('newyork4'),
        position: LatLng(19.4272233, -99.1957986),
        infoWindow: InfoWindow(title: 'Chapulín'),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueOrange,
        ),
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (builder) {
                return Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Restaurante Chapulín",
                        style:
                            TextStyle(fontSize: 20, color: Colors.orange[300]),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Comedor en hotel sofisticado y terraza que ofrece platos fusión mexicanos, y comida y postres para compartir.",
                        style:
                            TextStyle(fontSize: 16, color: Colors.orange[300]),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.mapMarkerAlt,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "Campos Elíseos 218, Polanco, Polanco IV Secc, Miguel Hidalgo, 11560 Ciudad de México, CDMX, Piso 0 - Intercontinental Presidente México City, an IHG Hotel",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.clock,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "Abierto "
                            "Lunes a Sabado de 08:00 - 01:00 "
                            "Domingo "
                            "08:00 - 22:00",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.link,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "http://www.chapulin.rest/",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.phone,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "5553277789",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              });
        });

    Marker newyork5Marker = Marker(
        markerId: MarkerId('newyork5'),
        position: LatLng(19.4357276, -99.1398458),
        infoWindow: InfoWindow(title: 'Café de Tacuba'),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueOrange,
        ),
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (builder) {
                return Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Restaurante Café de Tacuba",
                        style:
                            TextStyle(fontSize: 20, color: Colors.orange[300]),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Restaurante centenario, conocido por su receta de mole picante, su elaborada decoración y las actuaciones en directo de mariachis.",
                        style:
                            TextStyle(fontSize: 16, color: Colors.orange[300]),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.mapMarkerAlt,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "Tacuba 28, Col. Centro Historico, Deleg, Cuauhtémoc, 06010 Ciudad de México, CDMX",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.clock,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "Abierto "
                            "Lunes a Domingo de 08:00 - 22:30",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.link,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "http://www.cafedetacuba.info/",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.phone,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "5555212048",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              });
        });

    Marker newyork6Marker = Marker(
        markerId: MarkerId('newyork6'),
        position: LatLng(19.3488345, -99.1636558),
        infoWindow: InfoWindow(title: 'Los Danzantes'),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueOrange,
        ),
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (builder) {
                return Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Restaurante Los Danzantes",
                        style:
                            TextStyle(fontSize: 20, color: Colors.orange[300]),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Elegante restaurant en edificio colonial con mesas al aire libre, experto en cocina mexicana moderna y mezcal.",
                        style:
                            TextStyle(fontSize: 16, color: Colors.orange[300]),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.mapMarkerAlt,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "Parque Centenario 12, Coyoacán TNT, Coyoacán, 04000 Ciudad de México, CDMX",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.clock,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "Abierto "
                            "Lunes a Jueves de 12:30 - 23:00 "
                            "Viernes 12:30 - 00:00 "
                            "Sabado 10:00 - 00:00 "
                            "Domingo 10:00 - 23:00",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.link,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "http://losdanzantes.com/los-danzantes-coyoacan/",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.phone,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "5565852477",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              });
        });

    Marker newyork7Marker = Marker(
        markerId: MarkerId('newyork7'),
        position: LatLng(19.2948654, -99.1283186),
        infoWindow: InfoWindow(title: 'Restaurante Porfirio´s Coapa'),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueOrange,
        ),
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (builder) {
                return Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Restaurante Porfirio´s Coapa",
                        style:
                            TextStyle(fontSize: 20, color: Colors.orange[300]),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      //Text(
                      //"Elegante restaurant en edificio colonial con mesas al aire libre, experto en cocina mexicana moderna y mezcal.",
                      //style:
                      //TextStyle(fontSize: 16, color: Colors.orange[300]),
                      //),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.mapMarkerAlt,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "Calzada Acoxpa 610 Gran Terraza Coapa, locales 101, 102 y 103, Coapa, Tlalpan, 14390 CDMX",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.clock,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "Abierto "
                            "Domingo y Lunes de 13:00 - 22:00 "
                            "Martes a Sabado de 13:00 - 00:00",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.link,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "https://porfirios.com.mx/",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.phone,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "5517173418",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              });
        });

    Marker newyork8Marker = Marker(
        markerId: MarkerId('newyork8'),
        position: LatLng(19.4315513, -99.1900471),
        infoWindow: InfoWindow(title: 'Porfirio´s Masaryk'),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueOrange,
        ),
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (builder) {
                return Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Restaurante Porfirio's Masaryk",
                        style:
                            TextStyle(fontSize: 20, color: Colors.orange[300]),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      //Text(
                      //"Cocina mexicana de vanguardia y una amplia selección de tequila y mezcal en un restaurante elegante y chic.",
                      //style:
                      //TextStyle(fontSize: 16, color: Colors.orange[300]),
                      //),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.mapMarkerAlt,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "Av. Presidente Masaryk 214, Polanco, Miguel Hidalgo, 11580 Ciudad de México, CDMX",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.clock,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "Abierto "
                            "Lunes a Domingo de 13:00 - 01:00",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.link,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "http://porfirios.com.mx/",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.phone,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "5552801494",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              });
        });

    Marker newyork9Marker = Marker(
        markerId: MarkerId('newyork9'),
        position: LatLng(19.4551577, -99.2216265),
        infoWindow: InfoWindow(title: 'Porfirio´s Toreo'),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueOrange,
        ),
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (builder) {
                return Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Restaurante Porfirio's Toreo",
                        style:
                            TextStyle(fontSize: 20, color: Colors.orange[300]),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      //Text(
                      //"Cocina mexicana de vanguardia y una amplia selección de tequila y mezcal en un restaurante elegante y chic.",
                      //style:
                      //TextStyle(fontSize: 16, color: Colors.orange[300]),
                      //),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.mapMarkerAlt,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "Blvd. Manuel Avila Camacho 5 Toreo Parque Central, Planta Baja, 53390 Naucalpan de Juárez, Méx.",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.clock,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "Abierto "
                            "Domingo y Lunes de 13:00 - 22:00 "
                            "Martes a Sabado de 13:00 - 00:00 ",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.link,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "http://porfirios.com.mx/",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.phone,
                            color: Colors.orange[300],
                          ),
                          title: Text(
                            "5551627212",
                            style: TextStyle(color: Colors.orange[300]),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              });
        });
    Marker newyork10Marker = Marker(
      markerId: MarkerId('newyork10'),
      position: LatLng(19.4331026, -99.1362955),
      infoWindow: InfoWindow(title: 'Azul Historico'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueOrange,
      ),
    );
    Marker newyork11Marker = Marker(
      markerId: MarkerId('newyork11'),
      position: LatLng(19.3138514, -99.1850571),
      infoWindow: InfoWindow(title: 'Azul y Oro'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueOrange,
      ),
    );
    Marker newyork12Marker = Marker(
      markerId: MarkerId('newyork12'),
      position: LatLng(19.4130653, -99.1714772),
      infoWindow: InfoWindow(title: 'Azul Condesa'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueOrange,
      ),
    );
    Marker newyork13Marker = Marker(
      markerId: MarkerId('newyork13'),
      position: LatLng(19.4350266, -99.1459657),
      infoWindow: InfoWindow(title: 'El Cardenal Cuahutemoc 1'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueOrange,
      ),
    );
    Marker newyork14Marker = Marker(
      markerId: MarkerId('newyork14'),
      position: LatLng(19.4339326, -99.1353377),
      infoWindow: InfoWindow(title: 'El Cardenal Cuahutemoc 2'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueOrange,
      ),
    );
    Marker newyork15Marker = Marker(
      markerId: MarkerId('newyork15'),
      position: LatLng(19.3951450, -99.1753602),
      infoWindow: InfoWindow(title: 'El Cardenal Benito Juárez'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueOrange,
      ),
    );
    Marker newyork16Marker = Marker(
      markerId: MarkerId('newyork16'),
      position: LatLng(19.3473490, -99.1888229),
      infoWindow: InfoWindow(title: 'El Cardenal Álvaro Obregón'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueOrange,
      ),
    );
    Marker newyork17Marker = Marker(
      markerId: MarkerId('newyork17'),
      position: LatLng(19.4310083, -99.2099231),
      infoWindow: InfoWindow(title: 'El Cardenal Miguel Hidalgo'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueOrange,
      ),
    );
    Marker newyork18Marker = Marker(
      markerId: MarkerId('newyork18'),
      position: LatLng(19.4344523, -99.2091766),
      infoWindow: InfoWindow(title: 'La Hacienda de los Morales'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueOrange,
      ),
    );
    Marker newyork19Marker = Marker(
      markerId: MarkerId('newyork19'),
      position: LatLng(19.4330510, -99.1947873),
      infoWindow: InfoWindow(title: 'Pujol'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueOrange,
      ),
    );
    Marker newyork20Marker = Marker(
      markerId: MarkerId('newyork20'),
      position: LatLng(19.4363097, -99.1379504),
      infoWindow: InfoWindow(title: 'Limosneros'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueOrange,
      ),
    );
    Marker newyork21Marker = Marker(
      markerId: MarkerId('newyork21'),
      position: LatLng(19.4652252, -99.1777254),
      infoWindow: InfoWindow(title: 'Nicos'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueOrange,
      ),
    );
    Marker newyork22Marker = Marker(
      markerId: MarkerId('newyork22'),
      position: LatLng(19.4308458, -99.1939002),
      infoWindow: InfoWindow(title: 'Quintonil'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueOrange,
      ),
    );
    Marker newyork23Marker = Marker(
      markerId: MarkerId('newyork23'),
      position: LatLng(19.4049138, -99.1987476),
      infoWindow: InfoWindow(title: 'Casa Merlos'),
      icon: BitmapDescriptor.defaultMarkerWithHue(
        BitmapDescriptor.hueOrange,
      ),
    );

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        myLocationEnabled: true,
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(target: _center, zoom: 10),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {
          newyork1Marker,
          newyork2Marker,
          newyork3Marker,
          newyork4Marker,
          newyork5Marker,
          newyork6Marker,
          newyork7Marker,
          newyork8Marker,
          newyork9Marker,
          newyork10Marker,
          newyork11Marker,
          newyork12Marker,
          newyork13Marker,
          newyork14Marker,
          newyork15Marker,
          newyork16Marker,
          newyork17Marker,
          newyork18Marker,
          newyork19Marker,
          newyork20Marker,
          newyork21Marker,
          newyork22Marker,
          newyork23Marker
        },
      ),
    );
  }

  Future<void> _gotoLocation(double lat, double long) async {
    final GoogleMapController controller = await _controller.future;

    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: LatLng(lat, long),
      zoom: 15,
      tilt: 50.0,
      bearing: 45.0,
    )));
  }
}
