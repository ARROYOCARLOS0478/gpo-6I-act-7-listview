import 'package:flutter/material.dart';

void main() => runApp(const AppRappi());

class AppRappi extends StatelessWidget {
  const AppRappi({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Restaurante",
      home: Repartidores(),
    );
  }
}

class Repartidores extends StatelessWidget {
  const Repartidores({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rappi Carlos',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.face,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.message, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person, color: Colors.white),
            onPressed: () {},
          ),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 209, 193, 48),
                Colors.orange,
                Colors.red,
                Colors.pink,
              ],
            ),
          ),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16), // Espaciado alrededor de la lista
        itemCount: 5,
        separatorBuilder: (context, index) =>
            const SizedBox(height: 12), // Espacio entre tarjetas
        itemBuilder: (context, index) {
          // Definimos una lista de iconos y textos para que no se vea repetitivo
          List<IconData> iconos = [
            Icons.fastfood,
            Icons.shopping_basket,
            Icons.local_pharmacy,
            Icons.liquor,
            Icons.pets
          ];
          List<String> titulos = [
            'Restaurantes',
            'Supermercado',
            'Farmacia',
            'Licores',
            'Mascotas'
          ];

          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 3), // Sombra suave hacia abajo
                ),
              ],
            ),
            child: ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              leading: CircleAvatar(
                backgroundColor:
                    const Color(0xFFFF441F).withOpacity(0.1), // Naranja Rappi clarito
                child: Icon(iconos[index],
                    color: const Color(0xFFFF441F)), // Icono Naranja
              ),
              title: Text(
                titulos[index],
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              subtitle: const Text('¡Pide ahora y llega en minutos!'),
              trailing: const Icon(Icons.arrow_forward_ios,
                  size: 16, color: Colors.grey),
              onTap: () {
                print('Seleccionaste ${titulos[index]}');
              },
            ),
          );
        },
      ),
    );
  }
}
