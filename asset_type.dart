abstract class AssetType {
  AssetType(this.name, this.value);

  String name;
  String value;
}

class ParType extends AssetType {
  ParType._(String name, String value) : super(name, value);

  static final three = ParType._('par_three', '3');
  static final four = ParType._('par_four', '4');
  static final five = ParType._('par_five', '5');

  factory ParType.fromValue({String value}) {
    switch (value) {
      case '3':{return ParType.three;}
      case '4':{return ParType.four;}
      case '5':{return ParType.five;}
      default:{return ParType.four;}
    }
  }

  factory ParType.fromName({String name}) {
    switch (name) {
      case 'par_three':{return ParType.three;}
      case 'par_four':{return ParType.four;}
      case 'par_five':{return ParType.five;}
      default:{return ParType.four;}
    }
  }
}
