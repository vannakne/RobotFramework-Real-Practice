*** Settings ***
Resource    ../Resources/common.robot
Resource    ../Resources/PageObject/landingPage.robot
Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test

*** Test Cases ***
Search RobotFramework keyword
    [Tags]    Search
    landingPage.Go to LandingPage
    landingPage.Input Search Keyword    robotframework
    landingPage.Click Search Button
    landingPage.Verify Search Result Contain Keyword    robotframework