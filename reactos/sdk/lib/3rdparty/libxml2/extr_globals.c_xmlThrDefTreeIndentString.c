
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int xmlThrDefMutex ;
 char const* xmlTreeIndentStringThrDef ;

const char * xmlThrDefTreeIndentString(const char * v) {
    const char * ret;
    xmlMutexLock(xmlThrDefMutex);
    ret = xmlTreeIndentStringThrDef;
    xmlTreeIndentStringThrDef = v;
    xmlMutexUnlock(xmlThrDefMutex);
    return ret;
}
