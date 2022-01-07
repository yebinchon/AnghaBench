
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlParserCtxtPtr ;
typedef int * xmlDocPtr ;


 int * xmlCreateMemoryParserCtxt (char const*,int) ;
 int * xmlDoRead (int *,char const*,char const*,int,int ) ;
 int xmlInitParser () ;

xmlDocPtr
xmlReadMemory(const char *buffer, int size, const char *URL, const char *encoding, int options)
{
    xmlParserCtxtPtr ctxt;

    xmlInitParser();
    ctxt = xmlCreateMemoryParserCtxt(buffer, size);
    if (ctxt == ((void*)0))
        return (((void*)0));
    return (xmlDoRead(ctxt, URL, encoding, options, 0));
}
