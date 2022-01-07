
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlParserInputPtr ;
typedef int * xmlParserCtxtPtr ;
typedef int * xmlDocPtr ;


 int inputPush (int *,int *) ;
 int xmlCtxtReset (int *) ;
 int * xmlDoRead (int *,int *,char const*,int,int) ;
 int xmlInitParser () ;
 int * xmlLoadExternalEntity (char const*,int *,int *) ;

xmlDocPtr
xmlCtxtReadFile(xmlParserCtxtPtr ctxt, const char *filename,
                const char *encoding, int options)
{
    xmlParserInputPtr stream;

    if (filename == ((void*)0))
        return (((void*)0));
    if (ctxt == ((void*)0))
        return (((void*)0));
    xmlInitParser();

    xmlCtxtReset(ctxt);

    stream = xmlLoadExternalEntity(filename, ((void*)0), ctxt);
    if (stream == ((void*)0)) {
        return (((void*)0));
    }
    inputPush(ctxt, stream);
    return (xmlDoRead(ctxt, ((void*)0), encoding, options, 1));
}
