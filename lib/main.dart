import 'package:flutter/material.dart';
import 'package:vitas/screens/authenticate/forgot_password.dart';
import 'package:vitas/screens/bet_screen.dart';
import 'package:vitas/screens/home_screen.dart';
import 'package:vitas/screens/loading_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  //initilization of Firebase app

  // other Firebase service initialization

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return StreamProvider<UserModel?>.value(
    //   initialData: null,
    //   value: AuthService().user,
    //   child: MaterialApp(
    //     home: Wrapper(),
    //   ),
    // );
    return MaterialApp(
      //home: ForgotPasswordPage(),
      //home: HomeScreen(),
      //home: BetScreen(),
      home: LoadingScreen(),
      //home: Home(),
      //home: QRCreateScreen(),
      // home: QRScannerScreen(),
      //home: CameraQR(),
    );
  }
}
