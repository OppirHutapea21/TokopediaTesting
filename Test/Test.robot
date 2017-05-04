*** Settings ***
Library           Selenium2Library
Library           AutoItLibrary
Resource          TestingToped.txt

*** Test Cases ***
TC-1
    Open Browser    https://www.tokopedia.com/contact-us#step1    chrome
    Click Element    xpath=//div[@id="problem-list-c1"]/a
    Sleep    5s
    Click Element    xpath=//div[@id="solution-list-c1"]/a[6]
    Sleep    5s
    Click Element    xpath=//*[@id="step6"]/div[3]/a[2]
    Sleep    2s
    Input Text    xpath=//*[@id="ticket_reply_msg"]    ${DETAIL PERMASALAHAN}
    Sleep    2s
    Input Text    xpath=//*[@id="full_name"]    ${FULL NAME}
    Sleep    2s
    Input Text    xpath=//*[@id="user_email"]    ${EMAIL}
    Choose File    xpath=//*[@id="pickfiles-nav1"]    ${CURDIR}${/}bunga1.jpg
    Run    ${AUTOEXE}
