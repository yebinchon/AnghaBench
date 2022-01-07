
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlParserInputBufferCreateFilenameFunc ;


 int * __xmlParserInputBufferCreateFilename ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int * xmlParserInputBufferCreateFilenameValueThrDef ;
 int xmlThrDefMutex ;

xmlParserInputBufferCreateFilenameFunc
xmlThrDefParserInputBufferCreateFilenameDefault(xmlParserInputBufferCreateFilenameFunc func)
{
    xmlParserInputBufferCreateFilenameFunc old;

    xmlMutexLock(xmlThrDefMutex);
    old = xmlParserInputBufferCreateFilenameValueThrDef;
    if (old == ((void*)0)) {
  old = __xmlParserInputBufferCreateFilename;
 }

    xmlParserInputBufferCreateFilenameValueThrDef = func;
    xmlMutexUnlock(xmlThrDefMutex);

    return(old);
}
