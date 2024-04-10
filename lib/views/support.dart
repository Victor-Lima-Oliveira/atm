// ignore_for_file: prefer_const_constructors

import 'package:atm/views/cliente.dart';
import 'package:atm/views/contato.dart';
import 'package:atm/views/empresa.dart';
import 'package:atm/views/servico.dart';
import 'package:flutter/material.dart';

class HomeAtm extends StatefulWidget{
  const HomeAtm({super.key});
  
  @override
  State<HomeAtm> createState()=>_HomeAtmState();  
}

class _HomeAtmState extends State<HomeAtm>{

  void abrirServico(){
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context)=>Servico()));
  }

  void abrirEmpresa(){
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context)=>Empresa()));
  }

  void abrirContato(){
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context)=>Contato()));
  }

  void abrirCliente(){
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context)=>Cliente()));
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Consultoria ATM"),
        backgroundColor: Color.fromARGB(210, 76, 181, 113),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          
          children: [
            Image.asset("imagens/logo.png"),

            SizedBox(
              height: 34,
              width: 34,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                GestureDetector(child:Image.asset("imagens/menu_servico.png"),onTap:abrirServico,),
                 SizedBox(
              width: 34,
              ),
                GestureDetector(child:Image.asset("imagens/menu_empresa.png"),onTap:abrirEmpresa),
              ],
            ),

            SizedBox(
              height: 34,
              
              ),

            Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                GestureDetector(child:Image.asset("imagens/menu_contato.png"),onTap:abrirContato),
                SizedBox(
              width: 34,
              ),
                GestureDetector(child:Image.asset("imagens/menu_cliente.png"),onTap:abrirCliente),
               ],
            )
          ],
        ),
      )
     
    );
  }
}

