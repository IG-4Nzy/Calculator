// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String result = '0';
  int num1 = 0;
  int num2 = 0;
  // double res = 0.0;
  String num2Str = '';
  String num1Str = '';
  String op = '';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double zeroButtonSize = (75 * 2) + ((width - (75 * 4)) / 5);
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.amber[900],
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Calculator'),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    result,
                    style: const TextStyle(color: Colors.white, fontSize: 52),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                      color: Colors.grey[700]),
                  width: 75,
                  height: 75,
                  child: TextButton(
                    onPressed: () {
                      ButtonClick('AC');
                    },
                    child: const Text(
                      'AC',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(32)),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                      color: Colors.grey[700]),
                  width: 75,
                  height: 75,
                  child: TextButton(
                    onPressed: () {
                      ButtonClick('+/-');
                    },
                    child: const Text(
                      '+/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(32)),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                      color: Colors.grey[700]),
                  width: 75,
                  height: 75,
                  child: TextButton(
                    onPressed: () {
                      ButtonClick('%');
                    },
                    child: const Text(
                      '%',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(32)),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromARGB(255, 255, 166, 0)),
                  width: 75,
                  height: 75,
                  child: IconButton(
                    onPressed: () {
                      ButtonClick('/');
                    },
                    icon: const Text(
                      '/',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(32)),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromARGB(255, 39, 39, 39)),
                  width: 75,
                  height: 75,
                  child: TextButton(
                    onPressed: () {
                      ButtonClick('7');
                    },
                    child: const Text(
                      '7',
                      style: TextStyle(
                          color: Color.fromARGB(255, 241, 241, 241),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(32)),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromARGB(255, 39, 39, 39)),
                  width: 75,
                  height: 75,
                  child: TextButton(
                    onPressed: () {
                      ButtonClick('8');
                    },
                    child: const Text(
                      '8',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(32)),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromARGB(255, 39, 39, 39)),
                  width: 75,
                  height: 75,
                  child: TextButton(
                    onPressed: () {
                      ButtonClick('9');
                    },
                    child: const Text(
                      '9',
                      style: TextStyle(
                          color: Color.fromARGB(255, 247, 247, 247),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(32)),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromARGB(255, 255, 166, 0)),
                  width: 75,
                  height: 75,
                  child: IconButton(
                    onPressed: () {
                      ButtonClick('X');
                    },
                    icon: const Text(
                      'X',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(32)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromARGB(255, 39, 39, 39)),
                  width: 75,
                  height: 75,
                  child: TextButton(
                    onPressed: () {
                      ButtonClick('4');
                    },
                    child: const Text(
                      '4',
                      style: TextStyle(
                          color: Color.fromARGB(255, 241, 241, 241),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(32)),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromARGB(255, 39, 39, 39)),
                  width: 75,
                  height: 75,
                  child: TextButton(
                    onPressed: () {
                      ButtonClick('5');
                    },
                    child: const Text(
                      '5',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(32)),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromARGB(255, 39, 39, 39)),
                  width: 75,
                  height: 75,
                  child: TextButton(
                    onPressed: () {
                      ButtonClick('6');
                    },
                    child: const Text(
                      '6',
                      style: TextStyle(
                          color: Color.fromARGB(255, 247, 247, 247),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(32)),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromARGB(255, 255, 166, 0)),
                  width: 75,
                  height: 75,
                  child: IconButton(
                    onPressed: () {
                      ButtonClick('-');
                    },
                    icon: const Text(
                      '-',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(32)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromARGB(255, 39, 39, 39)),
                  width: 75,
                  height: 75,
                  child: TextButton(
                    onPressed: () {
                      ButtonClick('1');
                    },
                    child: const Text(
                      '1',
                      style: TextStyle(
                          color: Color.fromARGB(255, 241, 241, 241),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(32)),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromARGB(255, 39, 39, 39)),
                  width: 75,
                  height: 75,
                  child: TextButton(
                    onPressed: () {
                      ButtonClick('2');
                    },
                    child: const Text(
                      '2',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(32)),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromARGB(255, 39, 39, 39)),
                  width: 75,
                  height: 75,
                  child: TextButton(
                    onPressed: () {
                      ButtonClick('3');
                    },
                    child: const Text(
                      '3',
                      style: TextStyle(
                          color: Color.fromARGB(255, 247, 247, 247),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(32)),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromARGB(255, 255, 166, 0)),
                  width: 75,
                  height: 75,
                  child: IconButton(
                    onPressed: () {
                      ButtonClick('+');
                    },
                    icon: const Text(
                      '+',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(32)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromARGB(255, 39, 39, 39)),
                  width: zeroButtonSize,
                  height: 75,
                  child: TextButton(
                    onPressed: () {
                      ButtonClick('0');
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                        Text(
                          '0',
                          style: TextStyle(
                              color: Color.fromARGB(255, 241, 241, 241),
                              fontSize: 32,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(32)),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromARGB(255, 39, 39, 39)),
                  width: 75,
                  height: 75,
                  child: TextButton(
                    onPressed: () {
                      ButtonClick('.');
                    },
                    child: const Text(
                      '.',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(32)),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromARGB(255, 255, 166, 0)),
                  width: 75,
                  height: 75,
                  child: IconButton(
                    onPressed: () {
                      ButtonClick('=');
                    },
                    icon: const Text(
                      '=',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(32)),
                  ),
                )
              ],
            ),
          ],
        ));
  }

  void ButtonClick(String value) {
    double resDouble;
    int res;
    if (result == '0') {
      result = '';
    }
    if ('0123456789.'.contains(value)) {
      if (op == '+' || op == '-' || op == 'X' || op == '/') {
        setState(() {
          num2Str += value;
          result = num2Str;
        });
      } else {
        setState(() {
          result += value;
          num1Str = result;
        });
      }
    }

    if (value == '/' || value == 'X' || value == '-' || value == '+') {
      if (op == '+' || op == '-' || op == 'X' || op == '/') {
        setState(() {
          switch (op) {
            case '+':
              if (num1Str.contains('.') || num2Str.contains('.')) {
                double resDouble =
                    double.parse(num1Str) + double.parse(num2Str);
                setState(() {
                  result = resDouble.toString();
                  op = '';
                  num2Str = '';
                });
              } else {
                res = int.parse(num1Str) + int.parse(num2Str);
                setState(() {
                  result = res.toString();
                  op = '';
                  num2Str = '';
                });
              }
              break;
            case '-':
              if (num1Str.contains('.') || num2Str.contains('.')) {
                double resDouble =
                    double.parse(num1Str) - double.parse(num2Str);
                setState(() {
                  result = resDouble.toStringAsFixed(1);
                  op = '';
                  num2Str = '';
                });
              } else {
                res = int.parse(num1Str) - int.parse(num2Str);
                setState(() {
                  result = res.toString();
                  op = '';
                  num2Str = '';
                });
              }
              break;
            case 'X':
              if (num1Str.contains('.') || num2Str.contains('.')) {
                double resDouble =
                    double.parse(num1Str) * double.parse(num2Str);
                setState(() {
                  result = resDouble.toStringAsFixed(1);
                  op = '';
                  num2Str = '';
                });
              } else {
                res = int.parse(num1Str) * int.parse(num2Str);
                setState(() {
                  result = res.toString();
                  op = '';
                  num2Str = '';
                });
              }
              break;
            case '/':
              resDouble = int.parse(num1Str) / int.parse(num2Str);
              setState(() {
                result = resDouble.toString();
                op = '';
                num2Str = '';
              });
              break;
            case '%':
              res = int.parse(num1Str) % int.parse(num2Str);
              setState(() {
                result = res.toString();
                op = '';
                num2Str = '';
              });
              break;
          }
        });
        op = value;
        print('op now is $op');
        num1Str = result;
      } else {
        setState(() {
          op = value;
          num1Str = result;
        });
      }
    }
    if (value == 'AC') {
      setState(() {
        result = '0';
        num1Str = '';
        num2Str = '';
        op = '';
      });
    }
    if (value == '=') {
      switch (op) {
        case '+':
          if (num1Str.contains('.') || num2Str.contains('.')) {
            double resDouble = double.parse(num1Str) + double.parse(num2Str);
            setState(() {
              result = resDouble.toString();
              op = '';
              num2Str = '';
            });
          } else {
            res = int.parse(num1Str) + int.parse(num2Str);
            setState(() {
              result = res.toString();
              op = '';
              num2Str = '';
            });
          }
          break;
        case '-':
          if (num1Str.contains('.') || num2Str.contains('.')) {
            double resDouble = double.parse(num1Str) - double.parse(num2Str);
            setState(() {
              result = resDouble.toStringAsFixed(1);
              op = '';
              num2Str = '';
            });
          } else {
            res = int.parse(num1Str) - int.parse(num2Str);
            setState(() {
              result = res.toString();
              op = '';
              num2Str = '';
            });
          }
          break;
        case 'X':
          if (num1Str.contains('.') || num2Str.contains('.')) {
            double resDouble = double.parse(num1Str) * double.parse(num2Str);
            setState(() {
              result = resDouble.toStringAsFixed(1);
              op = '';
              num2Str = '';
            });
          } else {
            res = int.parse(num1Str) * int.parse(num2Str);
            setState(() {
              result = res.toString();
              op = '';
              num2Str = '';
            });
          }
          break;
        case '/':
          resDouble = int.parse(num1Str) / int.parse(num2Str);
          setState(() {
            result = resDouble.toString();
            op = '';
            num2Str = '';
          });
          break;
        case '%':
          res = int.parse(num1Str) % int.parse(num2Str);
          setState(() {
            result = res.toString();
            op = '';
            num2Str = '';
          });
          break;
      }
    }
    if (value == '+/-') {
      int ans;
      double ansDouble;
      if (result.contains('.')) {
        ansDouble = double.parse(result);
        if (ansDouble >= 0) {
          ansDouble = -ansDouble;
          setState(() {
            result = ansDouble.toString();
          });
          if (op == '+' || op == '-' || op == 'X' || op == '/') {
            num2Str = result;
          }
        } else {
          ansDouble = -ansDouble;
          setState(() {
            result = ansDouble.toString();
          });
          if (op == '+' || op == '-' || op == 'X' || op == '/') {
            num2Str = result;
          }
        }
      } else {
        ans = int.parse(result);
        if (ans >= 0) {
          ans = -ans;
          setState(() {
            result = ans.toString();
          });
          if (op == '+' || op == '-' || op == 'X' || op == '/') {
            num2Str = result;
          }
        } else if (ans < 0) {
          ans = -ans;
          setState(() {
            result = ans.toString();
          });
          if (op == '+' || op == '-' || op == 'X' || op == '/') {
            num2Str = result;
          }
        }
      }
    }

    if (value == '%') {
      double divis;
      divis = double.parse(result) / 100;
      setState(() {
        result = divis.toString();
      });
    }
  }
}
