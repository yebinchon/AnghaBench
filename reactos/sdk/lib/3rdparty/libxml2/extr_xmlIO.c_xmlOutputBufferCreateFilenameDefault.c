
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlOutputBufferCreateFilenameFunc ;


 int * __xmlOutputBufferCreateFilename ;
 int * xmlOutputBufferCreateFilenameValue ;

xmlOutputBufferCreateFilenameFunc
xmlOutputBufferCreateFilenameDefault(xmlOutputBufferCreateFilenameFunc func)
{
    xmlOutputBufferCreateFilenameFunc old = xmlOutputBufferCreateFilenameValue;





    xmlOutputBufferCreateFilenameValue = func;
    return(old);
}
