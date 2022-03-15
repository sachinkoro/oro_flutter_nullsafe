import 'package:flutter/material.dart';
import 'package:oro_flutter/designSystem/colors.dart';
import 'package:oro_flutter/designSystem/gradient.dart';

// ignore: must_be_immutable, camel_case_types
class dbButtonsMod24pxTC extends StatelessWidget {
  Widget child;
  Function onTap;
  BuildContext context;
  final bool enabled;

  dbButtonsMod24pxTC({
    this.child,
    this.onTap,
    this.context,
    this.enabled: true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.enabled ? onTap : null,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 51,
        decoration: BoxDecoration(
          color: enabled ? null : Color(0xFFCECECE),
          borderRadius: BorderRadius.circular(24),
          gradient: enabled ? dgOroGradient : null,
          boxShadow: enabled
              ? [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.12),
                      offset: Offset(0, 15),
                      blurRadius: 20)
                ]
              : [],
        ),
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Center(child: child),
      ),
    );
  }
}

class dbCheckBox extends StatelessWidget {
  bool checked;
  double size;

  dbCheckBox(this.checked, this.size);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Stack(
        children: [
          Container(
            height: size,
            width: size,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                    color: checked ? Color(0xff5A953E) : dcSubtleText)),
          ),
          Visibility(
            visible: checked,
            child: Icon(
              Icons.done_rounded,
              color: Color(0xff5A953E),
              size: size,
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable, camel_case_types
class dbChip extends StatelessWidget {
  Widget child;
  Function onTap;
  Color color;
  Gradient gradient;

  dbChip({this.child, this.onTap, this.color, this.gradient});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
            gradient: gradient),
        child: child,
      ),
    );
  }
}

// ignore: must_be_immutable, camel_case_types
class dbChipLightYellow extends StatelessWidget {
  Widget child;
  Function onTap;

  dbChipLightYellow({this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return dbChip(
      child: child,
      onTap: onTap,
      color: dcMediumYellow,
    );
  }
}

// ignore: must_be_immutable, camel_case_types
class dbChipFillYellow extends StatelessWidget {
  Widget child;
  Function onTap;

  dbChipFillYellow({this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return dbChip(
      child: child,
      onTap: onTap,
      color: dcOroYellow,
    );
  }
}

class dbChipFillYellowWithGradient extends StatelessWidget {
  Widget child;
  Function onTap;

  dbChipFillYellowWithGradient({this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return dbChip(
      child: child,
      onTap: onTap,
      gradient: dgOroGradient,
    );
  }
}

class dbRadioButton extends StatelessWidget {
  bool checked;

  dbRadioButton(this.checked);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
          border: Border.all(color: checked ? dcNewGreen : dcSubtleText),
          shape: BoxShape.circle),
      child: Visibility(
        visible: checked,
        child: Center(
          child: Container(
            height: 11.43,
            width: 11.43,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: dcNewGreen),
          ),
        ),
      ),
    );
  }
}

class dbTouchTargetBig extends StatelessWidget {
  Function onTap;
  String text;

  dbTouchTargetBig({this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Container(
          height: 21,
          width: 142,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0X4DFFC351).withOpacity(0.3)),
          padding: EdgeInsets.fromLTRB(0, 3.5, 0, 3.5),
          alignment: Alignment.center,
          child: Text(
            text,
            style: Theme.of(context).primaryTextTheme.caption.copyWith(
                  fontSize: 10,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
          ),
        ),
      ),
    );
  }
}
