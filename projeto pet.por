programa {
  inclua biblioteca Util --> u 
  funcao inicio() {
    inteiro Ini_escolha,Ini_restorno
    inteiro Ava_horas,Ava_total_hrs=0,Ava_total_dias=0
    inteiro sta_fome=0, sta_felicidade=5, sta_brincar=0,sta_banho=10,sta_remedio=0, sta_doenca=0
    inteiro Ban_escolha,Ban_limpo,Ban_decisao,Ban_sair,Ban_saida=0,Ban_saida2
    inteiro sai_confirmacao,sai_volta
    inteiro Brin_sorteio = u.sorteia(1, 3),Brin_usuario,Brin_novamente,Brin_vezes=0,Brin_sair
    inteiro Fom_escolha, Fom_fim=1,Fom_decisao,Fom_cheio,Ban_fim=1,Fom_sair=0,Fom_saida=0
    inteiro Doe_sorteio =u.sorteia(1, 5),Doe_dia=0,Doe_hr=0,Doe_total=0,Doe_dia2=0,Doe_hr2=0,Doe_total2=0,Doe_soma=0,Doe_U =u.sorteia(1,3),doe_remedio=0,Doe_cura
    faca{
     escreva ("1. Avançar as Horas\n2. Alimentar Pet\n3. Jogar com o Pet\n4. Dar banho\n5. Ver status\n6. Sair do Jogo\n")
     leia(Ini_escolha)
     se(Ini_escolha >=1 e Ini_escolha <= 6)
     {
      escolha (Ini_escolha){
      caso 1:
       se(Ini_escolha == 1){
            faca{
            escreva("Deseja passar 8 horas?\n 1 - Sim\n 2 - Volta para o Inicio ?\n")
            leia(Ava_horas)
                    se(Ava_horas == 1){
                      Ava_total_hrs++
                                  se(Ava_horas == 1){
                                    sta_fome=sta_fome+2
                                    sta_felicidade--
                                    sta_banho=sta_banho-2
                                    sta_brincar++
               }
                    } 
                    senao se (Ava_horas == 2){
                      Ava_horas=3
                    }
                    senao{
                      escreva("Digitou errado, coloquei novamente\n")
                      Ava_horas=1
                    }          
                                          se(sta_brincar >= 8 ou sta_fome >= 8 ou sta_banho <= 2 ou sta_felicidade <= 2){
                  escreva("Verifique o Status o seu Pet está Necessitando de algo!! \n\n")
               }
                se(sta_brincar >= 10 ou sta_fome >= 10 ou sta_banho <= 0 ou sta_felicidade <= 0){
                            escreva("Volta ao inicio \nSeu Pet morreu :(\n")
                                      Ava_horas=3                                  
                                  }                                    
            }enquanto (Ava_horas == 1)
                                Ava_total_hrs=Ava_total_hrs*8                  
                 pare     
      }
               caso 2:
               faca{
               escreva("Deseja alimentar o seu Pet: \n1 - Banana\n2 - Tomate\n3 - Uva\n4 - Para de alimenta Pet\n")
               leia(Fom_escolha)
               se(Fom_escolha == 1 ou Fom_escolha == 2 ou Fom_escolha == 3){
               sta_fome=sta_fome-4
                  se(sta_fome <= 0){
                    faca{
                  escreva("O seu Pet está cheio, deseja continuar alimentando ele ?\n1 - Sim\n2 - Não\n")
                  leia(Fom_cheio)
                  se(Fom_cheio == 1){
                    sta_felicidade=sta_felicidade-2
                    Fom_sair=0
                  }
                  senao se(Fom_cheio == 2){
                    Fom_fim=0
                    Fom_sair=0
                  }
                  senao{
                    escreva("erro, Digite 1 ou 2\n")
                    Fom_sair=1
                  }
                    }enquanto(Fom_sair == 1)
                  }       
               }       
               senao se(Fom_escolha == 4){
                faca{
                escreva("Deseja parar de alimentar o Pet?\n 1 - Sim\n 2 - Não\n")
                leia(Fom_decisao)
                se(Fom_decisao == 1){
                Fom_fim=0
                Fom_saida=0
                }
                senao se(Fom_decisao == 2){
                    Fom_saida=0
                }
                senao{
                  escreva("Erro, coloquei 1 ou 2\n")
                  Fom_saida=1
                }
                
                }enquanto(Fom_saida == 1)
               }
               senao{
                    escreva("Erro, Digite 1 a 4\n")
                    Fom_fim=1
               }
                              se(sta_brincar >= 8 ou sta_fome >= 8 ou sta_banho <= 2 ou sta_felicidade <= 2){
                  escreva("Verifique o Status o seu Pet está Necessitando de algo!! \n\n")
               }
               
                se(sta_brincar >= 10 ou sta_fome >= 10 ou sta_banho <= 0 ou sta_felicidade <= 0){
                escreva("Volta ao inicio \nSeu Pet morreu :(\n")
                Ava_horas=3
                Fom_fim=0
                                    }
               Ava_total_hrs=Ava_total_hrs+2
               }enquanto(Fom_fim == 1)
               Ava_horas=3
               pare
               caso 3:
               faca{
                escreva("Qual você vai jogar : \n 1 - Pedra\n 2 - Papel\n 3 - Tesoura\n")
                leia(Brin_usuario)
                Brin_sorteio = u.sorteia(1, 3)
                Brin_vezes++
                  se(Brin_sorteio == 1){
                  
                            se(Brin_usuario == 1){
                              escreva("Pedra\n Pedra\n Empate\n\n")
                            }
                            senao se(Brin_usuario == 2){
                              escreva("Pedra\n Papel\n Você ganhou\n\n")
                              sta_felicidade=sta_felicidade+3
                            }
                              senao se(Brin_usuario == 3){
                              escreva("Pedra\n Teroura\n Você Perdeu\n\n")
                              sta_felicidade=sta_felicidade+5
                              }
                              senao{
                                   escreva("Erro, Coloquei 1 a 3\n")
                                   Brin_novamente =1
                                   }
                              } //pedra  
                  senao se(Brin_sorteio  ==2){
                                            se(Brin_usuario == 1){
                                              escreva("Papel\n Pedra\n Você perdeu\n\n")
                                              sta_felicidade=sta_felicidade+5
                                            }
                                            senao se(Brin_usuario == 2){
                                              escreva("Papel\n Papel\n Empate\n\n")
                                            }
                                              senao se(Brin_usuario == 3){
                                              escreva("Papel \n Teroura\n Você ganhou\n\n")
                                              sta_felicidade=sta_felicidade+3
                                              }
                                              senao{
                                                            escreva("Erro, Coloquei 1 a 3\n")
                                                            Brin_novamente =1
                                                          }
                                            }//papel
                                                  senao{
                                                      se(Brin_usuario == 1){
                                                          escreva("Teroura\n Pedra\n Você ganhou\n\n")
                                                          sta_felicidade=sta_felicidade+3
                                                        }
                                                        senao se(Brin_usuario == 2){
                                                          escreva("Teroura\n Papel\n Você perdeu\n\n")
                                                          sta_felicidade=sta_felicidade+5
                                                        }
                                                          senao se(Brin_usuario == 3){
                                                          escreva("Teroura \n Teroura\n Empate\n\n")
                                                          }
                                                          senao{
                                                            escreva("Erro, Coloquei 1 a 3\n")
                                                            Brin_novamente =1
                                                          }
                                                      }//Teroura
               faca{
                escreva("Deseja jogar novamente: \n 1 - Sim\n 2 - Não\n\n")
                leia(Brin_novamente)
                se(Brin_novamente == 1 ){
                  Brin_novamente=1
                  Brin_sair=0
                }
                senao se (Brin_novamente == 2){
                  Ava_horas=3
                  Brin_sair=0
                }
                senao {
                  escreva("Não entendi\n")
                  Brin_novamente=1
                  Brin_sair=1
                }
                 se(Brin_vezes >=3){
                      sta_brincar=sta_brincar-2
                      sta_fome=sta_fome+2
                      sta_banho=sta_banho-2
                      Ava_total_hrs=Ava_total_hrs+2
                se(sta_brincar >= 10 ou sta_fome >= 10 ou sta_banho <= 0 ou sta_felicidade <= 0){
                            escreva("Volta ao inicio \nSeu Pet morreu :(\n")
                                      Ava_horas=3                                  
                                  }                   
                se(Brin_vezes >=2){
                  sta_remedio++
                  Brin_vezes=Brin_vezes-2
                  escreva("Você ganhou um remedio para o seu Pet: ",sta_remedio," Qtd, utilize quando ele ficar doente\n\n")
                }
                    }
               }enquanto(Brin_sair == 1)
                    }enquanto(Brin_novamente == 1) 
                   
                se(sta_felicidade >= 10){
        sta_felicidade=10
      }
      se(sta_brincar >= 10){
        sta_brincar=10
      }
       se(sta_fome >= 10){
        sta_fome=10
      }
       se(sta_banho >= 10){
        sta_banho=10
      }
              pare
               caso 4:
               faca{
               escreva("Deseja dar banho no seu Pet: \n1 - Sim\n2 - Não\n")
               leia(Ban_escolha)
               se(Ban_escolha == 1 ){
               sta_banho=sta_banho+3
               faca{
                  se(sta_banho >= 10){
                  escreva("O seu Pet está limpo, deseja continuar dando banho nele ?\n1 - Sim\n2 - Não\n")
                  leia(Ban_limpo)
                  
                  se(Ban_limpo == 1){
                    sta_felicidade=sta_felicidade-6
                    Ban_saida2=0
                  }
                  senao se(Ban_limpo == 2){
                    Ban_fim=0
                    Ava_horas=3
                    Ban_saida2=0
                  }
                  senao {
                    escreva("Erro, Digite 1 ou 2\n")
                    Ban_saida2=1
                    Ban_fim=1
                    
               }
                  }
                  }enquanto(Ban_saida2 == 1)
                  
               }
               senao se(Ban_escolha == 2){
                faca{
                escreva("Tem certeza quer sair do banho?\n1 - Sim\n2 - Não\n")
                leia(Ban_sair)
                se(Ban_sair == 1){
                Ban_fim=0
                Ava_horas=3
                Ban_saida=0
                }
               senao se (Ban_sair == 2){
                Ban_fim=1
                Ban_saida=0
               }
               senao{
                escreva("Erro, coloquei 1 ou 2\n")
                Ban_saida=1
               }
               }enquanto(Ban_saida == 1)
               }
               senao{
                escreva("Erro, Digite 1 ou 2\n")
                Ban_fim=1
               }
                                          se(sta_brincar >= 8 ou sta_fome >= 8 ou sta_banho <= 2 ou sta_felicidade <= 2){
                  escreva("Verifique o Status o seu Pet está Necessitando de algo!! \n\n")
               }
                se(sta_brincar >= 10 ou sta_fome >= 10 ou sta_banho <= 0 ou sta_felicidade <= 0){
                            escreva("Volta ao inicio \nSeu Pet morreu :(\n")
                                      Ava_horas=3    
                                      Ban_fim=0                              
                                  }             
               Ava_total_hrs=Ava_total_hrs+2
               }enquanto(Ban_fim == 1)
               Ava_horas=3
               pare
               caso 5:
                escreva("O Nivel de fome do seu Pet é: ", sta_fome,"\n")
                escreva("O Nivel de felicidade do seu Pet é: ", sta_felicidade,"\n")
                escreva("O Nivel de vontade do seu Pet brincar: ", sta_brincar,"\n")
                escreva("O Nivel que o seu Pet está limpo: ",sta_banho,"\n")
                escreva("Total de Dias foi: ", Ava_total_dias," dias e ",Ava_total_hrs," Hrs\n")
                se(sta_doenca == 1){
                  escreva("O seu Pet está doente\n\n")
                }
                senao{
                  escreva("O seu Pet não está doente\n\n")
                }
                Ava_horas=3// status do pet 
            pare
              caso 6:
              faca{
              escreva("Deseja realemente sair do jogo:\n 1 - Sim\n 2 - Não\n")
              leia(sai_confirmacao)
                          se(sai_confirmacao == 1){
                            Ava_horas = 0
                            sai_volta =0
                          }
                          senao se (sai_confirmacao == 2){
                            Ava_horas = 3
                            sai_volta =0
                          }
                          senao {
                            escreva("Não entendi, faça novamente\n")
                            sai_volta = 1
                          }
              }enquanto(sai_volta == 1)//saida do jogo
              pare
      }
      se(sta_felicidade >= 10){
        sta_felicidade=10
      }
      se(sta_brincar >= 10){
        sta_brincar=10
      }
       se(sta_fome >= 10){
        sta_fome=10
      }
       se(sta_banho >= 10){
        sta_banho=10
      }
      se(sta_felicidade <= 0){
        sta_felicidade=0
      }
      se(sta_brincar <= 0){
        sta_brincar=0
      }
       se(sta_fome <= 0){
        sta_fome=0
      }
       se(sta_banho <= 0){
        sta_banho=0
      }
       se(sta_banho == 0 ou sta_brincar == 10 ou sta_doenca == 10 ou sta_felicidade == 0 ou sta_fome == 10){
      escreva("O seu pet morreu\n")
      se(sta_banho == 0){
        escreva("O motivo da morre foi a falta de banho: ",sta_banho,"\n")
      }
       se(sta_brincar == 10){
        escreva("O motivo da morre foi a falta de brincar: ",sta_brincar,"\n")
      }
       se(sta_felicidade == 0){
        escreva("O motivo da morre foi a falta de felicidade: ",sta_felicidade,"\n")
      }
        se(sta_fome == 10){
        escreva("O motivo da morre foi a falta de fome: ",sta_fome,"\n")
      }
       se(sta_doenca == 10){
        escreva("O nivel da doença é: ",sta_doenca,"\n")
      }
       }
       escreva("\n")
       enquanto(Ava_total_hrs >=24){
       Ava_total_hrs=Ava_total_hrs-24
       Ava_total_dias++
       }   
        se(Ava_total_dias >= 7){
        escreva("Você venceu o jogo \n")
        Ava_horas=0
        }       
     }
     senao {
      escreva("Erro, coloquei entre 1 a 6\n")
      Ava_horas = 3
     }
     se(sta_doenca == 0){
      Doe_sorteio = u.sorteia(1, 5)
      se(Doe_sorteio == 1){

      }
      senao se(Doe_sorteio == 2){

      }
      senao se (Doe_sorteio == 3){

      } 
      senao se (Doe_sorteio == 4){
        sta_doenca=1
        escreva("O Pet está doente!!\n\n")
              se (Ava_total_dias >=1){
      Doe_dia=Ava_total_dias*24
      }
      Doe_hr=Ava_horas
      Doe_total=Doe_hr+Doe_dia
      }
     }
     senao se(sta_doenca == 1){
      se(sta_remedio <= 1){
        faca{
        escreva("Deseja usar o remedio ?\n1 - Sim\n2 - Não\n")
        leia( Doe_cura)
        se(Doe_cura == 1){
          sta_doenca=0
          doe_remedio=0
          escreva("Seu Pet está curado!!\n")
        }
        senao se(Doe_cura == 2){
          doe_remedio=0

        }
        senao {
          doe_remedio=1
        }
        }enquanto(doe_remedio == 1)
      }
                    se (Ava_total_dias >=1){
      Doe_dia2=Ava_total_dias*24
      }
      Doe_hr2=Ava_horas
      Doe_total2=Doe_hr2+Doe_dia2

       Doe_soma=Doe_total2-Doe_total
       Doe_U =u.sorteia(1,3)
       se(Doe_soma >= 72){
        escreva("Seu Pet está curado!!\n\n")
        
       }

       senao se(Doe_soma >= 48){
        se(Doe_U == 1){
          escreva("Seu Pet está curado!!\n\n")
        }
      
       }
      senao se (Doe_soma >=24){
                se(Doe_U == 1){
          escreva("Seu Pet está curado!!\n\n")
        }
      }
      
     }

    }enquanto (Ava_horas == 3)
  
    }
  }