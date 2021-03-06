import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:makeathon/src/agenda/agenda_item.dart';
import 'package:makeathon/src/providers/fab_provider.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

class AgendaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScrollController _hideButtonController = ScrollController();
    final fabVisibility = Provider.of<FabProvider>(context, listen: true);
    _hideButtonController.addListener(() {
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (fabVisibility.shouldShow) {
          fabVisibility.setShouldShow(false);
        }
      } else {
        if (!fabVisibility.shouldShow) {
          fabVisibility.setShouldShow(true);
        }
      }
    });
    return ListView(
      controller: _hideButtonController,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12, top: 16),
              child: Column(
                children: [
                  Text("27",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("MAR",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 12),
                child: Column(children: [
                  AgendaItem(
                    "Check-In",
                    "5:30 PM",
                    Icon(
                      MdiIcons.star,
                      color: Colors.greenAccent,
                    ),
                  ),
                  AgendaItem(
                    "Inaugral Ceremony",
                    "6:00 PM",
                    Icon(
                      Icons.mic,
                      color: Colors.blueAccent,
                    ),
                  ),
                  AgendaItem(
                    "Problem Statement Description",
                    "6:30 PM",
                    Icon(Icons.mic, color: Colors.blueAccent),
                  ),
                  AgendaItem(
                    "Component Form Submission",
                    "7:30 PM",
                    Icon(
                      Icons.format_list_bulleted,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                  AgendaItem(
                    "Making begins!",
                    "8:00 PM",
                    Icon(
                      MdiIcons.xml,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                  AgendaItem(
                    "Dinner",
                    "8:30 PM",
                    Icon(
                      Icons.restaurant_menu,
                      color: Colors.yellowAccent,
                    ),
                  ),
                ]),
              ),
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12, top: 16),
              child: Column(
                children: [
                  Text("28",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("MAR",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 12),
                child: Column(children: [
                  AgendaItem(
                    "Milestone Check 1",
                    "11:30 AM",
                    Icon(
                      Icons.filter_1,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                  AgendaItem(
                    "Snacks",
                    "6:00",
                    Icon(
                      Icons.free_breakfast,
                      color: Colors.yellowAccent,
                    ),
                  ),
                  AgendaItem(
                    "Milestone Check 2",
                    "8:30 PM",
                    Icon(
                      Icons.filter_2,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                ]),
              ),
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12, top: 16),
              child: Column(
                children: [
                  Text("29",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("MAR",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 12),
                child: Column(children: [
                  AgendaItem(
                    "Making Ends/Breakfast",
                    "8:00 AM",
                    Icon(
                      Icons.free_breakfast,
                      color: Colors.greenAccent
                      ,
                    ),
                  ),
                  AgendaItem(
                    "Top 10 results declared",
                    "10:00 AM",
                    Icon(
                      MdiIcons.scaleBalance,
                      color: Colors.blueAccent,
                    ),
                  ),
                  AgendaItem(
                    "Final Pitch",
                    "10:30 AM",
                    Icon(
                      MdiIcons.presentationPlay,
                      color: Colors.redAccent,
                    ),
                  ),
                  AgendaItem(
                    "Results declared",
                    "12:00 PM",
                    Icon(
                      MdiIcons.scaleBalance,
                      color: Colors.blueAccent,
                    ),
                  ),
                  AgendaItem(
                    "Closing ceremony",
                    "1:00 PM",
                    Icon(
                      MdiIcons.trophyVariant,
                      color: Colors.tealAccent,
                    ),
                  ),
                ]),
              ),
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
