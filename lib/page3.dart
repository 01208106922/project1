import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Image.network(
                  'https://img.freepik.com/free-vector/listening-happy-music-concept-illustration_114360-5094.jpg',
                  errorBuilder: (context, error, stackTrace) =>
                      Text(error.toString()),
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return CircularProgressIndicator(
                      value: loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!,
                    );
                  },
                ),
              ),

              SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Music For You',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 8),
                  Text(
                    'Curated weekly playlists tailored to \n your music listening history.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),

                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.circle,size:10,color:Colors.grey),
                      SizedBox(width: 5,),
                      Icon(Icons.circle,size:10,color:Colors.grey),
                      SizedBox(width: 5,),
                      Icon(Icons.circle,size:10,color:Colors.green),
                      SizedBox(width: 5,)
                    ],),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

