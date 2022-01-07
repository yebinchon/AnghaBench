
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlGenericErrorFunc ;


 void* xmlGenericErrorContextThrDef ;
 int * xmlGenericErrorDefaultFunc ;
 int * xmlGenericErrorThrDef ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int xmlThrDefMutex ;

void
xmlThrDefSetGenericErrorFunc(void *ctx, xmlGenericErrorFunc handler) {
    xmlMutexLock(xmlThrDefMutex);
    xmlGenericErrorContextThrDef = ctx;
    if (handler != ((void*)0))
 xmlGenericErrorThrDef = handler;
    else
 xmlGenericErrorThrDef = xmlGenericErrorDefaultFunc;
    xmlMutexUnlock(xmlThrDefMutex);
}
