
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmlLoadExtDtdDefaultValueThrDef ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int xmlThrDefMutex ;

int xmlThrDefLoadExtDtdDefaultValue(int v) {
    int ret;
    xmlMutexLock(xmlThrDefMutex);
    ret = xmlLoadExtDtdDefaultValueThrDef;
    xmlLoadExtDtdDefaultValueThrDef = v;
    xmlMutexUnlock(xmlThrDefMutex);
    return ret;
}
