
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmlLineNumbersDefaultValueThrDef ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int xmlThrDefMutex ;

int xmlThrDefLineNumbersDefaultValue(int v) {
    int ret;
    xmlMutexLock(xmlThrDefMutex);
    ret = xmlLineNumbersDefaultValueThrDef;
    xmlLineNumbersDefaultValueThrDef = v;
    xmlMutexUnlock(xmlThrDefMutex);
    return ret;
}
