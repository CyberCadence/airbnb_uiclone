import 'package:flutter/material.dart';

class HeroBanner extends StatelessWidget {
  const HeroBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 2.1,
        child: Stack(
          children: [
            Image.network(
              "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/airbnb%2Fairbnb_home.webp?alt=media&token=27e4e303-eac2-4144-945f-73769bcb81f7",
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height / 2.1,
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 35,
                    ),
                    const SizedBox(
                      height: 25,
                      child: Text(
                        'NOT SURE WHERE TO GO',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: ShaderMask(
                        shaderCallback: (bounds) {
                          return LinearGradient(colors: [
                            Colors.purple,
                            Colors.pink
                          ]).createShader(
                              Rect.fromLTWH(0, 0, bounds.width, bounds.height));
                        },
                        child: Text(
                          'Explore',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.white),
                        ),
                      ),
                      style: ButtonStyle(
                          overlayColor: MaterialStateProperty.resolveWith(
                            (states) {
                              return states.contains(MaterialState.pressed)
                                  ? Colors.grey.shade100
                                  : null;
                            },
                          ),
                          elevation: MaterialStateProperty.all(25),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          alignment: Alignment.center,
                          padding: MaterialStateProperty.all(
                            const EdgeInsets.only(
                                right: 50, left: 50, top: 12.5, bottom: 12.5),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white)),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
