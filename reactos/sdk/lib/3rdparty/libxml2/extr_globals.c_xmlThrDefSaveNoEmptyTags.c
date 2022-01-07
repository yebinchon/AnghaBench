
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int xmlSaveNoEmptyTagsThrDef ;
 int xmlThrDefMutex ;

int xmlThrDefSaveNoEmptyTags(int v) {
    int ret;
    xmlMutexLock(xmlThrDefMutex);
    ret = xmlSaveNoEmptyTagsThrDef;
    xmlSaveNoEmptyTagsThrDef = v;
    xmlMutexUnlock(xmlThrDefMutex);
    return ret;
}
