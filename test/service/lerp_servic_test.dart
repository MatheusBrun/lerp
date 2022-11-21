import 'package:flutter_test/flutter_test.dart';
import 'package:lerp/service/lerp_servic.dart';

void main() {
  testWidgets('lerp servic ...', (tester) async {
    var result = Lerp_Service().findPorcent();

    expect(result, 36);
  });
}
