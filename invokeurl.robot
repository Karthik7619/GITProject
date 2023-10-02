*** Settings ***
Library  SeleniumLibrary
Library  WebDriverManager

*** Variables ***
${browser}  chrome
${url}      https://demo.nopcommerce.com/

*** Keywords ***
loginToApplication
    Maximize Browser window
    sleep   5s
    click link   xpath://a[normalize-space()='Log in']
    input text  id:Email        karthik.nexgen@gmail.com
    input text  id:Password     Sarah1967*
    click button   xpath://button[normalize-space()='Log in']
    sleep   2s
    click link  xpath://a[normalize-space()='Log out']

*** Test Cases ***
LoginTest
    Open Browser  ${url}     ${browser}
    loginToApplication
    close browser


