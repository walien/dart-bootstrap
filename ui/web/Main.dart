import 'TechnologiesBundle.dart';

class main {

  main() {

    var bundle = new TechnologiesBundle();

    bundle.loadData().then((_) {
      print(bundle.getTechnos());
    });

  }
}
