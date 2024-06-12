//ARLETH DENNISE OSEGUERA BUSTAMANTE
//20212020883

void main() {
  // Crear un objeto de la clase Circulo
  Circulo unCirculo = Circulo(radio: 8, color: 'rosa');

  // Imprimir los datos del circulo
  print('Radio: ${unCirculo.radio}');
  print('Color: ${unCirculo.color}');

  // Calcular y imprimir el area del circulo
  double area = unCirculo.Area();
  print('Area: $area');

  // Calcular y imprimir el perimetro del circulo
  double perimetro = unCirculo.Perimetro();
  print('Perimetro: $perimetro');
}

class Circulo {
  double radio;
  String color;

  // Constructor
  Circulo({required this.radio, required this.color});

  // calcular el area del circulo
  double Area() {
    return 3.14159 * radio * radio;
  }

  // calcular el perimetro del circulo
  double Perimetro() {
    return 2 * 3.14159 * radio;
  }
}