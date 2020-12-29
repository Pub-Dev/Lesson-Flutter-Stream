import 'dart:async';

class HomeBloc {
  int counter = 0;

  final StreamController<int> _streamController = StreamController<int>();
  Sink<int> get input => _streamController.sink;
  Stream<int> get output => _streamController.stream;

  void incrementCounter() {
    counter++;
    input.add(counter);
  }
}
