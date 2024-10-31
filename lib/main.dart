import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tho_dev_vee/login_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  if(kIsWeb){
    await Firebase.initializeApp(options: const FirebaseOptions(apiKey: "AIzaSyDxxNQTkq9fOS7EakOAigXGPIPlcFcRM4c",
  authDomain: "thodev-11377.firebaseapp.com",
  projectId: "thodev-11377",
  storageBucket: "thodev-11377.appspot.com",
  messagingSenderId: "740238905897",
  appId: "1:740238905897:web:bb3244c7cb959e79bfc238"));
  }else{
    await Firebase.initializeApp();
  }
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

