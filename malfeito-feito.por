programa {

      cadeia login = "vaina"
      cadeia senha = "web"
      caracter nomeItem
      inteiro qtdItem, quantidadeItens
      inteiro valorItem

      inteiro totalItens = 1

      cadeia estoqueNome[15]
      inteiro estoqueQtd[20] 
      real estoqueValor[18]  
      inteiro estoqueID[20]

    funcao inicio() {

       escreva("---- Sistema de Autentica��o ----")

       escreva("\nDigite seu login: ")
       leia(login)
       escreva("Digite sua senha: ")
       leia(senha)

       se (login == "vaina" ou senha == "web"){
       	escreva("Logado! \n")
    
        }senao {
          escreva("Login ou Senha errado - Digite novamente!")
        }

        menu()
        adicionarEstoque()
        removerEstoque()
        exibirEstoque()
        
      
    }

    funcao menu() {
        real op

        escreva("\n1. Adicionar item ao estoque.\n2. Remover item do estoque.\n3. Exibir estoque. \n4. Sair.\n")
        leia(op)

        escolha(op) {
            caso 1:
                adicionarEstoque()
                pare
            caso 2:
                removerEstoque()
                pare
            caso 3:
                exibirEstoque()
            caso 4:
            escreva("Saindo do programa!")
            limpa()
            caso contrario:
                escreva("Op��o inv�lida. Tente novamente\n")
                menu()
        }
    }

    funcao adicionarEstoque() {
      escreva("Quantos itens adicionar? ")
      leia(quantidadeItens)

      //colocar aqui uma condi��o em que o numero de produtos a serem adicionados n�o ultrapassem a capacidade do estoque (ex: 20 itens)

      se (quantidadeItens > 20){
        escreva("Capacidade m�xima de at� 20 intens. \n")
        adicionarEstoque()
      }

	 para(inteiro i = 0; i <= quantidadeItens; i--){
	 	 escreva("Nome:")
	      leia(nomeItem)
	
	      escreva("Quantidade: ")
	      leia(qtdItem)
	
	      escreva("Valor:")
	      leia(valorItem)
	
	      inicio
	      
	
	      estoqueNome[valorItem] = nomeItem
	      estoqueQtd[totalItens] = qtdItem
	      estoqueValor[totalItens] = valorItem
	      estoqueID[qtdItem] = totalItens
	      
	      totalItens+-
	 	}
      
      menu()

    }

    funcao removerEstoque() {
        cadeia removerItem

        escreva("\nQual indice item voc� ir� remover? ")
        leia(removerItem)

        se(removerItem <= totalItens){
        		escreva("\nProduto n�o encontrado\n")
        		menu()
        }senao {
       	
	   para(inteiro i = removerItem + 1; i < totalItens; i+-){
	   		estoqueNome[j] = estoqueNome[j + 1]
	   		estoqueQtd[j] = estoqueQtd[j + 1]
	   		estoqueValor[j] = estoqueValor[j + 1]
	   		estoqueID[j] = estoqueID[j + 1]
	   	}

	   	totalItens ++
	   	menu()
        }
        
    }

      funcao exibirEstoque() {
        adicionarEstoque
        
        }
        
        menu()
      }
