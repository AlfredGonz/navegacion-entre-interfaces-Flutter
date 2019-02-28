import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: <String, WidgetBuilder>
      {
        "/inicio" : (BuildContext context) => Inicio(),
        "/empresa" : (BuildContext context) => Empresa(),
        "/productos" : (BuildContext context) => Productos(),
        "/contacto" : (BuildContext context) => Contacto(),
      },
      
      home: Inicio()
          );
        }
      }
      
      //------ CLASE INICIO
      class Inicio extends StatelessWidget
      {
          Widget build(BuildContext context)
          {
              return new Scaffold(
        body: Container(
          padding: EdgeInsets.only(
            top: 150,
            bottom: 10,
            right: 10,
            left: 10
          ),
          decoration: BoxDecoration(
            color: Colors.indigo,
            image: DecorationImage(
              image: NetworkImage("https://cdn.passporthealthglobal.com/wp-content/uploads/2018/08/vacunas-consejos-peru.jpg"),
                alignment: Alignment.topCenter
            )
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: new RoundedRectangleBorder( //bordes redondeados
                        borderRadius: BorderRadius.circular(10.0)
                      ), 
                      onPressed: (){
                        Navigator.pushNamed(context, "/inicio");
                      },
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text("INICIO", 
                              textAlign:TextAlign.center,
                              style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.w900
                              ),
                          ),
                        ),
                      ),
                    ),
                  ),
                    ],
                  ),
                  
                  Column(
                    children: <Widget>[
                      Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: new RoundedRectangleBorder( //bordes redondeados
                        borderRadius: BorderRadius.circular(10.0)
                      ), 
                      onPressed: (){
                        Navigator.pushNamed(context, "/empresa");
                      },
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text("EMPRESA", 
                              textAlign:TextAlign.center,
                              style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.w900
                              ),
                          ),
                        ),
                      ),
                    ),
                  ),
                    ],
                  ),

                ],
              ),

             Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: new RoundedRectangleBorder( //bordes redondeados
                        borderRadius: BorderRadius.circular(10.0)
                      ), 
                      onPressed: (){
                        Navigator.pushNamed(context, "/productos");
                      },
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text("PRODUCTOS", 
                              textAlign:TextAlign.center,
                              style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.w900
                              ),
                          ),
                        ),
                      ),
                    ),
                  ),
                    ],
                  ),
                  
                  Column(
                    children: <Widget>[
                      Padding(
                    padding: EdgeInsets.all(10),
                    child: RaisedButton(
                      color: Colors.white,
                      shape: new RoundedRectangleBorder( //bordes redondeados
                        borderRadius: BorderRadius.circular(10.0)
                      ), 
                      onPressed: (){
                        Navigator.pushNamed(context, "/contacto");
                      },
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text("CONTACTO", 
                              textAlign:TextAlign.center,
                              style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.w900
                              ),
                          ),
                        ),
                      ),
                    ),
                  ),
                    ],
                  ),

                ],
              ),

            ],
          ),
        ),
      );
          }
      }

//------ CLASE EMPRESA
class Empresa extends StatelessWidget
{
   @override
  Widget build(BuildContext context) 
  {
    return new Scaffold(
      appBar: AppBar(title: new Text("EMPRESA"),),
      body: Center(
        child: Text("SECCION EMPRESA"),
      ),
    );
  }
}

//------ CLASE PRODUCTOS
class Productos extends StatelessWidget
{
   @override
  Widget build(BuildContext context) 
  {
    return new Scaffold(
      appBar: AppBar(title: new Text("PRODUCTOS"),),
      body: Center(
        child: Text("SECCION PRODUCTOS"),
      ),
    );
  }
}

//------ CLASE CONTACTO
class Contacto extends StatelessWidget
{
   @override
  Widget build(BuildContext context) 
  {
    return new Scaffold(
      appBar: AppBar(title: new Text("CONTACTO"),),
      body: Center(
        child: Text("SECCION CONTACTO"),
      ),
    );
  }
}