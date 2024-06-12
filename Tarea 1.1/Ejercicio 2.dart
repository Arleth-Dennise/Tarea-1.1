//ARLETH DENNISE OSEGUERA BUSTAMANTE
//20212020883

void main() {
  // Crear una lista de tareas
  ListaDeTareas listaDeTareas = ListaDeTareas();

  // Agregar tareas
  listaDeTareas.agregarTarea(Tarea(titulo: 'Tarea 1', descripcion: 'Descripción de tarea 1'));
  listaDeTareas.agregarTarea(Tarea(titulo: 'Tarea 2', descripcion: 'Descripción de tarea 2'));
  listaDeTareas.agregarTarea(Tarea(titulo: 'Tarea 3', descripcion: 'Descripción de tarea 3'));

  // Imprimir la lista
  listaDeTareas.imprimirLista();

  //agregar una tarea
  listaDeTareas.agregarTarea(Tarea(titulo: 'Tarea 4', descripcion: 'Descripción de la tarea 4'));

  // Imprimir la lista otra vez
  listaDeTareas.imprimirLista();

  // Marcar una tarea como completa
  listaDeTareas.tareas[3].marcarComoCompleta();

  // Imprimir la lista nuevamente
  listaDeTareas.imprimirLista();

  // Eliminar una tarea
  listaDeTareas.eliminarTarea(listaDeTareas.tareas[0]);

  // Imprimir la lista nuevamente
  listaDeTareas.imprimirLista();

  // Marcar una tarea como completa
  listaDeTareas.tareas[1].marcarComoCompleta();

  // Imprimir la lista nuevamente
  listaDeTareas.imprimirLista();

}

class Tarea {
  String titulo;
  String descripcion;
  bool estado;

  // Constructor
  Tarea({required this.titulo, required this.descripcion, this.estado = false});

  //marcar la tarea como completa
  void marcarComoCompleta() {
    estado = true;
  }

  // marcar la tarea como incompleta
  void marcarComoIncompleta() {
    estado = false;
  }
}

class ListaDeTareas {
  List<Tarea> tareas = [];

  //agregar una tarea a la lista
  void agregarTarea(Tarea tarea) {
    tareas.add(tarea);
  }

  //eliminar una tarea de la lista
  void eliminarTarea(Tarea tarea) {
    tareas.remove(tarea);
  }

  // marcar todas las tareas como completadas
  void marcarComoCompletas() {
    tareas.forEach((tarea) => tarea.marcarComoCompleta());
  }

  // imprimir la lista de tareas
  void imprimirLista() {
    tareas.forEach((tarea) {
      print('-----------------------------------------');
      print('Titulo: ${tarea.titulo}');
      print('Descripcion: ${tarea.descripcion}');
      print('Estado => ${tarea.estado? 'Completa' : 'Incompleta'}');
      print('-----------------------------------------');
    });
  }
}
