// import 'dart:io';
// import 'package:android_intent_plus/android_intent.dart';
// import 'package:android_intent_plus/flag.dart';
// import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';
//
// class BatteryUtils {
//   static Future<void> disableBatteryOptimization(BuildContext context) async {
//     if (Platform.isAndroid) {
//       final status = await Permission.ignoreBatteryOptimizations.request();
//
//       if (status.isGranted) {
//         final intent = AndroidIntent(
//           action: 'android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS',
//           flags: [Flag.FLAG_ACTIVITY_NEW_TASK],
//         );
//         await intent.launch();
//       } else {
//         showSnackBar(context, "Permission denied! Please allow manually.");
//       }
//     } else {
//       showSnackBar(context, "Battery optimization settings are not available on iOS.");
//     }
//   }
//
//   /// **Handle Auto Start for Android**
//   static Future<void> enableAutoStart(BuildContext context) async {
//     if (Platform.isAndroid) {
//       final intent = AndroidIntent(
//         action: 'android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS',
//         data: 'package:your.package.name',
//         flags: [Flag.FLAG_ACTIVITY_NEW_TASK],
//       );
//       await intent.launch();
//     } else {
//       showSnackBar(context, "Auto Start is not available on iOS.");
//     }
//   }
//
//   /// **Show Alert for iOS Low Power Mode**
//   static void showLowPowerModeAlert(BuildContext context) {
//     if (Platform.isIOS) {
//       showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: Text("Low Power Mode Enabled"),
//             content: Text("Low Power Mode is on. Disable it in Settings > Battery for better performance."),
//             actions: [
//               TextButton(onPressed: () => Navigator.pop(context), child: Text("OK")),
//             ],
//           );
//         },
//       );
//     }
//   }
//
//   static void showSnackBar(BuildContext context, String message) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text(message)),
//     );
//   }
// }
