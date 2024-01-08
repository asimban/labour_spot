

import 'package:flutter/material.dart';

class LabourspotChatScreen extends StatefulWidget {
  const LabourspotChatScreen({super.key});

  @override
  State<LabourspotChatScreen> createState() => _LabourspotChatScreenState();
}

class _LabourspotChatScreenState extends State<LabourspotChatScreen> {
  final TextEditingController _textController = TextEditingController();
  List<String> message = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title:  const Text("Zubair Ahmed",style: TextStyle(
          fontSize: 15,
          color: Colors.white,

        ),),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: message.length,
                  itemBuilder: (BuildContext context, int index){
                  return Text(message[index]);

                  } ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                SizedBox(
                  width: 270,
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      labelText: "Type a message",
                      labelStyle: TextStyle(color: Colors.grey.shade300),

                      enabledBorder: buildOutlineInputBorder(),
                      focusedBorder: buildOutlineInputBorder(),
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                      onPressed:(){
                        if (_textController.text.isNotEmpty)
                          setState(() {
                          {
                            message.add(_textController.text);
                            _textController.clear();
                          }
                        });

                      },
                      icon: Icon(Icons.send_sharp,color: Colors.blueAccent,size: 40,)
                  ),
                )
              ],

            ),

          ],
        ),
      ),

    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: const BorderSide(
        width: 1,
        color: Color(0xff007BFF),
      ),
    );
  }
}
