
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __xmlInitializeDict () ;
 int rand () ;
 int rand_r (int *) ;
 int rand_seed ;
 scalar_t__ xmlDictInitialized ;
 int xmlDictMutex ;
 int xmlRMutexLock (int ) ;
 int xmlRMutexUnlock (int ) ;

int __xmlRandom(void) {
    int ret;

    if (xmlDictInitialized == 0)
        __xmlInitializeDict();

    xmlRMutexLock(xmlDictMutex);



    ret = rand();

    xmlRMutexUnlock(xmlDictMutex);
    return(ret);
}
