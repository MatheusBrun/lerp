import 'package:lerp/model/lerp_model.dart';

class Lerp_Service {
  final lerp = lerp_modelo(begin: 20, End: 40, porcent: 80);
  double findPorcent() {
    var result = _calculatePorcent();
    print('$result');
    return result;
  }

  double _getPorcentResultBegin() {
    var porcent = 100 - lerp.porcent;
    return porcent;
  }

  double _calculatePorcent() {
    var porcentBegin = _getPorcentResultBegin();
    var begin = lerp.begin;
    var end = lerp.End;
    var porcent = lerp.porcent;

    begin = (begin * porcentBegin) / 100;
    end = (end * porcent) / 100;

    double result = begin + end;
    return result;
  }
}
