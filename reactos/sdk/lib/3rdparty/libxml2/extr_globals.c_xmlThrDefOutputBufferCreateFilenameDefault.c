
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlOutputBufferCreateFilenameFunc ;


 int * __xmlOutputBufferCreateFilename ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int * xmlOutputBufferCreateFilenameValueThrDef ;
 int xmlThrDefMutex ;

xmlOutputBufferCreateFilenameFunc
xmlThrDefOutputBufferCreateFilenameDefault(xmlOutputBufferCreateFilenameFunc func)
{
    xmlOutputBufferCreateFilenameFunc old;

    xmlMutexLock(xmlThrDefMutex);
    old = xmlOutputBufferCreateFilenameValueThrDef;





    xmlOutputBufferCreateFilenameValueThrDef = func;
    xmlMutexUnlock(xmlThrDefMutex);

    return(old);
}
