*** Settings ***
Library     SeleniumLibrary

*** Variables ***
# This Section is Mac
${browser}      https://www.apple.com/in/
${Buy_Link}     xpath://main[@class='main']//section[2]/div[1]/div/div/div[1]/div/a[2]
${15_Link}      xpath://button[@data-autom='filterButton-15inchm3']
${16GB_Unified_Memory}  xpath://button[contains(@data-autom, 'proceed-15inch-ultimate')]
${2TB_SSD}      xpath://*[@id="root"]/div[3]/div[3]/div[2]/div[1]/div[2]/div/div[3]
${Add_To_Cart}  xpath://button[contains(@name, 'add-to-cart')]
${Studio_Standard}  xpath://button[contains(@data-autom, 'addToBag-studioStandardTiltGroup')]
${Proceed}      xpath://button[contains(@data-autom, 'proceed')]

*** Test Cases ***
BuyMac
    Open Browser    ${browser}     Chrome
    Maximize Browser Window
    Click Link      ${Buy_Link}
    Wait Until Element Is Visible    ${15_Link}
    Click Button      ${15_Link}
    Click Button      ${16GB_Unified_Memory}
    Sleep    5s
    Execute Javascript      window.scrollTo(0,500)
    Click Element    ${2TB_SSD}
    Click Button    ${Add_To_Cart}
    Click Button    ${Studio_Standard}
    Click Button    ${Proceed}

*** Keywords ***