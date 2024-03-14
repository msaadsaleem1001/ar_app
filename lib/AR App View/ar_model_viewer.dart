
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ARModelViewer extends StatefulWidget {
  final String displayModel;
  const ARModelViewer({super.key, required this.displayModel});

  @override
  State<ARModelViewer> createState() => _ARModelViewerState();
}

class _ARModelViewerState extends State<ARModelViewer> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.cyan,
        title: const Text('AR Model Viewer', style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              enableFeedback: false,
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.close, color: Colors.white, size: 30),
            ),
          ),
        ],
      ),
      body: ModelViewer(
        backgroundColor: const Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
        src: widget.displayModel,
        alt: 'A 3D Model',
        ar: true,
        autoRotate: true,
        disableZoom: false,
      ),
    );
  }
}
