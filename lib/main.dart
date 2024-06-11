import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Home Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  final storage = const FlutterSecureStorage();
  String password = '';
  String loginName = '';
  var imageSource = 'images/login.png';

  @override
  void initState() {
    super.initState();
    _loadSavedData();
  }

  Future<void> _loadSavedData() async {
    String? savedLoginName = await storage.read(key: 'loginName');
    String? savedPassword = await storage.read(key: 'password');

    if (savedLoginName != null && savedPassword != null) {
      setState(() {
        loginName = savedLoginName;
        password = savedPassword;
      });
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _showSnackBar();
      });
    }
  }

  void _showSnackBar() {
    final snackBar = SnackBar(
      content: const Text('Previous login name and password loaded'),
      action: SnackBarAction(
        label: 'Clear Saved Data',
        onPressed: () {
          _clearSavedData();
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Future<void> _clearSavedData() async {
    await storage.delete(key: 'loginName');
    await storage.delete(key: 'password');
    setState(() {
      loginName = '';
      password = '';
    });
  }

  Future<void> _saveData() async {
    await storage.write(key: 'loginName', value: loginName);
    await storage.write(key: 'password', value: password);
  }

  void _login() {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Save Login Information'),
        content: const Text('Would you like to save your login name and password for next time?'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              _clearSavedData();
              Navigator.pop(context, 'Cancel');
            },
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () {
              if (password == 'QWERTY123') {
                _saveData();
                setState(() {
                  imageSource = 'images/idea.png';
                });
              } else {
                _clearSavedData();
                setState(() {
                  imageSource = 'images/stop.png';
                });
              }
              Navigator.pop(context, 'OK');
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Login name'),
              onChanged: (value) {
                loginName = value;
              },
              controller: TextEditingController(text: loginName),
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
              onChanged: (value) {
                password = value;
              },
              controller: TextEditingController(text: password),
            ),
            ElevatedButton(
              onPressed: _login,
              child: const Text('Login'),
            ),
            const SizedBox(height: 20),
            Image.asset(
              imageSource,
              width: 300,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
