
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int xmlParserDebugEntitiesThrDef ;
 int xmlThrDefMutex ;

int xmlThrDefParserDebugEntities(int v) {
    int ret;
    xmlMutexLock(xmlThrDefMutex);
    ret = xmlParserDebugEntitiesThrDef;
    xmlParserDebugEntitiesThrDef = v;
    xmlMutexUnlock(xmlThrDefMutex);
    return ret;
}
