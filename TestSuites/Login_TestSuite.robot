*** Settings ***
Documentation    Login Cases      #This for writing description for your test suite
Resource        ../Common_Keywords/Kewords_common_Login.robot
Library         SeleniumLibrary
Test Setup     Prepare Chrome for Cases
Test Teardown  close browser   #This like Teardown in Java, Mainly used to executed once at the end of suite execution

*** Test Cases ***

Test Case SignIn with Valid Credentials
    Open Sign In Page
    User SignIn         ELkurfchannel@gmail.com         123456

Test Case SignIn with Invalid Credentials
    Open Sign In Page
    User SignIn         ELkurfchannel@gmail.com         Invalid_password