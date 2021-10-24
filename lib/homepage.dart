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
          BitmapDescriptor.hueViolet,
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
          BitmapDescriptor.hueViolet,
        ),
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (builder) {
                return Container(
                  color: Colors.white,
                  child: new Center(
                    child: Text("data"),
                  ),
                );
              });
        });
    Marker newyork3Marker = Marker(
        markerId: MarkerId('newyork3'),
        position: LatLng(19.2875079, -99.1760329),
        infoWindow: InfoWindow(title: 'Restaurante Arroyo'),
        icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueViolet,
        ),
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (builder) {
                return Container(
                  color: Colors.white,
                  child: new Center(
                    child: Text("data"),
                  ),
                );
              });
        });

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:
            CameraPosition(target: LatLng(19.2903597, -99.1821242), zoom: 12),
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

Marker newyork4Marker = Marker(
  markerId: MarkerId('newyork4'),
  position: LatLng(19.4274206, -99.1936420),
  infoWindow: InfoWindow(title: 'Chapulín'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork5Marker = Marker(
  markerId: MarkerId('newyork5'),
  position: LatLng(19.4359350, -99.1376785),
  infoWindow: InfoWindow(title: 'Café Tacuba'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork6Marker = Marker(
  markerId: MarkerId('newyork6'),
  position: LatLng(19.3488345, -99.1636558),
  infoWindow: InfoWindow(title: 'Los Danzantes'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork7Marker = Marker(
  markerId: MarkerId('newyork7'),
  position: LatLng(19.2948654, -99.1283186),
  infoWindow: InfoWindow(title: 'Porfirios Coapa'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork8Marker = Marker(
  markerId: MarkerId('newyork8'),
  position: LatLng(19.4315513, -99.1900471),
  infoWindow: InfoWindow(title: 'Porfirios Masaryk'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork9Marker = Marker(
  markerId: MarkerId('newyork9'),
  position: LatLng(19.4553448, -99.2194807),
  infoWindow: InfoWindow(title: 'Porfirios Toreo'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork10Marker = Marker(
  markerId: MarkerId('newyork10'),
  position: LatLng(19.4331026, -99.1362955),
  infoWindow: InfoWindow(title: 'Azul Historico'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork11Marker = Marker(
  markerId: MarkerId('newyork11'),
  position: LatLng(19.3138514, -99.1850571),
  infoWindow: InfoWindow(title: 'Azul y Oro'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork12Marker = Marker(
  markerId: MarkerId('newyork12'),
  position: LatLng(19.4130653, -99.1714772),
  infoWindow: InfoWindow(title: 'Azul Condesa'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork13Marker = Marker(
  markerId: MarkerId('newyork13'),
  position: LatLng(19.4350266, -99.1459657),
  infoWindow: InfoWindow(title: 'El Cardenal Cuahutemoc 1'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork14Marker = Marker(
  markerId: MarkerId('newyork14'),
  position: LatLng(19.4339326, -99.1353377),
  infoWindow: InfoWindow(title: 'El Cardenal Cuahutemoc 2'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork15Marker = Marker(
  markerId: MarkerId('newyork15'),
  position: LatLng(19.3951450, -99.1753602),
  infoWindow: InfoWindow(title: 'El Cardenal Benito Juárez'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork16Marker = Marker(
  markerId: MarkerId('newyork16'),
  position: LatLng(19.3473490, -99.1888229),
  infoWindow: InfoWindow(title: 'El Cardenal Álvaro Obregón'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork17Marker = Marker(
  markerId: MarkerId('newyork17'),
  position: LatLng(19.4310083, -99.2099231),
  infoWindow: InfoWindow(title: 'El Cardenal Miguel Hidalgo'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork18Marker = Marker(
  markerId: MarkerId('newyork18'),
  position: LatLng(19.4344523, -99.2091766),
  infoWindow: InfoWindow(title: 'La Hacienda de los Morales'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork19Marker = Marker(
  markerId: MarkerId('newyork19'),
  position: LatLng(19.4330510, -99.1947873),
  infoWindow: InfoWindow(title: 'Pujol'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork20Marker = Marker(
  markerId: MarkerId('newyork20'),
  position: LatLng(19.4363097, -99.1379504),
  infoWindow: InfoWindow(title: 'Limosneros'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork21Marker = Marker(
  markerId: MarkerId('newyork21'),
  position: LatLng(19.4652252, -99.1777254),
  infoWindow: InfoWindow(title: 'Nicos'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork22Marker = Marker(
  markerId: MarkerId('newyork22'),
  position: LatLng(19.4308458, -99.1939002),
  infoWindow: InfoWindow(title: 'Quintonil'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork23Marker = Marker(
  markerId: MarkerId('newyork23'),
  position: LatLng(19.4049138, -99.1987476),
  infoWindow: InfoWindow(title: 'Casa Merlos'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
