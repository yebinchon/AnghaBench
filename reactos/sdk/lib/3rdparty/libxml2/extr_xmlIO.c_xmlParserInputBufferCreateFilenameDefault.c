
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlParserInputBufferCreateFilenameFunc ;


 int * __xmlParserInputBufferCreateFilename ;
 int * xmlParserInputBufferCreateFilenameValue ;

xmlParserInputBufferCreateFilenameFunc
xmlParserInputBufferCreateFilenameDefault(xmlParserInputBufferCreateFilenameFunc func)
{
    xmlParserInputBufferCreateFilenameFunc old = xmlParserInputBufferCreateFilenameValue;
    if (old == ((void*)0)) {
  old = __xmlParserInputBufferCreateFilename;
 }

    xmlParserInputBufferCreateFilenameValue = func;
    return(old);
}
