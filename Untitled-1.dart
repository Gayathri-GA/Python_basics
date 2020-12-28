// showDialog(
//     context: context,
//     barrierDismissible: false,
//     builder: (context) {
//       return AlertDialog(
//         title: Text("Give the code?"),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             TextField(
//               controller: _codeController,
//             ),
//           ],
//         ),
//         actions: <Widget>[
//           FlatButton(
//             child: Text("Confirm"),
//             textColor: Colors.white,
//             color: Colors.blue,
//             onPressed: () async {
//               final code = _codeController.text.trim();
//               AuthCredential credential = PhoneAuthProvider.getCredential(
//                   verificationId: verificationId, smsCode: code);
//               FirebaseUser user = (await _auth.signInWithCredential(credential)).user;
//               // AuthResult result = await _auth.signInWithCredential(credential);

//               // FirebaseUser user = result.user;

//               if (user != null) {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => HomeScreen(
//                               user: user,
//                             )));
//               } else {
//                 print("Error");
//               }
//             },
//           )
//         ],
//       );
//     });
