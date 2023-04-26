import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(65),
          child: AppBar(
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 10, top: 5),
                  child: Icon(
                    Icons.arrow_back,
                    size: 25,
                  ),
                )),
            leadingWidth: 30,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                    padding: EdgeInsets.only(left: 0, top: 8, right: 12),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/bgi.jpg"),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: RichText(
                    text: const TextSpan(
                        text: "Sohail Ahmad",
                        style: TextStyle(fontSize: 20),
                        children: [
                          TextSpan(
                              text: "\nBussines Account",
                              style: TextStyle(fontSize: 15))
                        ]),
                  ),
                ),
              ],
            ),
            actions: [
              const Icon(
                Icons.video_call_rounded,
                size: 35,
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.call,
              ),
              const SizedBox(
                width: 10,
              ),
              // Icon(Icons.more_vert)
              PopupMenuButton(
                  // color: Colors.teal,
                  itemBuilder: (context) => [
                        const PopupMenuItem(
                          child: Text(
                            "Contact info",
                            // style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const PopupMenuItem(
                          child: Text(
                            " Select Messages",
                            // style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const PopupMenuItem(
                          child: Text(
                            "Mute notification",
                            // style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const PopupMenuItem(
                          child: Text(
                            "Clear Messeges",
                            // style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const PopupMenuItem(
                          child: Text(
                            "Delete chat",
                            // style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const PopupMenuItem(
                          child: Text(
                            "Report",
                            // style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const PopupMenuItem(
                          child: Text(
                            "Block",
                            // style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ]),
            ],
          ),
        ),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bgi.jpg'),
                      fit: BoxFit.cover)),
            ),
            SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Center(
                      child: Container(
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.amber[50],
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 3,
                                  offset: Offset(2, 3))
                            ]),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            textAlign: TextAlign.center,
                            "Message templates ensure that business-initiated communication follows WhatsApp guidelines.",
                          ),
                        ),
                      ),
                    ),
                  ),
                  // const ChartCliper(),
                  const SizedBox(
                    height: 480,
                  ),
                  const BottomBar(),
                ],
              ),
            ),
          ],
        ));
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  FontAwesomeIcons.faceSmile,
                  size: 30,
                ),
              ),
              SizedBox(
                width: 205,
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Message",
                  ),
                ),
              ),
              const Icon(Icons.attach_file_rounded),
              const SizedBox(
                width: 5,
              ),
              const Icon(Icons.camera_alt_rounded),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const CircleAvatar(
          radius: 25,
          child: Icon(Icons.mic),
        )
      ],
    );
  }
}
