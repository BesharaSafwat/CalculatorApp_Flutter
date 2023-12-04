import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String finalresult= '0' ;
  String operation= '0' ;
  String mathOp = '=';
  String mode = 'norm';

  void writeOperation(){
  }
  // void add(){
  //   setState(() {
  //     operation
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body:
      Container(
        decoration: BoxDecoration(
          color: Colors.black87,
        ),
        child: Column(
          children: [
            Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.black54
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  '$operation',
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.visible,
                                ),
                              )
                            ],
                              ),
                        ),
              ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black38,
                          ),
                          child: Row(
                            children: [
                              Text(
                                  '$finalresult',
                                  style: const TextStyle(
                                    fontSize: 24.0,
                                    color: Colors.white,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: TextButton(
                                  onPressed: (){
                                    setState(() {
                                      mode = 'trig';
                                      if (operation =='0'){
                                        operation =  'Sin';
                                        mathOp = 'Sin';
                                      }
                                      else {
                                        operation = '${operation}Sin';
                                        mathOp = 'Sin';
                                      }
                                    });
                                    } ,
                                  child: const Text(
                                    'Sin',
                                     style: TextStyle(
                                       fontSize: 18.0,
                                     ),
                                  ),
                                  ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: TextButton(
                                    child: const Text(
                                        'Cos',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        mode = 'trig';
                                        if (operation =='0'){
                                          operation =  'Cos';
                                          mathOp = 'Cos';
                                        }else{
                                          operation = '${operation}Cos';
                                          mathOp = 'Cos';
                                        }
                                      });
                                    }
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: TextButton(
                                    child: const Text(
                                        'Tan',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        mode = 'trig';
                                        if (operation =='0'){
                                          operation =  'Tan';
                                          mathOp = 'Tan';
                                        }
                                        else {
                                          operation = '${operation}Tan';
                                          mathOp = 'Tan';
                                        }
                                      });
                                    }
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: TextButton(
                                    child: const Text(
                                        'C',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    onPressed: (){
                                      setState(
                                        () {
                                          operation = '0';
                                          finalresult = '0';
                                          mathOp = '=';
                                          mode ='';
                                      });
                                    }
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: IconButton(
                                    icon: Icon(
                                    Icons.highlight_remove,
                                    size: 20,
                                    ),
                                    // const Text(
                                    //   'X',
                                    //   style: TextStyle(
                                    //     fontSize: 18.0,
                                    //   ),
                                    // ),
                                    onPressed: (){
                                      setState(() {
                                            operation = operation.substring(0, operation.length - 1);
                                      });
                                    }
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: TextButton(
                                    child: const Text(
                                        '1/x',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    onPressed: (){
                                      mathOp = 'inv';
                                    }
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: TextButton(
                                    child: const Text(
                                        'x^2',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    onPressed: (){
                                      mathOp = 'pow';
                                    }
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: TextButton(
                                    child: const Text(
                                        'sqrt',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    onPressed: (){
                                      mathOp = 'sqrt';
                                    }
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: TextButton(
                                    child: const Text(
                                        '÷',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    onPressed: (){
                                      setState(() {
                                      if (operation == '0'){
                                        operation =  '÷';
                                      }
                                      else{
                                        operation = '${operation}÷';
                                        mathOp = '÷';
                                      }
                                    });}
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                              ),

                                child: TextButton(
                                    child: const Text(
                                        '7',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        if (operation == '0'){
                                          operation =  '7';
                                        }
                                        else{
                                          operation = '${operation}7';
                                        }
                                      });
                                    }
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: TextButton(
                                    child: const Text(
                                        '8',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        if (operation == '0'){
                                          operation =  '8';
                                        }
                                        else{
                                          operation = '${operation}8';
                                        }
                                      });
                                    }
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: TextButton(
                                    child: const Text(
                                        '9',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        if (operation == '0'){
                                          operation =  '9';
                                        }
                                        else{
                                          operation = '${operation}9';
                                        }
                                      });
                                    }
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: TextButton(
                                    child: const Text(
                                        '×',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        if (operation == '0'){
                                          operation =  '×';
                                        }
                                        else{
                                          operation = '${operation}×';
                                          mathOp = '×';
                                        }
                                      });
                                    }
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: TextButton(
                                  // style:  ButtonStyle(
                                  //     backgroundColor: MaterialStatePropertyAll<Color>(Colors.grey.shade400),
                                  //     // const MaterialStatePropertyAll(
                                  //     //     CircleBorder(
                                  //     //         side: BorderSide(
                                  //     //             width: 1.0,
                                  //     //             color: Colors.transparent
                                  //     //         ))),
                                  // ),
                                    child: const Text(
                                        '4',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        if (operation == '0'){
                                          operation =  '4';
                                        }
                                        else{
                                          operation = '${operation}4';
                                        }
                                      });
                                    }
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: TextButton(
                                    child: const Text(
                                        '5',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        if (operation == '0'){
                                          operation =  '5';
                                        }
                                        else{
                                          operation = '${operation}5';
                                        }
                                      });
                                    }
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: TextButton(
                                    child: const Text(
                                        '6',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        if (operation == '0'){
                                          operation =  '6';
                                        }
                                        else{
                                          operation = '${operation}6';
                                        }
                                      });
                                    }
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: TextButton(
                                    child: const Text(
                                        '-',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    onPressed: (){
                                      setState(() {
                                      if (operation == '0'){
                                        operation =  '-';
                                      }
                                      else{
                                        operation = '${operation}-';
                                        mathOp = '-';
                                      }
                                    });
                                    }
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: TextButton(
                                    child: const Text(
                                        '1',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        if (operation == '0'){
                                          operation =  '1';
                                        }
                                        else{
                                          operation = '${operation}1';
                                        }
                                      });
                                    }
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: TextButton(
                                    child: const Text(
                                        '2',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        if (operation == '0'){
                                          operation =  '2';
                                        }
                                        else{
                                          operation = '${operation}2';
                                        }
                                      });
                                    }
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: TextButton(
                                    child: const Text(
                                        '3',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        if (operation == '0'){
                                          operation =  '3';
                                        }
                                        else{
                                          operation = '${operation}3';
                                        }
                                      });
                                    }
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: TextButton(
                                    child: const Text(
                                        '+',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        if (operation == '0'){
                                          operation =  '+';
                                        }
                                        else{
                                          operation = '${operation}+';
                                          mathOp = '+';
                                        }
                                      });
                                    }
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: TextButton(
                                    child: const Text(
                                        '+/-',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        if (operation == '0'){
                                          operation =  '-';
                                        }
                                        else{
                                          operation = '-${operation}';
                                        }
                                      });
                                    }
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: TextButton(
                                    child: const Text(
                                        '0',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    onPressed: (){
                                      setState(() {
                                      if (operation == '0'){
                                        operation =  '0';
                                      }
                                      else{
                                        operation = '${operation}0';
                                      }
                                    });
                                    }
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: TextButton(
                                    child: const Text(
                                        '.',
                                      style: TextStyle(
                                        fontSize: 24.0,
                                      ),
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        if (operation == '0'){
                                          operation =  '0.0';
                                        }
                                        else{
                                          operation = '${operation}.';
                                        }
                                      });
                                    }
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: TextButton(
                                    child: const Text(
                                        '=',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        double answer = 0;

                                        if (operation == '0'){
                                          operation =  '0';
                                        }
                                        else if (mathOp == '='){
                                          finalresult = operation;
                                        }
                                        else {
                                          if (mode == 'trig') {
                                            List listOperand = operation.split(mathOp);
                                            switch(mathOp)
                                            {
                                              case 'Sin':
                                                double angle = double.parse(listOperand[1]);
                                                answer = sin(angle*pi/180);
                                                finalresult = answer.toString();
                                              case 'Cos':
                                                double angle = double.parse(listOperand[1]);
                                                answer = cos(angle*pi/180);
                                                finalresult = answer.toString();
                                              case 'Tan':
                                                double angle = double.parse(listOperand[1]);
                                                if ((angle.toInt() == 90) || (angle.toInt() == 270)){
                                                  finalresult = 'Math Error!';
                                                }
                                                answer = tan(angle*pi/180);
                                                finalresult = answer.toString();
                                            }
                                          }
                                          else {
                                            List listOperand = operation.split(mathOp);
                                            double op1 = double.parse(listOperand[0]);
                                            double op2 = double.parse(listOperand[1]);

                                            switch (mathOp) {
                                              case '+' :
                                                answer = op1 + op2;
                                              case '-':
                                                answer = op1 - op2;
                                              case '×':
                                                answer = op1 * op2;
                                              case '÷' :
                                                answer = op1 / op2;

                                              default:
                                                finalresult = 'Error!!!!!!!';
                                            }
                                            finalresult = answer.toString();
                                          }
                                        }
                                      });
                                    }
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
          ],
        ),
      ),
    );
  }
}
