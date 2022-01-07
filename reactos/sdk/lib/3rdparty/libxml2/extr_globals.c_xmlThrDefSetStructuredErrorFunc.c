
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlStructuredErrorFunc ;


 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 void* xmlStructuredErrorContextThrDef ;
 int xmlStructuredErrorThrDef ;
 int xmlThrDefMutex ;

void
xmlThrDefSetStructuredErrorFunc(void *ctx, xmlStructuredErrorFunc handler) {
    xmlMutexLock(xmlThrDefMutex);
    xmlStructuredErrorContextThrDef = ctx;
    xmlStructuredErrorThrDef = handler;
    xmlMutexUnlock(xmlThrDefMutex);
}
