// import 'dart:async';
//
// import 'package:flutter/material.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';
// //
// // import 'Register.dart';
// // import 'constants.dart';
// // import 'loginOrSignup.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => SplashScreenState();
// }
//
// class SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState(){
//     super.initState();
//     // Timer(
//     //   const Duration(seconds: 3),
//     //     ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const LoginOrSignup()))
//     // );
//   }
//   Widget build(BuildContext context) {
//     // ignore: prefer_const_constructors
//     return Scaffold(
//       // backgroundColor: Colors.orange,
//       body: Container(
//         decoration:   BoxDecoration(
//             // gradient: authGradient,
//         ),
//         child: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.end,
//
//           children: [
//             Image.asset('assets/images/tyre.png', scale: 3.5),
//             Container(
//                 margin:  const EdgeInsets.symmetric(vertical: 30),
//                 child:  Text(
//                   'RAKNA',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 50,
//                       fontWeight: FontWeight.bold),
//                 )),
//              SizedBox(
//               height: 150,
//             ),
//
//              Text(
//               'Erken 3edel lagibak',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold),
//             ),
//              SizedBox(
//               height: 20,
//             ),
//           ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:processs_scheduling/globale%20variables.dart';
import 'package:processs_scheduling/screen2.dart';

class screen1 extends StatefulWidget {
  @override
  _screen1State createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Input Text Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _textEditingController,
              // controller: TextEditingController(text: processCount.toString()),
              decoration: const InputDecoration(
                labelText: 'Number of process',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                processCount = _textEditingController.text;
                print('Input text: $processCount');
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>screen2()));
                // String inputText = _textEditingController.text;
                // Do something with the input text

              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
