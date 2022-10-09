import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

class KakaoLoginScreen extends StatefulWidget {
  const KakaoLoginScreen({Key? key}) : super(key: key);

  @override
  State<KakaoLoginScreen> createState() => _KakaoLoginScreenState();
}

class _KakaoLoginScreenState extends State<KakaoLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CupertinoButton(
                child: Text('카카오 로그인'),
                onPressed: _loginButtonPressed,
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _loginButtonPressed() async {
    String authCode = await AuthCodeClient.instance.request();
    print('----');
    print(authCode);
    print('----');
  }
}
