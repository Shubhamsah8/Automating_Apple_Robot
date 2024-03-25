*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
LoginTest
    Open Browser    https://www.apple.com/in/     Chrome
    Click Link      xpath://main[@class='main']//section[2]/div[1]/div/div/div[1]/div/a[2]
    Click Link    xpath://button[contains(@data-autom, 'filterButton-15inchm3')]
    Click Link    xpath://button[contains(@data-autom, 'proceed-15inch-ultimate')]
*** Keywords ***