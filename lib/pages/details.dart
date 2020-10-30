import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MaterialColorDetails extends StatefulWidget {
  final int materialColorPaletteIndex;
  final String materialColorPaletteName;
  final Color materialColor;

  const MaterialColorDetails({
    Key key,
    this.materialColorPaletteIndex,
    this.materialColorPaletteName,
    this.materialColor,
  }) : super(key: key);

  @override
  _MaterialColorDetailsState createState() => _MaterialColorDetailsState();
}

class _MaterialColorDetailsState extends State<MaterialColorDetails> {
  final colors = <Color, Map<int, String>>{
    //-------------RED--------------//
    Colors.red[50]: {50: '#FFEBEE'},
    Colors.red[100]: {100: '#FFCDD2'},
    Colors.red[200]: {200: '#EF9A9A'},
    Colors.red[300]: {300: '#E57373'},
    Colors.red[400]: {400: '#EF5350'},
    Colors.red[500]: {500: '#F44336'},
    Colors.red[600]: {600: '#E53935'},
    Colors.red[700]: {700: '#D32F2F'},
    Colors.red[800]: {800: '#C62828'},
    Colors.red[900]: {900: '#B71C1C'},
    //-------------PINK-------------//
    Colors.pink[50]: {50: '#FCE4EC'},
    Colors.pink[100]: {100: '#F8BBD0'},
    Colors.pink[200]: {200: '#F48FB1'},
    Colors.pink[300]: {300: '#F06292'},
    Colors.pink[400]: {400: '#EC407A'},
    Colors.pink[500]: {500: '#E91E63'},
    Colors.pink[600]: {600: '#D81B60'},
    Colors.pink[700]: {700: '#C2185B'},
    Colors.pink[800]: {800: '#AD1457'},
    Colors.pink[900]: {900: '#880D4F'},
    //------------PURPLE------------//
    Colors.purple[50]: {50: '#F3E5F5'},
    Colors.purple[100]: {100: '#E1BEE7'},
    Colors.purple[200]: {200: '#CE93D8'},
    Colors.purple[300]: {300: '#BA68C8'},
    Colors.purple[400]: {400: '#AB47BC'},
    Colors.purple[500]: {500: '#9C27B0'},
    Colors.purple[600]: {600: '#8E24AA'},
    Colors.purple[700]: {700: '#7B1FA2'},
    Colors.purple[800]: {800: '#6A1B9A'},
    Colors.purple[900]: {900: '#4A148C'},
    //----------DEEP PURPLE---------//
    Colors.deepPurple[50]: {50: '#EDE7F6'},
    Colors.deepPurple[100]: {100: '#D1C4E9'},
    Colors.deepPurple[200]: {200: '#B39DDB'},
    Colors.deepPurple[300]: {300: '#9575CD'},
    Colors.deepPurple[400]: {400: '#7E57C2'},
    Colors.deepPurple[500]: {500: '#673AB7'},
    Colors.deepPurple[600]: {600: '#5E35B1'},
    Colors.deepPurple[700]: {700: '#512DA8'},
    Colors.deepPurple[800]: {800: '#4527A0'},
    Colors.deepPurple[900]: {900: '#311B92'},
    //------------INDIGO------------//
    Colors.indigo[50]: {50: '#E8EAF6'},
    Colors.indigo[100]: {100: '#C5CAE9'},
    Colors.indigo[200]: {200: '#9FA8DA'},
    Colors.indigo[300]: {300: '#7986CB'},
    Colors.indigo[400]: {400: '#5C6BC0'},
    Colors.indigo[500]: {500: '#3F51B5'},
    Colors.indigo[600]: {600: '#3949AB'},
    Colors.indigo[700]: {700: '#303F9F'},
    Colors.indigo[800]: {800: '#283593'},
    Colors.indigo[900]: {900: '#1A237E'},
    //-------------BLUE-------------//
    Colors.blue[50]: {50: '#E3F2FD'},
    Colors.blue[100]: {100: '#BBDEFB'},
    Colors.blue[200]: {200: '#90CAF9'},
    Colors.blue[300]: {300: '#64B5F6'},
    Colors.blue[400]: {400: '#42A5F5'},
    Colors.blue[500]: {500: '#2196F3'},
    Colors.blue[600]: {600: '#1E88E5'},
    Colors.blue[700]: {700: '#1976D2'},
    Colors.blue[800]: {800: '#1565C0'},
    Colors.blue[900]: {900: '#0D47A1'},
    //----------LIGHT BLUE----------//
    Colors.lightBlue[50]: {50: '#E1F5FE'},
    Colors.lightBlue[100]: {100: '#B3E5FC'},
    Colors.lightBlue[200]: {200: '#81D4FA'},
    Colors.lightBlue[300]: {300: '#4FC3F7'},
    Colors.lightBlue[400]: {400: '#29B6F6'},
    Colors.lightBlue[500]: {500: '#03A9F4'},
    Colors.lightBlue[600]: {600: '#039BE5'},
    Colors.lightBlue[700]: {700: '#0288D1'},
    Colors.lightBlue[800]: {800: '#0277BD'},
    Colors.lightBlue[900]: {900: '#01579B'},
    //-------------CYAN-------------//
    Colors.cyan[50]: {50: '#E0F7FA'},
    Colors.cyan[100]: {100: '#B2EBF2'},
    Colors.cyan[200]: {200: '#80DEEA'},
    Colors.cyan[300]: {300: '#4DD0E1'},
    Colors.cyan[400]: {400: '#26C6DA'},
    Colors.cyan[500]: {500: '#00BCD4'},
    Colors.cyan[600]: {600: '#00ACC1'},
    Colors.cyan[700]: {700: '#0097A7'},
    Colors.cyan[800]: {800: '#00838F'},
    Colors.cyan[900]: {900: '#00F0F4'},
    //-------------TEAL-------------//
    Colors.teal[50]: {50: '#E0F2F1'},
    Colors.teal[100]: {100: '#B2DFDB'},
    Colors.teal[200]: {200: '#80CBC4'},
    Colors.teal[300]: {300: '#4DB6AC'},
    Colors.teal[400]: {400: '#26A69A'},
    Colors.teal[500]: {500: '#009688'},
    Colors.teal[600]: {600: '#00897B'},
    Colors.teal[700]: {700: '#00796B'},
    Colors.teal[800]: {800: '#00695C'},
    Colors.teal[900]: {900: '#004D40'},
    //------------GREEN------------//
    Colors.green[50]: {50: '#E8F5E9'},
    Colors.green[100]: {100: '#C8E6C9'},
    Colors.green[200]: {200: '#A5D6A7'},
    Colors.green[300]: {300: '#81C784'},
    Colors.green[400]: {400: '#66BB6A'},
    Colors.green[500]: {500: '#4CAF50'},
    Colors.green[600]: {600: '#43A047'},
    Colors.green[700]: {700: '#388E3C'},
    Colors.green[800]: {800: '#2E7D32'},
    Colors.green[900]: {900: '#1B5E20'},
    //---------LIGHT GREEN---------//
    Colors.lightGreen[50]: {50: '#F1F8E9'},
    Colors.lightGreen[100]: {100: '#DCEDC8'},
    Colors.lightGreen[200]: {200: '#C5E1A5'},
    Colors.lightGreen[300]: {300: '#AED581'},
    Colors.lightGreen[400]: {400: '#9CCC65'},
    Colors.lightGreen[500]: {500: '#8BC34A'},
    Colors.lightGreen[600]: {600: '#7CB342'},
    Colors.lightGreen[700]: {700: '#689F38'},
    Colors.lightGreen[800]: {800: '#558B2F'},
    Colors.lightGreen[900]: {900: '#33691E'},
    //-------------LIME-------------//
    Colors.lime[50]: {50: '#F9FBE7'},
    Colors.lime[100]: {100: '#F0F4C3'},
    Colors.lime[200]: {200: '#E6EE9C'},
    Colors.lime[300]: {300: '#DCE775'},
    Colors.lime[400]: {400: '#D4E157'},
    Colors.lime[500]: {500: '#CDDC39'},
    Colors.lime[600]: {600: '#C0CA33'},
    Colors.lime[700]: {700: '#AFB42B'},
    Colors.lime[800]: {800: '#9E9D24'},
    Colors.lime[900]: {900: '#827717'},
    //------------YELLOW------------//
    Colors.yellow[50]: {50: '#FFFDE7'},
    Colors.yellow[100]: {100: '#FFF9C4'},
    Colors.yellow[200]: {200: '#FFF59D'},
    Colors.yellow[300]: {300: '#FFF176'},
    Colors.yellow[400]: {400: '#FFEE58'},
    Colors.yellow[500]: {500: '#FFEB3B'},
    Colors.yellow[600]: {600: '#FDD835'},
    Colors.yellow[700]: {700: '#FBC02D'},
    Colors.yellow[800]: {800: '#F9A825'},
    Colors.yellow[900]: {900: '#F57F17'},
    //------------AMBER------------//
    Colors.amber[50]: {50: '#FFF8E1'},
    Colors.amber[100]: {100: '#FFECB3'},
    Colors.amber[200]: {200: '#FFE082'},
    Colors.amber[300]: {300: '#FFD54F'},
    Colors.amber[400]: {400: '#FFCA28'},
    Colors.amber[500]: {500: '#FFC107'},
    Colors.amber[600]: {600: '#FFB300'},
    Colors.amber[700]: {700: '#FFA000'},
    Colors.amber[800]: {800: '#FF8F00'},
    Colors.amber[900]: {900: '#FF6F00'},
    //------------ORANGE------------//
    Colors.orange[50]: {50: '#FFF3E0'},
    Colors.orange[100]: {100: '#FF30B2'},
    Colors.orange[200]: {200: '#FFCC80'},
    Colors.orange[300]: {300: '#FFB74D'},
    Colors.orange[400]: {400: '#FFA726'},
    Colors.orange[500]: {500: '#FF9800'},
    Colors.orange[600]: {600: '#FB8C00'},
    Colors.orange[700]: {700: '#F57C00'},
    Colors.orange[800]: {800: '#EF6C00'},
    Colors.orange[900]: {900: '#E65100'},
    //----------DEEP ORANGE---------//
    Colors.deepOrange[50]: {50: '#FBE9E7'},
    Colors.deepOrange[100]: {100: '#FFCCBC'},
    Colors.deepOrange[200]: {200: '#FFAB91'},
    Colors.deepOrange[300]: {300: '#FF8A65'},
    Colors.deepOrange[400]: {400: '#FF7043'},
    Colors.deepOrange[500]: {500: '#FF5722'},
    Colors.deepOrange[600]: {600: '#F4511E'},
    Colors.deepOrange[700]: {700: '#E64A19'},
    Colors.deepOrange[800]: {800: '#D84315'},
    Colors.deepOrange[900]: {900: '#BF360C'},
    //------------BROWN------------//
    Colors.brown[50]: {50: '#EFEBE9'},
    Colors.brown[100]: {100: '#D7CCC8'},
    Colors.brown[200]: {200: '#BCAAA4'},
    Colors.brown[300]: {300: '#A1887F'},
    Colors.brown[400]: {400: '#8D6E63'},
    Colors.brown[500]: {500: '#795548'},
    Colors.brown[600]: {600: '#6D4C41'},
    Colors.brown[700]: {700: '#5D4037'},
    Colors.brown[800]: {800: '#4E342E'},
    Colors.brown[900]: {900: '#3E2723'},
    //-------------GREY-------------//
    Colors.grey[50]: {50: '#FAFAFA'},
    Colors.grey[100]: {100: '#F5F5F5'},
    Colors.grey[200]: {200: '#EEEEEE'},
    Colors.grey[300]: {300: '#E0E0E0'},
    Colors.grey[400]: {400: '#BDBDBD'},
    Colors.grey[500]: {500: '#9E9E9E'},
    Colors.grey[600]: {600: '#757575'},
    Colors.grey[700]: {700: '#616161'},
    Colors.grey[800]: {800: '#424242'},
    Colors.grey[900]: {900: '#212121'},
    //-----------BLUE GREY----------//
    Colors.blueGrey[50]: {50: '#ECEFF1'},
    Colors.blueGrey[100]: {100: '#CFD8DC'},
    Colors.blueGrey[200]: {200: '#B0BEC5'},
    Colors.blueGrey[300]: {300: '#90A4AE'},
    Colors.blueGrey[400]: {400: '#78909C'},
    Colors.blueGrey[500]: {500: '#607D8B'},
    Colors.blueGrey[600]: {600: '#546E7A'},
    Colors.blueGrey[700]: {700: '#455A64'},
    Colors.blueGrey[800]: {800: '#37474F'},
    Colors.blueGrey[900]: {900: '#263238'},
  };
  final int materialColorsCount = 19;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _detailsAppBar(),
        body: _detailsBody(),
      ),
    );
  }

  Widget _detailsAppBar() {
    return AppBar(
      backgroundColor: widget.materialColor,
      title: Text(
        '${widget.materialColorPaletteName}',
        style: TextStyle(fontWeight: FontWeight.w900),
      ),
      centerTitle: true,
    );
  }

  Widget _detailsBody() {
    return Center(
      child: ListView.builder(
        itemCount: (colors.length) ~/ materialColorsCount,
        itemBuilder: (context, index) {
          for (int i = 0; i < ((colors.length) ~/ materialColorsCount); i++) {
            return ListTile(
              tileColor: colors.keys.elementAt(((colors.keys.length ~/ 19) *
                      widget.materialColorPaletteIndex) +
                  index),
              title: Text(
                '${colors.values.elementAt(index).keys.elementAt(i)}',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                '${colors.values.elementAt(((colors.keys.length ~/ 19) * widget.materialColorPaletteIndex) + index).values.elementAt(i)}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(
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
                              color: colors.keys.elementAt(
                                  ((colors.keys.length ~/ 19) *
                                          widget.materialColorPaletteIndex) +
                                      index),
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
            );
          }
        },
      ),
    );
  }
}
