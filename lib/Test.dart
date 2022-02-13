import 'package:flutter/material.dart';
import 'package:xo_test_design/color.dart' as colors;

class TestFile extends StatefulWidget {
  const TestFile({Key? key}) : super(key: key);
  @override
  State<TestFile> createState() => _TestFileState();
}

class _TestFileState extends State<TestFile> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double boardWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: buildBody(context, boardWidth, size),
    );
  }

  Widget buildBody(context, boardWidth, size) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "It's turn".toUpperCase(),
              style: TextStyle(
                color: colors.secondColor,
                fontSize: 45.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).orientation == Orientation.portrait
                  ? boardWidth
                  : MediaQuery.of(context).size.width * 0.4,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: MediaQuery.of(context).size.height * 0.13,
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemCount: 9,
                padding: EdgeInsets.all(16.0),
                itemBuilder: (ctx, int i) {
                  return InkWell(
                    onTap: () {
                      //we need add value and toggle player X , O
                      //and we need apply click when field is empty
                    },
                    child: Container(
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
                },
              ),
            ),
          ),
          // Start Create button Reload
          //const SizedBox(height: 25.0,),
          const Text(
            'result',
            style: TextStyle(color: Colors.white, fontSize: 45.0),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.replay,
            ),
            label: const Text(
              'New Game',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ),
          // End Create button Reload
        ],
      );
}
