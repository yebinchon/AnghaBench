
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int xmlPedanticParserDefaultValueThrDef ;
 int xmlThrDefMutex ;

int xmlThrDefPedanticParserDefaultValue(int v) {
    int ret;
    xmlMutexLock(xmlThrDefMutex);
    ret = xmlPedanticParserDefaultValueThrDef;
    xmlPedanticParserDefaultValueThrDef = v;
    xmlMutexUnlock(xmlThrDefMutex);
    return ret;
}
