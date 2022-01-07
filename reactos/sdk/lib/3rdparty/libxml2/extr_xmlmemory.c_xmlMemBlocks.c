
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugMemBlocks ;
 int xmlMemMutex ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;

int
xmlMemBlocks(void) {
    int res;

    xmlMutexLock(xmlMemMutex);
    res = debugMemBlocks;
    xmlMutexUnlock(xmlMemMutex);
    return(res);
}
