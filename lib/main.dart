import 'package:flutter/material.dart';

void main() => runApp(const AppLala());

class AppLala extends StatelessWidget {
  const AppLala({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lala Max",
      home: ProductoLacteoFilaColumna(),
    );
  }
} // fin clase AppLala

class ProductoLacteoFilaColumna extends StatelessWidget {
  const ProductoLacteoFilaColumna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Lala Max',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[400],
        actions: const [
          Icon(Icons.medical_services_outlined, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.person_outline, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // Fila 1
            Row(
              children: [
                lalaTile(Colors.orange[100]!, Icons.egg_outlined, "Lácteos"),
                const SizedBox(width: 12),
                lalaTile(Colors.yellow[100]!, Icons.menu_book_outlined, "Recetas"),
              ],
            ),
            const SizedBox(height: 12),

            // Fila 2
            Row(
              children: [
                lalaTile(Colors.purpleAccent[100]!, Icons.kebab_dining_outlined, "Cárnicos"),
                const SizedBox(width: 12),
                lalaTile(Colors.green[100]!, Icons.local_drink_outlined, "Bebidas"),
              ],
            ),
            const SizedBox(height: 12),

            // Fila 3
            Row(
              children: [
                lalaTile(Colors.blue[100]!, Icons.rate_review_outlined, "Reseñas"),
                const SizedBox(width: 12),
                lalaTile(Colors.red[100]!, Icons.shopping_cart_outlined, "Compras"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Se define la función dentro de la misma clase para que sea accesible
  Widget lalaTile(Color backgroundColor, IconData icon, String label) {
    return Expanded(
      child: Container(
        height: 80, // Lo bajé a 80 para que se vean más anchos visualmente
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 26, color: Colors.black54),
            const SizedBox(width: 10),
            Flexible(
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}