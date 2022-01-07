
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlDictPtr ;
struct TYPE_3__ {int ref_counter; } ;


 int __xmlInitializeDict () ;
 int xmlDictInitialized ;
 int xmlDictMutex ;
 int xmlRMutexLock (int ) ;
 int xmlRMutexUnlock (int ) ;

int
xmlDictReference(xmlDictPtr dict) {
    if (!xmlDictInitialized)
        if (!__xmlInitializeDict())
            return(-1);

    if (dict == ((void*)0)) return -1;
    xmlRMutexLock(xmlDictMutex);
    dict->ref_counter++;
    xmlRMutexUnlock(xmlDictMutex);
    return(0);
}
