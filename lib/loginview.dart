import 'package:flutter/material.dart';

class Loginview extends StatefulWidget {
  const Loginview({super.key});

  @override
  State<Loginview> createState() => _LoginviewState();
}

class _LoginviewState extends State<Loginview> {
    final _formKey = GlobalKey<FormState>();
 final TextEditingController  _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(title: const  Text("Log in"),backgroundColor:Colors.green,),
      body: Column(
        children: [
           Center(heightFactor: 50,child: Image.asset("assets/images/logo.png"),),
     const      Text("Welcome Back ",style: TextStyle(color: Colors.green,fontSize: 20),),
       const    Text("please sign in into your account  ",style: TextStyle(color: Colors.grey,fontSize: 10),),

           Center(
            child:Form( key: _formKey,
           child: Column(
            
            children: [
            Padding(padding: const EdgeInsets.all(20),child: 

             TextFormField(
                controller: _emailController,
                decoration:  const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  
                  labelText: 'email',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              )),
                          Padding(padding: const EdgeInsets.all(20),child: 

              TextFormField(
                controller: _passwordController,
                decoration: const  InputDecoration(
                    prefixIcon: Icon(Icons.lock),

                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,  
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),),
              ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green
              ),
                onPressed: (){}, child: const  Text("Sign in ")) , TextButton(child:const Text("Dont had one ?")
            ,onPressed: (){
                    Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => const Loginview()));
            },)
           ],),
             
            ), 
             )



        ],
      ),
    );

  }
}