



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 
class Usuario extends StatefulWidget {
  @override
  _UsuarioState createState() => _UsuarioState();
}

class _UsuarioState extends State<Usuario> {
  // carregar a imagem
  var _user = AssetImage("imagens/user.png");
  // informações exibidas
  String _EntradaNome = "ads";
  int _Idade = 0 ;
String _sexo;
String _Estilo_Pessoal = "asdadasdasdasddasdasdadasdasdasdasdasd";
String _tipo = "";
//  Checkbox
bool _introvertido = false;
bool _extrovertido = false;
bool _selecionado_extrovertido = false;
bool _selecionado_introvertido = false;

// configurar as atualizações do inputs  nome e idade

TextEditingController _nomeController = new TextEditingController();
TextEditingController _idadeController = new TextEditingController();
TextEditingController _descricaoController = new TextEditingController();
void _Inputs(){

    setState(() {
      _EntradaNome = _nomeController.text;
      _Idade =  int.tryParse(_idadeController.text);
      _sexo;
      _Estilo_Pessoal =  _descricaoController.text;
      _Checkboxs();
    });
}

void _Checkboxs(){



if(_extrovertido && _introvertido ){
  
     _tipo = "você é Bipolar hein "; 
 
    
} else if (_extrovertido){
  _tipo = "Extrovertido";
} else if (_introvertido){
_tipo = "Introvertido"; 
} else{
  _tipo = "";
}

}



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Usuário",
        style: TextStyle(
          color: Colors.black
        ),
        ),
        backgroundColor: Colors.yellow,
      ),

      body: Container( 
          width: double.infinity,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(width:3, color: Colors.amber),
              color: Colors.yellowAccent,
          ),
          
          child: SingleChildScrollView(
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                  
                Padding(padding: EdgeInsets.only(left:32, right:32, bottom: 15),
                child: Image(image:_user, width: 400,),
                ),
              Padding(padding: EdgeInsets.only(bottom:20),
              child: Row(children: <Widget>[
                Text("Nome: EntradaNome", 
                style: TextStyle(
                fontSize: 19,
                
                fontWeight: FontWeight.w500,
                ),
                ),
              ],)
              ),
               Padding(padding: EdgeInsets.only(bottom:20),
              child: Row(children: <Widget>[
                Text("Idade: $_Idade", 
                style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                ),
                ),
              ],)
              ),
               Padding(padding: EdgeInsets.only(bottom:20),
              child: Row(children: <Widget>[
                Text("Sexo: $_sexo", 
                style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                ),
                ),
              ],)
              ),
               Padding(padding: EdgeInsets.only(bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                 Text("Estilo de Pessoa",
              
                style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                ),
                ),
                 Padding(padding: EdgeInsets.only(top:16, bottom:20),
                 child: Text(_Estilo_Pessoal,
                
                 style: TextStyle(
                   fontSize: 20,
                    fontStyle: FontStyle.italic
                 ),
                 ),
                 ),
              ],)
              ),
               Padding(padding: EdgeInsets.only(bottom:20),
              child: Row(children: <Widget>[
                Text("Tipo: $_tipo", 
                style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                ),
                ),
              ],)
              ),   
                Container(
                  padding: EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                     topRight: Radius.circular(30)),
                   color: Colors.white
                  ),
                  child: Column(
                    children: <Widget>[
                     Padding(padding: EdgeInsets.only(bottom:10),
                     child: TextField(
                       keyboardType: TextInputType.text,
                       decoration: InputDecoration(
                         labelText: "Nome"
                       ),
                        controller:_nomeController ,
                       
                      ),
                      ),
                    Padding(padding: EdgeInsets.only(bottom:20),
                     child: TextField(
                       keyboardType: TextInputType.number,
                       decoration: InputDecoration(
                         labelText: "Idade"
                       ),
                        controller:_idadeController 
                       
                      ),
                      ),
                    Padding(padding: EdgeInsets.only(bottom: 30,),
                    child:Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                      Text("Masculino"),
                      Radio(value: "Masculino" ,
                       groupValue: _sexo,
                        onChanged: (String resultado){
                          
                            setState(() {
                              _sexo = resultado;
                            });

                           
                        }),
                        Text("Feminino"),
                      Radio(value: "Feminino" ,
                       groupValue: _sexo,
                        onChanged: (String resultado){
                            setState(() {
                              _sexo = resultado;
                            });
                        }),

                    ],
                   
                    ),
                    ),
                    
                    Padding(padding: EdgeInsets.all(12),
                    child: Column(
                      children: <Widget>[
                       Padding(padding: EdgeInsets.only(right:100),
                      child: Text("Descreve sobre você!",
                       textDirection: TextDirection.ltr,
                       style: TextStyle(
                         fontSize: 19,
                         fontWeight: FontWeight.bold
                       ),
                       ) ),
                        TextField(
                          keyboardType: TextInputType.text,
                          controller: _descricaoController,
                         
                        )
                      ],
                    ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom:19, top:19),
                    child: Column(children: <Widget>[
                    Padding(padding: EdgeInsets.only(right:150,bottom:19 ),
                     child: Text("Tipo de pessoa",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      ),
                     CheckboxListTile(
                     title: Text("Extrovertido",
                     style: TextStyle(
                    
                       fontSize: 19,
                       fontWeight: FontWeight.bold
                     ),
                     ),
                      selected: _selecionado_extrovertido,
                       value: _extrovertido,
                      onChanged: (bool resultado){
                        setState(() {
                         _selecionado_extrovertido = resultado;
                          _extrovertido = resultado;
                         
                        });
                      
                      }
                     
                      ),
                      CheckboxListTile(
                     title: Text("Introvertido",
                     style: TextStyle(
                    
                       fontSize: 19,
                       fontWeight: FontWeight.bold
                     ),
                     ),
                      selected: _selecionado_introvertido,
                       value: _introvertido,
                      onChanged: (bool resultado){
                        setState(() {
                            _selecionado_introvertido = resultado;
                          _introvertido = resultado;
                      
                        });
                      
                      }
                     
                      ),
                     RaisedButton(onPressed:_Inputs,
                     child:Text("Enviar",
                     style: TextStyle(
                       fontSize: 19,
                       fontWeight: FontWeight.w600
                     ),),
                     color: Colors.yellow,
                     
                     )



                  
                    
                   
                   
                   ],
                    ),
                    )
,

                    ],
                  ),
                ), 
               ],
                
               )
              



              
            ),
          ),
    


    );
  }
}