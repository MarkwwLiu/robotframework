Get Element Css Property Value By Javascript
    [Documentation]    取得指定元素的 CSS 參數
    [Arguments]    ${element}    ${propertyName}    ${getAfterPropertyValue}=${False}
    IF    ${getAfterPropertyValue}==${False}
        ${propertyValue}    Execute JavaScript    return window.getComputedStyle(document.evaluate('${element}', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue).getPropertyValue('${propertyName}')
    ELSE
        ${propertyValue}    Execute JavaScript    return window.getComputedStyle(document.querySelector('${element}'), ':after').getPropertyValue('${propertyName}')
    END
    [Return]    ${propertyValue}



# 呼叫方法
${test1}    Get Element Css Property Value By Javascript    div.sc-fefff-1 > span    content    getAfterPropertyValue=${True}
${test}    Get Element Css Property Value By Javascript    //*[@id="__next"]/div[1]/div[2]/main/div[1]/div[1]/div[1]/span    line-height    getAfterPropertyValue=${False}
