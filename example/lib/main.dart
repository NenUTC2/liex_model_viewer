import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:model_viewer/model_viewer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Model Viewer")),
        body: ModelViewer(
          backgroundColor: Colors.grey[300],
          //src: 'https://modelviewer.dev/shared-assets/models/Astronaut.glb',
          src: 'assets/LowerJawScan.gltf', // a bundled asset file
          alt: "A 3D model of an Astronaut",
          ar: false,
          autoRotate: false,
          cameraControls: true,
        ),
      ),
    );
  }
}
