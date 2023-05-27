import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class TorchLite extends StatefulWidget {
  const TorchLite({super.key});
  @override
  State<TorchLite> createState() => _TorchLiteState();
}

class _TorchLiteState extends State<TorchLite> {
  final bgColor = const Color(0xff2C3333);
  final textColor = const Color(0xffE7F6F2);
  var isActive = false;
  var controller = TorchController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C3333),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Torch Light",
          style: TextStyle(color: textColor),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Column(
                children: [
                  /* mainAxisAlignment : MainAxisAlignment.center;*/
                  Image.asset(
                    isActive ? "assets/Sun.png" : "assets/Moon.png",
                    width: 250,
                    height: 250,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: CircleAvatar(
                      minRadius: 30,
                      maxRadius: 45,
                      child: Transform.scale(
                        scale: 1.5,
                        child: IconButton(
                          onPressed: () {
                            controller.toggle();
                            isActive = !isActive;
                            setState(() {});
                          },
                          icon: Icon(Icons.power_settings_new),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
          Text("Developed by Banu Prasath ",
              style: TextStyle(color: textColor, fontSize: 18.0)),
          /* SizedBox(
            height: size.height * 0.5,
          ),*/
        ],
      ),
    );
  }
}
/* appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: const Text("Torch Light"),
      ),*/
