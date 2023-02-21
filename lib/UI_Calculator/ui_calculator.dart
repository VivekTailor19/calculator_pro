import 'package:flutter/material.dart';

class UI_Calculaor extends StatefulWidget {
  const UI_Calculaor({Key? key}) : super(key: key);

  @override
  State<UI_Calculaor> createState() => _UI_CalculaorState();
}
dynamic value = 0;
class _UI_CalculaorState extends State<UI_Calculaor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment:MainAxisAlignment.spaceBetween, // 900
          children: [
            Container(
              height: 250,
              color: Colors.lightBlueAccent,
            ),
            Container(
              height: 500,
              width: double.infinity,
              color: Color(0xff2E2D32),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Container(
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 50,
                          width: 200,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                             // border: Border.all(color: Colors.green),
                              color: Color(0xffFF5A66),borderRadius: BorderRadius.all(Radius.circular(25)) ),
                          child: Text("AC",style: TextStyle(color: Colors.white,fontSize: 25),),),

                        Expanded(child: Button_Color("%", Color(0xff929292))),
                        Expanded(child: Button_Color("/", Color(0xffFF5A66))),
                      ],
                    ),
                  ), // First Row AC % /
                  SizedBox(height: 10,),
                  Container(
                    child: Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children:
                            [
                              Expanded(child: InkWell(onTap: () {
                                setState(() {
                                  value = 7;
                                });
                              },
                                  child: Number_Color("7",Alignment.center))),
                              Expanded(child: InkWell(onTap: () {
                                setState(() {
                                  value = 4;
                                });
                              },
                                  child: Number_Color("4",Alignment.center))),
                              Expanded(child: InkWell(onTap: () {
                                setState(() {
                                  value = 1;
                                });
                              },
                                  child: Number_Color("1",Alignment.center))),
                              Expanded(child: InkWell(onTap: () {
                                setState(() {
                                  value = 00;
                                });
                              },
                                  child: Number_Color("00",Alignment.center))),
                            ],),
                          ),  // 7 4 1 00
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children:
                              [
                                Expanded(child: InkWell(onTap: () {
                                  setState(() {
                                    value = 8;
                                  });
                                },
                                    child: Number_Color("8",Alignment.center))),
                                Expanded(child: InkWell(onTap: () {
                                  setState(() {
                                    value = 5;
                                  });
                                },
                                    child: Number_Color("5",Alignment.center))),
                                Expanded(child: InkWell(onTap: () {
                                  setState(() {
                                    value = 2;
                                  });
                                },
                                    child: Number_Color("2",Alignment.center))),
                                Expanded(child: InkWell(onTap: () {
                                  setState(() {
                                    value = 0;
                                  });
                                },
                                    child: Number_Color("0",Alignment.center))),
                              ],),
                          ),  // 8 5 2 0
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:
                            [
                              Expanded(child: InkWell(onTap: () {
                                setState(() {
                                  value = 9;
                                });
                              },
                                  child: Number_Color("9",Alignment.center))),
                              Expanded(child: InkWell(onTap: () {
                                setState(() {
                                  value = 6;
                                });
                              },
                                  child: Number_Color("6",Alignment.center))),
                              Expanded(child: InkWell(onTap: () {
                                setState(() {
                                  value = 3;
                                });
                              },
                                  child: Number_Color("3",Alignment.center))),
                              Expanded(child: InkWell(onTap: () {
                                setState(() {
                                  value = ".";
                                });
                              },
                                  child: Number_Color(".",Alignment.center))),
                            ],),
                          ),  // 9 6 3 .
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children:
                            [
                             Expanded(child: Button_Color("*", Color(0xffFF5A66))),
                              Expanded(child: Button_Color("-", Color(0xffFF5A66))),
                              Expanded(child: Button_Color("+", Color(0xffFF5A66))),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      //border: Border.all(color: Colors.green),
                                      shape: BoxShape.circle,color: Color(0xffFF5A66)),
                                  child: Text("=",style: TextStyle(color: Colors.white,fontSize: 25),),),
                              ),


                              
                            ],),
                          ),  // * - + =
                        ],
                      ),
                    ),

                  ),          // Second Numbers 0123456

                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget Number_Color(String num,Alignment aln)
  {
    return Container(
      height: 50,
      width: 50,

      alignment: aln,
      decoration: BoxDecoration(
          //border: Border.all(color: Colors.green)
       ),

      child: Text("$num",style: TextStyle(color: Colors.white,fontSize: 20),),

    );
  }
  Widget Button_Color(String num,Color c1)
  {
    return Container(
      height: 50,
      width: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          //border: Border.all(color: Colors.green)
      ),

      child: Text("$num",style: TextStyle(color: c1,fontSize: 20),),

    );
  }

 }
