
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlNode ;
typedef int * xmlBufferPtr ;
typedef int xmlBufPtr ;


 int * xmlBufBackToBuffer (int ) ;
 int xmlBufFromBuffer (int *) ;
 int xmlBufGetNodeContent (int ,int const*) ;

int
xmlNodeBufGetContent(xmlBufferPtr buffer, const xmlNode *cur)
{
    xmlBufPtr buf;
    int ret;

    if ((cur == ((void*)0)) || (buffer == ((void*)0))) return(-1);
    buf = xmlBufFromBuffer(buffer);
    ret = xmlBufGetNodeContent(buf, cur);
    buffer = xmlBufBackToBuffer(buf);
    if ((ret < 0) || (buffer == ((void*)0)))
        return(-1);
    return(0);
}
