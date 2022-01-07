
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlParserCtxtPtr ;
typedef int * xmlDocPtr ;
typedef int xmlChar ;


 int * xmlCreateDocParserCtxt (int const*) ;
 int * xmlDoRead (int *,char const*,char const*,int,int ) ;
 int xmlInitParser () ;

xmlDocPtr
xmlReadDoc(const xmlChar * cur, const char *URL, const char *encoding, int options)
{
    xmlParserCtxtPtr ctxt;

    if (cur == ((void*)0))
        return (((void*)0));
    xmlInitParser();

    ctxt = xmlCreateDocParserCtxt(cur);
    if (ctxt == ((void*)0))
        return (((void*)0));
    return (xmlDoRead(ctxt, URL, encoding, options, 0));
}
