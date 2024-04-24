*** Settings ***
Documentation      Esta swit testa o site da Amazon.com.br
Resource           main.robot  
Test Setup         Abrir o navegador
Test Teardown      Fechar o navegador
Library            SeleniumLibrary



*** Test Cases ***
CT01 - Acesso ao menu "Eletrônicos"
    
    [Documentation]     Esse teste verifica o menu de Eletrônicos do site da Amazon.com.br
    ...                 E verifica a categoria computadores e Informática
    [Tags]        CT01
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Computadores e Informática"
  
CT02 - Pesquisa de um Produto
    [Documentation]    Esse teste verifica a busca de um Xbox Series S
    [Tags]        CT02
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Xbox Series S"

CT03 - Pesquisa PS5
   [Documentation]    Esse teste verifica a busca de um Playstation 5
    [Tags]        CT03
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Playstation 5" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Playstation 5"

CT04 - Pesquisa Nintendo Switch
   [Documentation]    Esse teste verifica a busca de um Playstation 5
    [Tags]        CT04
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Nintendo Switch" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Nintendo Switch"

CT04 - Pesquisa Controle PS5
   [Documentation]    Esse teste verifica a busca de um Playstation 5
    [Tags]        CT05
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Controle PS5" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Controle PS5"