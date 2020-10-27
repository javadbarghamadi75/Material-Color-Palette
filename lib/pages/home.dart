import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'details.dart';

class MaterialColorPalette extends StatefulWidget {
  @override
  _MaterialColorPaletteState createState() => _MaterialColorPaletteState();
}

class _MaterialColorPaletteState extends State<MaterialColorPalette> {
  final colors = <MaterialColor, Map<String, String>>{
    Colors.red: {'Red': '#F44336'},
    Colors.pink: {'Pink': '#E91E63'},
    Colors.purple: {'Purple': '#9c27b0'},
    Colors.deepPurple: {'Deep Purple': '#673AB7'},
    Colors.indigo: {'Indigo': '#3F51B5'},
    Colors.blue: {'Blue': '#2196F3'},
    Colors.lightBlue: {'Light Blue': '#03A9F4'},
    Colors.cyan: {'Cyan': '#00BCD4'},
    Colors.teal: {'Teal': '#009688'},
    Colors.green: {'Green': '#4CAF50'},
    Colors.lightGreen: {'Light Green': '#8BC34A'},
    Colors.lime: {'Lime': '#CDDC39'},
    Colors.yellow: {'Yellow': '#FFEB3B'},
    Colors.amber: {'Amber': '#FFC107'},
    Colors.orange: {'Orange': '#FF9800'},
    Colors.deepOrange: {'Deep Orange': '#FF5722'},
    Colors.brown: {'Brown': '#79FF48'},
    Colors.grey: {'Grey': '#9E9E9E'},
    Colors.blueGrey: {'Blue Grey': '#607D8B'},
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _homeAppBar(),
        body: _homeBody(),
      ),
    );
  }

  Widget _homeAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text(
        'Material Colors',
        style: TextStyle(fontWeight: FontWeight.w900),
      ),
      centerTitle: true,
    );
  }

  Widget _homeBody() {
    return Center(
      child: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          for (int i = 0; i < colors.length; i++) {
            return ListTile(
              tileColor: colors.keys.elementAt(index),
              title: Text(
                '${colors.values.elementAt(index).keys.elementAt(i)}',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                '${colors.values.elementAt(index).values.elementAt(i)}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.copy,
                      color: Colors.black87,
                    ),
                    onPressed: () {
                      Clipboard.setData(
                        ClipboardData(
                          text:
                              '${colors.values.elementAt(index).values.elementAt(i)}',
                        ),
                      );
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          content: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${colors.values.elementAt(index).values.elementAt(i)}',
                                style: TextStyle(
                                  color: colors.keys.elementAt(index),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                ' copied to clipboard!',
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.palette,
                      color: Colors.black87,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MaterialColorDetails(
                              materialColorPaletteIndex: index,
                              materialColorPaletteName: colors.values
                                  .elementAt(index)
                                  .keys
                                  .elementAt(i),
                              materialColor: colors.keys.elementAt(index),
                            ),
                          ));
                    },
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
