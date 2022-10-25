*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${baseUrl}    https://google.com
${search_box_elmt}    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input
${search_btn_elmt}    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[1]
${search_result_elmt}    search

*** Keywords ***
Go to LandingPage
    go to    ${baseUrl}

Input Search Keyword
    [Arguments]    ${keyword}
    input text    ${search_box_elmt}    ${keyword}

Click Search Button
    click button    ${search_btn_elmt}

Verify Search Result Contain Keyword
    [Arguments]    ${result_keyword}
    element should contain    ${search_result_elmt}    ${result_keyword}