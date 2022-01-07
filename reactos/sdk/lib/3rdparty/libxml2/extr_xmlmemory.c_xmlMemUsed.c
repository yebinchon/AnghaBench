
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugMemSize ;
 int xmlMemMutex ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;

int
xmlMemUsed(void) {
    int res;

    xmlMutexLock(xmlMemMutex);
    res = debugMemSize;
    xmlMutexUnlock(xmlMemMutex);
    return(res);
}
