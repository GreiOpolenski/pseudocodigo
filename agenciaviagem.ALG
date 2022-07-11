Algoritmo "Agencia de Viagens- Carcara"
// Disciplina   : Modulo 2 - Algoritmos e lógica de Programação
// Descrição   : Cadastro e consulta de clientes e viagens
// Autor(a)    : Greici Caroline Opolenski
// Data entrega  : 11/07/2022
Var
   opcao: caracter
   cont: inteiro
   idCliente: vetor[1..100] de inteiro
   nomeCliente: vetor[1..100] de caracter
   enderecoCliente: vetor[1..100] de caracter
   telefoneCliente: vetor[1..100] de caracter
   emailCliente: vetor[1..100] de caracter
   idDestino: vetor[1..100] de inteiro
   dataDestino: vetor[1..100] de caracter
   empresaDestino: vetor[1..100] de caracter
   paisDestino: vetor[1..100] de caracter
   cidadeDestino: vetor[1..100] de caracter
   
procedimento cadastrarCliente()
inicio
   cont <- 1
   enquanto (cont <= 100) faca
      escreval("******************")
      escreval("******************")
      escreval("CADASTRAR CLIENTES")
      escreval("******************")
      escreval("******************")
      se (idCliente[cont] = 0) entao
         idCliente[cont] <- cont
         escreval("Nome:")
         leia(nomeCliente[cont])
         escreval
         escreval("Endereço:")
         leia(enderecoCliente[cont])
         escreval
         escreval("Telefone:")
         leia(telefoneCliente[cont])
         escreval
         escreval("E-mail:")
         leia(emailCliente[cont])
         escreval
         opcao <- ""
         enquanto ((opcao <> "1")e(opcao <> "0")) faca
            escreval("1 - Cadastrar um novo cliente")
            escreval("0 - Sair")
            leia (opcao)
            se (opcao = "1") entao
               cont <- cont + 1
               limpatela
            senao
               se (opcao = "0") entao
                  cont <- 1000
               senao
                  limpatela
                  escreval("**** Opção inexistente!!! ****")
                  escreval("Por favor, digite uma opção válida")
               fimse
            fimse
         fimenquanto
      senao
         cont <- cont + 1
         limpatela
      fimse
   fimenquanto
   opcao <- ""
   limpatela
fimprocedimento

procedimento consultarCliente()
inicio
   cont <- 1
   escreval("******************")
   escreval("*******************")
   escreval("Consulta de cliente")
   escreval("*******************")
   escreval("******************")
   enquanto (cont <= 100) faca
      se(idCliente[cont] = 0) entao
         cont <- cont + 1
      senao
         escreva("Id: ")
         escreva(idCliente[cont])
         escreval
         escreva("Nome: ")
         escreva(nomeCliente[cont])
         escreval
         escreva("Endereço: ")
         escreva(enderecoCliente[cont])
         escreval
         escreva("Telefone: ")
         escreva(telefoneCliente[cont])
         escreval
         escreva("E-MAIL: ")
         escreva(emailCliente[cont])
         escreval
         escreval("******************")
         escreval
         cont <- cont + 1
      fimse
   fimenquanto
   enquanto (opcao <> "0") faca
      escreval("0 - Sair")
      leia (opcao)
      se (opcao <> "0") entao
         escreval
         escreval ("**** Opção inexistente!!! ****")
         escreval("Por favor, digite uma opção válida")
         ("**** Opção inexistente!!! ****")
      fimse
   fimenquanto
   limpatela
   opcao <- ""
fimprocedimento

procedimento cadastrarDestino()
inicio
   cont <- 1
   enquanto (cont <= 100) faca
      escreval("********************")
      escreval("********************")
      escreval("Cadastro de destinos")
      escreval("********************")
      escreval("********************")
      se (idDestino[cont] = 0) entao
         idDestino[cont] <- cont
         escreval("Empresa área:")
         leia(empresaDestino[cont])
         escreval
         escreval("País:")
         leia(paisDestino[cont])
         escreval
         escreval("Cidade:")
         leia(cidadeDestino[cont])
         escreval
         opcao <- ""
         enquanto ((opcao <> "1")e(opcao <> "0")) faca
            escreval("1 - Cadastrar um novo destino")
            escreval("0 - Sair")
            leia (opcao)
            se (opcao = "1") entao
               cont <- cont + 1
               limpatela
            senao
               se (opcao = "0") entao
                  cont <- 1000
               senao
                  limpatela
                  escreval ("**** Opção inexistente!!! ****")
                  escreval("Por favor, digite uma opção válida")
               fimse
            fimse
         fimenquanto
      senao
         cont <- cont + 1
         limpatela
      fimse
   fimenquanto
   opcao <- ""
   limpatela
fimprocedimento

procedimento consultarDestino()
inicio
   cont <- 1
   escreval("******************")
   escreval("******************")
   escreval("CONSULTAR DESTINOS")
   escreval("******************")
   escreval("******************")
   enquanto (cont <= 100) faca
      se(idDestino[cont] = 0) entao
         cont <- cont + 1
      senao
      escreval("******************")
         escreva("Id: ")
         escreva(idDestino[cont])
         escreval
         escreva("Empresa área: ")
         escreva(empresaDestino[cont])
         escreval
         escreva("País: ")
         escreva(paisDestino[cont])
         escreval
         escreva("Cidade: ")
         escreva(cidadeDestino[cont])
         escreval
         escreval("******************")
         escreval
         cont <- cont + 1
      fimse
   fimenquanto
   enquanto (opcao <> "1") faca
      escreval("1 - Sair")
      leia (opcao)
      se (opcao <> "1") entao
         escreval
         escreval("**** Opção inexistente!!! ****")
         escreval("Por favor, digite uma opção válida")
         escreval("**********************************")
      fimse
   fimenquanto
   limpatela
   opcao <- ""
fimprocedimento

procedimento reservaDestino()
inicio
   cont <- 1
   enquanto (cont <= 100) faca
      escreval("********************")
      escreval("********************")
      escreval("Reserva de destinos")
      escreval("********************")
      escreval("********************")
      enquanto (cont <= 100) faca
      se(idDestino[cont] = 0) entao
         cont <- cont + 1
         escreval("Que dia você pretende viajar??")
         leia(dataDestino[cont])
         escreval
         escreval("Para que país??")
         leia(paisDestino[cont])
         escreval
         escreval("Para que cidade?")
         leia(cidadeDestino[cont])
         escreval
         opcao <- ""
         enquanto ((opcao <> "1")e(opcao <> "0")) faca
            escreval("1 - Reservar outro destino")
            escreval("0 - Sair")
            leia (opcao)
            se (opcao = "1") entao
               cont <- cont + 1
               escreval ("*** Reserva em analíse ***")
               limpatela
            senao
               se (opcao = "0") entao
                  cont <- 1000
               senao
                  limpatela
                  escreval("**** Opção inexistente!!! ****")
                  escreval("Por favor, digite uma opção válida")
               fimse
            fimse
         fimenquanto
      senao
         cont <- cont + 1
         limpatela
      fimse
   fimenquanto
   opcao <- ""
   limpatela
fimprocedimento

Inicio
   enquanto ((opcao <> "1")e(opcao <> "2")e(opcao <> "0")) faca
      escreval("**************************")
      escreval("**************************")
      escreval("Seja bem vindo(a)")
      escreval("CARCARÁ AGÊNCIA DE VIAGENS")
      escreval("**************************")
      escreval("**************************")
      escreval("1 - Clientes")
      escreval("2 - Destinos")
      escreval("0 - Sair")
      escreval("**************************")
      escreval("**************************")
      leia(opcao)
      limpatela
      //MENU
      se (opcao = "1") entao
         opcao <- ""
         enquanto ((opcao <> "1") e (opcao <> "2") e (opcao <> "0")) faca
            escreval("Clientes")
            escreval("**********************")
            escreval("**********************")
            escreval("1 - Cadastrar cliente")
            escreval("2 - Consultar cliente")
            escreval("0 - Sair")
            escreval("**********************")
            escreval("**********************")
            leia(opcao)
            limpatela
            //Clientes
            se (opcao = "1") entao
               cadastrarCliente()
            senao
               se (opcao = "2") entao
                  consultarCliente()
               senao
                  se (opcao <> "0") entao
                     escreval("**** Opção inexistente!!! ****")
                     escreval("Por favor, digite uma opção válida")
                     escreval
                  fimse
               fimse
            fimse
         fimenquanto
         opcao <- ""

      senao
         //destinos
         se (opcao ="2") entao
            opcao <- ""
            enquanto ((opcao <> "1") e (opcao <> "2") e (opcao <> "0")) faca
               escreval("Destinos")
               escreval("******************")
               escreval("1 - Cadastrar destinos")
               escreval("2 - Consultar destinos")
               escreval("3 - Reservar destinos")
               escreval("0 - Sair")
               escreval("******************")
               leia(opcao)
               limpatela

               se (opcao = "1") entao
                  cadastrarDestino()
               senao
                  se (opcao = "2") entao
                     consultarDestino()
                  senao
                     se(opcao = "3") entao
                       reservaDestino()
                       senao
                            se (opcao <> "0") entao
                            escreval ("**** Opção inexistente!!! ****")
                            escreval("Por favor, digite uma opção válida")
                            escreval
                     fimse
                  fimse
               fimse
            opcao <- ""
         senao
            se (opcao = "0") entao
            senao
               escreval("******************")
               escreval("Por favor, digite uma opção válida")
               escreval
            fimse
         fimse
      fimse
    fimse
fimenquanto

Fimalgoritmo

