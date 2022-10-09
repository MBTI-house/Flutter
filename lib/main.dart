import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:mbti/screen/kakao_login_screen.dart';

void main() {
  KakaoSdk.init(nativeAppKey: '9490a56f038afd619249c2b1fc678f54');
  runApp(
    MaterialApp(
      home: KakaoLoginScreen(),
    ),
  );
}
