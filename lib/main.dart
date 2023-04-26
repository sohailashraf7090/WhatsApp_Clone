import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:whatsapp_ui/screens/chat_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.teal),
        home: DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: AppBar(
                actions: [
                  const Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(Icons.wifi),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(Icons.sunny),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(Icons.search),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(Icons.camera_alt),
                  ),
                  PopupMenuButton(
                      // color: Colors.teal,
                      itemBuilder: (context) => [
                            const PopupMenuItem(
                              child: Text(
                                "GBsettings",
                                // style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const PopupMenuItem(
                              child: Text(
                                "Message Scheduler",
                                // style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const PopupMenuItem(
                              child: Text(
                                "Auto Reply",
                                // style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const PopupMenuItem(
                              child: Text(
                                "Restart WhatsApp",
                                // style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const PopupMenuItem(
                              child: Text(
                                "Message a number",
                                // style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const PopupMenuItem(
                              child: Text(
                                "Mass Message Sender",
                                // style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const PopupMenuItem(
                              child: Text(
                                "New group",
                                // style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const PopupMenuItem(
                              child: Text(
                                "New broadcast",
                                // style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const PopupMenuItem(
                              child: Text(
                                "Linkes devices",
                                // style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const PopupMenuItem(
                              child: Text(
                                "Starred messages",
                                // style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const PopupMenuItem(
                              child: Text(
                                "Settings",
                                // style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const PopupMenuItem(
                              child: Text(
                                "Logout",
                                // style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                ],
                bottom: const TabBar(tabs: [
                  Tab(
                    icon: Icon(Icons.people),
                  ),
                  Tab(
                    text: "Chats",
                  ),
                  Tab(
                    text: "Status",
                  ),
                  Tab(
                    text: "Calls",
                  ),
                ]),
                centerTitle: false,
                title: const Text(
                  "WhatsApp",
                ),
              ),
              body: TabBarView(children: [
                const Text(""),
                ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChatPage()));
                      },
                      child: const ListTile(
                        title: Text("Sohail Ahmad"),
                        subtitle: Text("Where are you from?"),
                        trailing: Text("12:18 Pm"),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://media.istockphoto.com/id/636379014/photo/hands-forming-a-heart-shape-with-sunset-silhouette.jpg?s=612x612&w=0&k=20&c=CgjWWGEasjgwia2VT7ufXa10azba2HXmUDe96wZG8F0="),
                        ),
                      ),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        title: const Text("Sohail Ahmad"),
                        subtitle: const Text("30 minutes ago"),
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.green, width: 3)),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://media.istockphoto.com/id/636379014/photo/hands-forming-a-heart-shape-with-sunset-silhouette.jpg?s=612x612&w=0&k=20&c=CgjWWGEasjgwia2VT7ufXa10azba2HXmUDe96wZG8F0="),
                          ),
                        ));
                  },
                ),
                ListView.builder(
                  itemCount: 24,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: const Text("Sohail Ahmad"),
                      subtitle: const Text("February 15, 11:43 AM"),
                      trailing: index / 2 == 4
                          ? const Icon(Icons.video_call)
                          : const Icon(Icons.call),
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://media.istockphoto.com/id/636379014/photo/hands-forming-a-heart-shape-with-sunset-silhouette.jpg?s=612x612&w=0&k=20&c=CgjWWGEasjgwia2VT7ufXa10azba2HXmUDe96wZG8F0="),
                      ),
                    );
                  },
                ),
              ]),
              floatingActionButton: SpeedDial(
                overlayColor: Colors.white,
                overlayOpacity: 0.0,
                animatedIcon: AnimatedIcons.menu_close,
                children: [
                  SpeedDialChild(
                      child: const Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.teal),
                  SpeedDialChild(
                      child: const Icon(
                        Icons.contact_page,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.teal),
                  SpeedDialChild(
                      child: const Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.teal),
                  SpeedDialChild(
                      child: const Icon(
                        Icons.alarm,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.teal),
                  SpeedDialChild(
                    child: const Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.teal,
                  ),
                ],
              ),
            )));
  }
}
