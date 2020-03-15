*** Settings ***
Resource        ../PageObjectModel/login_Page.robot

*** Keywords ***
Prepare Chrome for Cases
    Set Global Variable     ${Browser}          Chrome
    Set Global Variable     ${URL}              http://automationpractice.com/index.php
    Set Global Variable     ${Explicit_TimeOut}         10s
    Open browser            ${URL}      ${Browser}         #this for open the browser for the passed driver and url
    set selenium speed      0.5s        #this is for setting speed of selenium execution

Open Sign In Page
    Get Title Of SignIn Page
    Click SignIn Button in Landing Page

User SignIn
    [Arguments]         ${Username}         ${Password}
    Insert Text in Email                ${Username}
    Insert Text In Password             ${Password}
    Click SignIn Button
    Verify User Logged In