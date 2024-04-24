*** Settings ***
Library        SeleniumLibrary
Library    XML
Library    String


*** Variables ***
${amazon}                https://www.amazon.com.br/
${menu_eletronicos}      //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${header_eletronicos}    //h1[contains(.,'Eletrônicos e Tecnologia')]
${pesquisa}              //input[contains(@type,'text')]
${click_pesquisa}        nav-search-submit-button



*** Keywords ***
Abrir o navegador
    Open Browser        browser=chrome
    Maximize Browser Window
    #options=add_experimental_option("detach", True) 
    #para manter o browser aberto

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${amazon}
    Wait Until Element Is Visible    ${menu_eletronicos}

Entrar no menu "Eletrônicos"
    Click Element    ${menu_eletronicos}

Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Wait Until Element Is Visible    ${header_eletronicos}

Verificar se o título da página fica "${title}"
    Title Should Be    title=${title}

Verificar se aparece a categoria "${categoria}"
    Element Should Be Visible    locator=//a[@aria-label='${categoria}']

Digitar o nome de produto "${produto}" no campo de pesquisa
    Input Text    locator=${pesquisa}    text=${produto}

Clicar no botão de pesquisa
    Click Element    ${click_pesquisa}

Verificar o resultado da pesquisa se está listando o produto "${produto_pesquisado}"
    Wait Until Element Is Visible    locator=//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'${produto_pesquisado}')]


#GHERKIN STEPS - BDD
Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br
Quando entrar no menu Eletronicos
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"