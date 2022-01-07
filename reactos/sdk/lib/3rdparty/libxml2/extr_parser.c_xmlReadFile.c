
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlParserCtxtPtr ;
typedef int * xmlDocPtr ;


 int * xmlCreateURLParserCtxt (char const*,int) ;
 int * xmlDoRead (int *,int *,char const*,int,int ) ;
 int xmlInitParser () ;

xmlDocPtr
xmlReadFile(const char *filename, const char *encoding, int options)
{
    xmlParserCtxtPtr ctxt;

    xmlInitParser();
    ctxt = xmlCreateURLParserCtxt(filename, options);
    if (ctxt == ((void*)0))
        return (((void*)0));
    return (xmlDoRead(ctxt, ((void*)0), encoding, options, 0));
}
