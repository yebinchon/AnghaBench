
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmlIndentTreeOutputThrDef ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int xmlThrDefMutex ;

int xmlThrDefIndentTreeOutput(int v) {
    int ret;
    xmlMutexLock(xmlThrDefMutex);
    ret = xmlIndentTreeOutputThrDef;
    xmlIndentTreeOutputThrDef = v;
    xmlMutexUnlock(xmlThrDefMutex);
    return ret;
}
