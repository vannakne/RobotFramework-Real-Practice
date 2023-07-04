*** Settings ***
Resource    ../Resources/common.robot
Resource    ../Resources/PageObject/landingPage.robot
Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test

*** Test Cases ***
Search RobotFramework keyword
    [Tags]    Search
    Go to LandingPage
    Input Search Keyword    robotframework
    Click Search Button
    Verify Search Result Contain Keyword    robotframework
