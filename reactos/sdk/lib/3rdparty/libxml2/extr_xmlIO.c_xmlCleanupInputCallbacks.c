
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * closecallback; int * readcallback; int * opencallback; int * matchcallback; } ;


 scalar_t__ xmlInputCallbackInitialized ;
 int xmlInputCallbackNr ;
 TYPE_1__* xmlInputCallbackTable ;

void
xmlCleanupInputCallbacks(void)
{
    int i;

    if (!xmlInputCallbackInitialized)
        return;

    for (i = xmlInputCallbackNr - 1; i >= 0; i--) {
        xmlInputCallbackTable[i].matchcallback = ((void*)0);
        xmlInputCallbackTable[i].opencallback = ((void*)0);
        xmlInputCallbackTable[i].readcallback = ((void*)0);
        xmlInputCallbackTable[i].closecallback = ((void*)0);
    }

    xmlInputCallbackNr = 0;
    xmlInputCallbackInitialized = 0;
}
