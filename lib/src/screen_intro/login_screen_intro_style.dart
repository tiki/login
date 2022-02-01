/*
 * Copyright (c) TIKI Inc.
 * MIT license. See LICENSE file in root directory.
 */

import 'package:flutter/material.dart';

class LoginScreenIntroStyle {
  static const double _stdDeviceWidth = 375;

  final double _deviceWidth;
  final double _textScaleFactor;

  final Color _backgroundColor1;
  final Color _backgroundColor2;
  final Color _backgroundColor3;
  final Color _buttonColor;
  final Color _skipColor;
  final Color _dotColor;
  final Color _dotColorActive;

  final String _fontFamily;
  final String _fontFamilyTitle;

  LoginScreenIntroStyle(
      {MediaQueryData? mediaQueryData,
      Color backgroundColor1 = Colors.yellow,
      Color backgroundColor2 = Colors.yellow,
      Color backgroundColor3 = Colors.yellow,
      Color buttonColor = Colors.purple,
      Color skipColor = Colors.black,
      Color dotColor = Colors.white,
      Color dotColorActive = Colors.purple,
      String fontFamily = 'Arial',
      String fontFamilyTitle = 'Arial'})
      : _textScaleFactor = mediaQueryData?.textScaleFactor ?? 1.0,
        _deviceWidth = mediaQueryData?.size.width ?? 375,
        _backgroundColor1 = backgroundColor1,
        _backgroundColor2 = backgroundColor2,
        _backgroundColor3 = backgroundColor3,
        _buttonColor = buttonColor,
        _skipColor = skipColor,
        _dotColor = dotColor,
        _dotColorActive = dotColorActive,
        _fontFamily = fontFamily,
        _fontFamilyTitle = fontFamilyTitle {}

  double size(double raw) => (raw * (_deviceWidth / _stdDeviceWidth));

  double text(double raw) =>
      (raw * (_deviceWidth / _stdDeviceWidth)) * _textScaleFactor;

  Color get backgroundColor3 => _backgroundColor3;

  Color get backgroundColor2 => _backgroundColor2;

  Color get backgroundColor1 => _backgroundColor1;

  Color get skipColor => _skipColor;

  Color get buttonColor => _buttonColor;

  Color get dotColorActive => _dotColorActive;

  Color get dotColor => _dotColor;

  String get fontFamilyTitle => _fontFamilyTitle;

  String get fontFamily => _fontFamily;
}