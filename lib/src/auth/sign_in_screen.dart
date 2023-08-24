import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:meuappflutter/src/auth/components/custom_text_field.dart';
import 'package:meuappflutter/src/auth/sign_up_screen.dart';
import 'package:meuappflutter/src/base/base_screen.dart';
import 'package:meuappflutter/src/config/custom_colors.dart';


class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              //Container superior -> Logo
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Nome do app
                    Text.rich(
                      TextSpan(
                          style: const TextStyle(
                            fontSize: 40,
                          ),
                          children: [
                            const TextSpan(
                                text: 'Green',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )),
                            TextSpan(
                                text: 'grocer',
                                style: TextStyle(
                                  color: CustomColors.customContrastColor,
                                ))
                          ]),
                    ),
              
                    //Categorias
                    SizedBox(
                    height: 30,
                      child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 25,
                      ),
                        child: AnimatedTextKit(
                          pause: Duration.zero,
                          repeatForever: true,
                          animatedTexts: [
                      
                            FadeAnimatedText('Frutas'),
                            FadeAnimatedText('Verduras'),
                            FadeAnimatedText('Legumes'),
                            FadeAnimatedText('Carnes'),
                            FadeAnimatedText('Laticíneos'),
                      
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              
              //Container inferior -> Formulário de login
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //Texto
                    const Padding(
                      padding: EdgeInsets.only(bottom: 16),
                      child: Text(
                        'Acessar sua conta:',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
              
                    // Email
                    const CustomTextField(
                      icon: Icons.email,
                      label: 'E-mail',
                    ),
              
                    // Senha
                    const CustomTextField(
                      icon: Icons.lock,
                      label: 'Senha',
                      isSecret: true,
                    ),
              
                    // Botão ENTRAR
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16))),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (c) {
                            return const BaseScreen();
                          },
                          ),
                          );
                        },
                        child: const Text(
                          'ENTRAR',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
              
                    // Botão Esqueceu a senha?
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Esqueceu sua senha?',
                        style: TextStyle(
                          color: CustomColors.customContrastColor
                        ),
                      ),
                    ),
              
                    // Divisor
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 2,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text('Ou'),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey.withAlpha(90),
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
              
                    // Botão de novo usuário
                    SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            side: const BorderSide(width: 2, color: Colors.green)),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (c){
                                return SignUpScreen();
                              }
                            )
                          );
                        },
                        child: const Text(
                          'CADASTRAR-SE',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ], // Chield Container
          ),
        ),
      ),
    );
  }
}
