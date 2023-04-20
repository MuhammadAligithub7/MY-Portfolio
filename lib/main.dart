import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Personal Portfolio',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Personal Portfolio',
        style: TextStyle(fontSize: 30,color: Colors.black87),),
        centerTitle: true,
        backgroundColor: Colors.cyan.shade600,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 60.0),
              child: Text('Flutter Developer', style: TextStyle(fontSize: 30),),
            ),

            const SizedBox(height: 30,),

            const CircleAvatar(
               radius: 100,
               backgroundImage: AssetImage('assets/aaaaa.jpg'),
             ),

            const SizedBox(height: 30,),

            const Text('Muhammad Ali', style: TextStyle(fontSize: 30),),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [

                  const SizedBox(height: 20,),
                  Row(
                   children:  const [
                     Icon(Icons.mail,size: 20,),
                     SizedBox(width: 20,),
                     Text('muhammadali907080@gmail.com', style: TextStyle(fontSize: 20),),
                   ],
                 ),

                  const SizedBox(height: 20,),

                  Row(
                    children: const [
                      Icon(Icons.phone,size: 20,),
                      SizedBox(width: 20,),
                      Text('0348-8858461', style: TextStyle(fontSize: 20),),

                    ],
                  ),
                  const SizedBox(height: 20,),

                  Row(
                    children: const [
                      Icon(Icons.location_on,size: 20,),
                      SizedBox(width: 20,),
                      Text('Peshawar, Pakistan', style: TextStyle(fontSize: 20),),

                    ],
                  ),
                  const SizedBox(height: 20,),

                  Row(
                    children: const [
                      Icon(Icons.phone_android_sharp,size: 20,),
                      SizedBox(width: 20,),
                      Text('Mobile App Developer', style: TextStyle(fontSize: 20),),
                    ],
                  ),
                  const SizedBox(height: 20,),
                ],
              ),
            ),

            ElevatedButton(
              child: const Text('Educational Details', style: TextStyle(fontSize: 18),),
              onPressed: () { Navigator.push( context,MaterialPageRoute(builder: (context) => const SecondRoute()),);},
            ),
          ],
        ),
      )

    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Educational Details',
        style: TextStyle(fontSize: 28,color: Colors.black87),),
        centerTitle: true,
        backgroundColor: Colors.cyan.shade600,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [

            const ListTile(
              leading: Icon(Icons.school),
              title: Text('Bachelors of Science') ,
              subtitle: Text('Software Engineering'),
              trailing: Text('7/7/2023'),
            ),
            const SizedBox(height: 20,),

            const ListTile(
              leading: Icon(Icons.school),
              title: Text('F.sc') ,
              subtitle: Text('Pre Engineering'),
              trailing: Text('6/6/2018'),
            ),
            const SizedBox(height: 20,),

            const ListTile(
              leading: Icon(Icons.school),
              title: Text('Metric') ,
              subtitle: Text('Science'),
              trailing: Text('5/5/2016'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!',style: TextStyle(fontSize: 25),),
            ),

          ],
        ),
      )
    );
  }
}