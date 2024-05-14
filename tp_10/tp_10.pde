class Vector {

  // Atributos para almacenar las coordenadas del punto origen y destino del vector
  float xOrigen, yOrigen;
  float xDestino, yDestino;

  // Constructor para inicializar el vector con las coordenadas especificadas
  Vector(float xOrigen, float yOrigen, float xDestino, float yDestino) {
    this.xOrigen = xOrigen;
    this.yOrigen = yOrigen;
    this.xDestino = xDestino;
    this.yDestino = yDestino;
  }

  // Método para sumar dos vectores y devolver el vector resultante
  Vector sumar(Vector vector) {
    float xResultante = this.xDestino + vector.xDestino;
    float yResultante = this.yDestino + vector.yDestino;
    return new Vector(this.xOrigen, this.yOrigen, xResultante, yResultante);
  }

  // Método para restar dos vectores y devolver el vector resultante
  Vector restar(Vector vector) {
    float xResultante = this.xDestino - vector.xDestino;
    float yResultante = this.yDestino - vector.yDestino;
    return new Vector(this.xOrigen, this.yOrigen, xResultante, yResultante);
  }

  // Método para dibujar el vector en el lienzo
  void dibujar() {
    stroke(0); // Color negro para la línea
    line(xOrigen, yOrigen, xDestino, yDestino); // Dibujar la línea del vector
  }
}

// Función setup para inicializar el lienzo y crear los vectores
void setup() {
  size(400, 400); // Tamaño del lienzo
  smooth(); // Activar antialiasing

  // Definir los puntos A, B y C
  float xA = -1, yA = -2;
  float xB = 4, yB = -1;
  float xC = 5, yC = 2;

  // Crear los vectores AB, BC y AC
  Vector vectorAB = new Vector(xA, yA, xB, yB);
  Vector vectorBC = new Vector(xB, yB, xC, yC);
  Vector vectorAC = new Vector(xA, yA, xC, yC);

  // Calcular el vector AD (restando AB de AC)
  Vector vectorAD = vectorAC.restar(vectorAB);

  // Dibujar los vectores AB, BC, AC y AD
  vectorAB.dibujar();
  vectorBC.dibujar();
  vectorAC.dibujar();
  vectorAD.dibujar();
}

// Función draw no utilizada en este caso
void draw() {
}
