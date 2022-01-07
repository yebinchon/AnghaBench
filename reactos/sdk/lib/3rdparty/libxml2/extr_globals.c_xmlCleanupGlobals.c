
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __xmlGlobalInitMutexDestroy () ;
 int xmlFreeMutex (int *) ;
 int * xmlThrDefMutex ;

void xmlCleanupGlobals(void)
{
    if (xmlThrDefMutex != ((void*)0)) {
 xmlFreeMutex(xmlThrDefMutex);
 xmlThrDefMutex = ((void*)0);
    }
    __xmlGlobalInitMutexDestroy();
}
