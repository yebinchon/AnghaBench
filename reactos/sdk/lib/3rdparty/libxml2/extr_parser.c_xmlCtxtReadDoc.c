
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlParserInputPtr ;
typedef int * xmlParserCtxtPtr ;
typedef int * xmlDocPtr ;
typedef int xmlChar ;


 int inputPush (int *,int *) ;
 int xmlCtxtReset (int *) ;
 int * xmlDoRead (int *,char const*,char const*,int,int) ;
 int xmlInitParser () ;
 int * xmlNewStringInputStream (int *,int const*) ;

xmlDocPtr
xmlCtxtReadDoc(xmlParserCtxtPtr ctxt, const xmlChar * cur,
               const char *URL, const char *encoding, int options)
{
    xmlParserInputPtr stream;

    if (cur == ((void*)0))
        return (((void*)0));
    if (ctxt == ((void*)0))
        return (((void*)0));
    xmlInitParser();

    xmlCtxtReset(ctxt);

    stream = xmlNewStringInputStream(ctxt, cur);
    if (stream == ((void*)0)) {
        return (((void*)0));
    }
    inputPush(ctxt, stream);
    return (xmlDoRead(ctxt, URL, encoding, options, 1));
}
