import 'package:flutter/material.dart';

class ModalAlert extends StatefulWidget {
  @override
  _ModalAlertState createState() => _ModalAlertState();
}

class _ModalAlertState extends State<ModalAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modal Alert'),
      ),
      body: Container(
        width: 100,
        height: 100,
        color: Colors.lightGreen,
        child: TextButton(
          child: Text('Modal Alert'),
          onPressed: () {
            _modalBottom(context);
          },
        ),
      ),
    );
  }

  void _modalBottom(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext buildContext) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  IconButton(
                      icon: Icon(Icons.cancel),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                  TextField(),
                  SizedBox(),
                  TextField(),
                ],
              ),
            ),
          );
        });
  }
}
