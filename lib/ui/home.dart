import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _index = 0;
  List quotes = [
    'La innovación distingue a los líderes de los seguidores.',
    'Muchas veces la gente no sabe lo que quiere hasta que se lo enseñas.',
    'La mitad de lo que separa a los emprendedores exitosos de los que no triunfan es la perseverancia.',
    'La vida es injusta, acostúmbrate a ello.',
    'Está bien celebrar el éxito, pero es más importante prestar atención a las lecciones del fracaso.',
    'Las grandes oportunidades nacen de haber sabido aprovechar las pequeñas.',
    'La vida es frágil. No tenemos garantizado un mañana, así que da lo mejor de ti.',
    'Mi filosofía siempre ha sido ser el mejor, no ser el primero.',
    'Puedes centrarte en las barreras o bien en escalar el muro y redefinir el problema.',
    'Cuando un sueño aparezca, ¡agárralo!',
    'Debes hacer cosas que realmente sean importantes, pero también debes divertirte, porque si no, no tendrás éxito.',
    'Sé que parece que el mundo se está desmoronando, pero en realidad es una gran época para volvernos un poco locos, seguir nuestra curiosidad y ser ambiciosos. No abandonéis vuestros sueños. ¡El mundo os necesita!',
    'Si decides hacer solo las cosas que sabes que van a funcionar, dejarás un montón de oportunidades encima de la mesa.',
    'Tu margen es mi oportunidad.',
    'El único modo de salir de una caja cerrada es inventar la manera de salir.',
    'El mayor riesgo es no correr ningún riesgo.',
    'Encuentra aquello por lo que realmente sientes pasión.',
    'La pregunta no es "¿qué queremos saber de la gente?", sino "¿qué desea contarnos la gente de sí misma?"',
    'El mundo se puede cambiar en 140 caracteres.',
    'No importa tanto a cuántas personas sigas, ni el número de seguidores que tengas, sino lo que pones en cada tweet.',
    'Twitter es como la electricidad. Puedes usarlo cuando quieras.',
    'Creo que este es el mejor consejo: piensa constantemente cómo podrías hacer mejor las cosas.',
    'Si algo es lo suficientemente importante, deberías intentarlo. Incluso si el resultado probable es el fracaso.',
    'Creo que es posible que la gente normal elija ser extraordinaria.',
    'El marketing realmente brillante es aquel que toma algo que la mayoría interpreta como una debilidad y lo transforma para que sea visto como una fortaleza.',
    'La mayoría de ideas emprendedoras pueden sonar alocadas, estúpidas y poco rentables, pero luego serán un éxito.',
    'No tengas miedo de cambiar el modelo.',
    'Cuando empieces a construir un producto, no asumas que sabes todas las respuestas. Escucha a la comunidad y adáptate a ella.',
    'El éxito de cualquier producto depende de visiones muy sutiles. Necesitas un gran producto y una visión más grande todavía para llevarlo a cabo, pero serán las cosas pequeñas las que marquen la gran diferencia.',
    'En cierto modo, ser un emprendedor es un viaje solitario.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(14.5)),
                    child: Center(
                        child: Text(
                      quotes[_index % quotes.length],
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 16.5,
                          fontStyle: FontStyle.italic),
                    ))),
              ),
            ),
            Divider(
              thickness: 1.3,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: FlatButton.icon(
                  onPressed: _showQuote,
                  color: Colors.greenAccent.shade700,
                  icon: Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Inspire me!',
                    style: TextStyle(color: Colors.white, fontSize: 18.8),
                  )),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    setState(() {
      _index += 1;
    });
  }
}

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BizCard'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            _getCard(),
            _getAvatar(),
          ],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
          color: Colors.lightGreen, borderRadius: BorderRadius.circular(14.5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Alejandro Franco',
            style: TextStyle(
                fontSize: 20.9,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'alexfranco.dev',
            style: TextStyle(fontSize: 15.0, color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.person_outline,
                color: Colors.white,
              ),
              Text('@jafrancov',
                  style: TextStyle(fontSize: 15.0, color: Colors.white)),
            ],
          )
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          border: Border.all(color: Colors.white70, width: 1.2),
          image: DecorationImage(
              image: NetworkImage('https://picsum.photos/300/300'),
              fit: BoxFit.cover)),
    );
  }
}

class ScaffoldExample extends StatelessWidget {
  _tapButton() {
    debugPrint('Tapped button');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.email),
              onPressed: () => debugPrint('Email Tapped')),
          IconButton(icon: Icon(Icons.access_alarm), onPressed: _tapButton)
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightGreen,
          child: Icon(Icons.call_missed),
          onPressed: () => debugPrint('Hello')),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text('First')),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit), title: Text('Second')),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), title: Text('Third')),
        ],
        onTap: (int index) => debugPrint('Tapped item: $index'),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton()
//            InkWell(
//              child: Text(
//                'Tap me!',
//                style: TextStyle(fontSize: 23.4),
//              ),
//              onTap: () => debugPrint('tapped...'),
//            )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackbar = SnackBar(
          content: Text('Hello again'),
          backgroundColor: Colors.amberAccent.shade700,
        );
        Scaffold.of(context).showSnackBar(snackbar);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(8.0)),
        child: Text(
          'Button',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
