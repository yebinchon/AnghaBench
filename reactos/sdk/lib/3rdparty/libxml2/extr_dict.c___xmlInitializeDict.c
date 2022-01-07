
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rand_r (int *) ;
 int rand_seed ;
 int srand (int ) ;
 int time (int *) ;
 int xmlDictInitialized ;
 int * xmlDictMutex ;
 int * xmlNewRMutex () ;
 int xmlRMutexLock (int *) ;
 int xmlRMutexUnlock (int *) ;

int __xmlInitializeDict(void) {
    if (xmlDictInitialized)
        return(1);

    if ((xmlDictMutex = xmlNewRMutex()) == ((void*)0))
        return(0);
    xmlRMutexLock(xmlDictMutex);
    xmlDictInitialized = 1;
    xmlRMutexUnlock(xmlDictMutex);
    return(1);
}
