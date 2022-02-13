import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xo_test_design/color.dart' as colors;
class TestFile extends StatefulWidget {
  const TestFile({Key? key}) : super(key: key);
  @override
  State<TestFile> createState() => _TestFileState();
}
class _TestFileState extends State<TestFile>
{
  @override
  void initState()
  {
    super.initState();
  }
  @override
  Widget build(BuildContext context)
  {
    double boardWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:Colors.lightBlue,
      body:buildBody(context, boardWidth),
    );
  }
  Widget buildBody(context,boardWidth)=>Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children:
    [
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text(
          "It's turn".toUpperCase(),
          style: TextStyle(
            color: colors.secondColor,
            fontSize: 45.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const SizedBox(height: 10.0,),
      Container(
        height: boardWidth,
        width: boardWidth,
        child: GridView.count(
          crossAxisCount: 3,
          padding:const EdgeInsets.all(16.0),
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          children: List.generate(
              9,
                  (index){
                return InkWell(
                  onTap:()
                  {
                    //we need add value and toggle player X , O
                    //and we need apply click when field is empty
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: colors.primaryColor,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Center(
                      child: Text(
                      'X',
                      ),
                    ),
                  ),
                );
              }
          ),
        ),
      ),
      // Start Create button Reload
      //const SizedBox(height: 25.0,),
      Text('result', style: const TextStyle(color: Colors.white,fontSize: 45.0),),
      ElevatedButton.icon(
        onPressed: ()
        {

        },
        icon:const Icon(Icons.replay,),
        label:const Text(
          'New Game',
          style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),
        ),
      ),
      // End Create button Reload
    ],

  );
}
