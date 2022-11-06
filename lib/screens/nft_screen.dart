import 'package:flutter/material.dart';
import '../blur_container.dart';
import '../animations/fade_animation.dart';


class NFTScreen extends StatelessWidget {
  const NFTScreen({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Hero(tag: image, child: Image.asset(image),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: FadeAnimation(
                intervalEnd: 0.2,
                child: BlurContainer(
                  child: Container(
                    width: 160,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(0.1)
                    ),
                    child: const Text('Digital NFT Art',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                  )
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 30,),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: FadeAnimation(
            intervalStart: 0.1,
            child: Text(
              'Monkey #271',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
         const SizedBox(height: 8,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: FadeAnimation(
                intervalStart: 0.1,
                child: Text(
                'Owned by Deepesh',
                           style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                          ),
                        ),
              ),
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: FadeAnimation(
            intervalStart: 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _InfoTile(title: '3d 5h 23m', subtitle: 'Remaining time'),
                _InfoTile(title: '16.7 ETH', subtitle: 'Hightest Bid'),
                ],
            ),
          ),
        ),
        const Spacer(),
          FadeAnimation(
            intervalStart: 0.1,
            child: Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff3000ff),
              ),
              child: const FadeAnimation(
                intervalStart: 0.1,
                child:  Text('Place Bid',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
          ),
          const SizedBox(height: 50,)
      ],
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  const _InfoTile({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text( title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),),
        const SizedBox(
          height: 5,
        ),
        Text(subtitle,
        style: const TextStyle(
          color: Colors.white70,
          fontSize: 17,
        ),)
      ],
    );
  }
}