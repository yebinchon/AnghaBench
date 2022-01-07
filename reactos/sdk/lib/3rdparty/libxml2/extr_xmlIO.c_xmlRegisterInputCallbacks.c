
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xmlInputReadCallback ;
typedef int xmlInputOpenCallback ;
typedef int xmlInputMatchCallback ;
typedef int xmlInputCloseCallback ;
struct TYPE_2__ {int closecallback; int readcallback; int opencallback; int matchcallback; } ;


 size_t MAX_INPUT_CALLBACK ;
 int xmlInputCallbackInitialized ;
 size_t xmlInputCallbackNr ;
 TYPE_1__* xmlInputCallbackTable ;

int
xmlRegisterInputCallbacks(xmlInputMatchCallback matchFunc,
 xmlInputOpenCallback openFunc, xmlInputReadCallback readFunc,
 xmlInputCloseCallback closeFunc) {
    if (xmlInputCallbackNr >= MAX_INPUT_CALLBACK) {
 return(-1);
    }
    xmlInputCallbackTable[xmlInputCallbackNr].matchcallback = matchFunc;
    xmlInputCallbackTable[xmlInputCallbackNr].opencallback = openFunc;
    xmlInputCallbackTable[xmlInputCallbackNr].readcallback = readFunc;
    xmlInputCallbackTable[xmlInputCallbackNr].closecallback = closeFunc;
    xmlInputCallbackInitialized = 1;
    return(xmlInputCallbackNr++);
}
