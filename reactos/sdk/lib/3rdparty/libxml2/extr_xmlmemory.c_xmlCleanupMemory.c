
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmlFreeMutex (int *) ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 scalar_t__ xmlMemInitialized ;
 int * xmlMemMutex ;

void
xmlCleanupMemory(void) {




    if (xmlMemInitialized == 0)
        return;

    xmlFreeMutex(xmlMemMutex);
    xmlMemMutex = ((void*)0);
    xmlMemInitialized = 0;




}
