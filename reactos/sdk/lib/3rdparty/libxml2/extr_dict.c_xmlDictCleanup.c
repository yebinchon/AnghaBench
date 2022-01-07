
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ xmlDictInitialized ;
 int xmlDictMutex ;
 int xmlFreeRMutex (int ) ;

void
xmlDictCleanup(void) {
    if (!xmlDictInitialized)
        return;

    xmlFreeRMutex(xmlDictMutex);

    xmlDictInitialized = 0;
}
