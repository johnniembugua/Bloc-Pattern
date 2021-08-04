import 'dart:async';
import 'validators.dart';

class Bloc extends Validators {
  final _email = StreamController<String>.broadcast();
  final _password = StreamController<String>.broadcast();

  //Add data to stream

  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);
  // Stream<bool> get submitValid =>
  //     Observable.combineLatest2(email, password, (e, p) => true);

  //change data
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  submit() {
    // final validEmail = _email.value;
    // final validPassword = _password.value;
  }

  dispose() {
    _email.close();
    _password.close();
  }
}
