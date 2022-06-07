import 'package:flutter/material.dart';

import 'events_example.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Health",
      home: MainPage(),
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
    );
  }
  Route<dynamic>? _getRoute(RouteSettings settings) {
    if (settings.name != '/login'){
      return null;
    }

    return MaterialPageRoute(builder: (BuildContext context) => Loginpage(),
        fullscreenDialog: true);
  }
}

class Loginpage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Loginpage>{
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [
            SizedBox(height: 80,),
            Column(
              children: [
                Image.asset('name'),
                SizedBox(height: 16,),
                Text('테스트'),
              ],
            ),
            SizedBox(height: 120,),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                  filled: true,
                  labelText: 'ID'
              ),
            ),
            SizedBox(height: 12,),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            ButtonBar(
              children: [
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SingUpPage()));
                }, child: Text('Sing Up')),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text('NEXT'))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [
            SizedBox(height: 120,),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                  filled: true,
                  labelText: 'ID'
              ),
            ),
            SizedBox(height: 12,),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 12,),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Email',
              ),
            ),
            ButtonBar(
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text('Sing Up'))
              ],
            )
          ],
        ),
      ),
    );
  }
}


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Health Togetehr"),
          ),
          body: TabBarView(
            children: [
              Home(),
              Challenge(),
              Calendar(),
              Settings(),
            ],
          ),
          bottomNavigationBar: Container(
            color: Colors.white,
            child: Container(
              height: 70,
              padding: EdgeInsets.only(bottom: 10, top: 5),
              child: const TabBar(
                  labelColor: Colors.grey,
                  indicatorColor: Colors.grey,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.home),
                      text: 'Home',
                    ),
                    Tab(
                      icon: Icon(Icons.insert_chart_outlined_rounded),
                      text: 'Challenge',
                    ),
                    Tab(
                      icon: Icon(Icons.calendar_month),
                      text: 'Calendar',
                    ),
                    Tab(
                      icon: Icon(Icons.settings),
                      text: 'Setting',
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (
          Padding(
              padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('루틴'),
                    onTap: (){},
                  ),
                  ListTile(
                    title: Text('물'),
                    onTap: (){},
                  ),
                  ListTile(
                    title: Text('영양제'),
                    onTap: (){},
                  ),
                  ListTile(
                    title: Text('수면'),
                    onTap: (){},
                  ),
                  ListTile(
                    title: Text('인바디'),
                    onTap: (){},
                  ),ListTile(
                    title: Text('만보계'),
                    onTap: (){
                      //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => pedometers()));
                    },
                  )
                ],
              )
          )
      ),
    );
  }
}

class Challenge extends StatelessWidget {
  const Challenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (
          Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
            child: Column(
              children: [
                Text("hi",style: TextStyle(
                  letterSpacing: 10,
                  fontSize: 30,
                ),
                ),
              ],
            ),
          )
      ),
    );
  }
}

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return TableEventsExample();
  }
}


class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (
          Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
            child: Column(
              children: [
                Text("테스트",style: TextStyle(
                  letterSpacing: 10,
                  fontSize: 30,
                ),
                ),
              ],
            ),
          )
      ),
    );
  }
}