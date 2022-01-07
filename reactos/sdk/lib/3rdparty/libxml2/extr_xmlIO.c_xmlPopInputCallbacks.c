
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * closecallback; int * readcallback; int * opencallback; int * matchcallback; } ;


 int xmlInputCallbackInitialized ;
 size_t xmlInputCallbackNr ;
 TYPE_1__* xmlInputCallbackTable ;

int
xmlPopInputCallbacks(void)
{
    if (!xmlInputCallbackInitialized)
        return(-1);

    if (xmlInputCallbackNr <= 0)
        return(-1);

    xmlInputCallbackNr--;
    xmlInputCallbackTable[xmlInputCallbackNr].matchcallback = ((void*)0);
    xmlInputCallbackTable[xmlInputCallbackNr].opencallback = ((void*)0);
    xmlInputCallbackTable[xmlInputCallbackNr].readcallback = ((void*)0);
    xmlInputCallbackTable[xmlInputCallbackNr].closecallback = ((void*)0);

    return(xmlInputCallbackNr);
}
