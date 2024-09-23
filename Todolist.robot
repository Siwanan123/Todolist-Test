*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://abhigyank.github.io/To-Do-List/

*** Test Cases ***
Add New Item To Todo List
    [Documentation]    ทดสอบการเพิ่มรายการใหม่ใน Todo List
    Open Browser    ${URL}    chrome
    Input Text    id=new-task    Test
    click element    //i[@class="material-icons"]
    #Click Button    //button[@class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored"]    # add
    Input Text     id=new-task    meeting
    click element    //i[@class="material-icons"]
    Input Text    id=new-task    Training
    click element    //i[@class="material-icons"]
    Input Text    id=new-task    Design Testcase
    click element    //i[@class="material-icons"]
    click element       (//span[@class="mdl-tabs__ripple-container mdl-js-ripple-effect"])[2]    #todotask
    click element    //label[@for="1"]    #check box complete
    sleep    2s
    click element    //label[@for="1"]
    sleep  2s
    #click element    //span[@class="mdl-checkbox__ripple-container mdl-js-ripple-effect mdl-ripple--center"]
    CLICK ELEMENT     (//button[@id='1'])   #ลบ
    sleep  2s
    click element       (//span[@class="mdl-tabs__ripple-container mdl-js-ripple-effect"])[3]    #complete
    click element   (//button[@id='2'])    #ลบ complete


