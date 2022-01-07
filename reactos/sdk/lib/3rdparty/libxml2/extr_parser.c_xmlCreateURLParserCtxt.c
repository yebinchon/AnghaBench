
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int * xmlParserInputPtr ;
typedef TYPE_1__* xmlParserCtxtPtr ;
struct TYPE_8__ {int linenumbers; char* directory; } ;


 int inputPush (TYPE_1__*,int *) ;
 int xmlCtxtUseOptionsInternal (TYPE_1__*,int,int *) ;
 int xmlErrMemory (int *,char*) ;
 int xmlFreeParserCtxt (TYPE_1__*) ;
 int * xmlLoadExternalEntity (char const*,int *,TYPE_1__*) ;
 TYPE_1__* xmlNewParserCtxt () ;
 char* xmlParserGetDirectory (char const*) ;

xmlParserCtxtPtr
xmlCreateURLParserCtxt(const char *filename, int options)
{
    xmlParserCtxtPtr ctxt;
    xmlParserInputPtr inputStream;
    char *directory = ((void*)0);

    ctxt = xmlNewParserCtxt();
    if (ctxt == ((void*)0)) {
 xmlErrMemory(((void*)0), "cannot allocate parser context");
 return(((void*)0));
    }

    if (options)
 xmlCtxtUseOptionsInternal(ctxt, options, ((void*)0));
    ctxt->linenumbers = 1;

    inputStream = xmlLoadExternalEntity(filename, ((void*)0), ctxt);
    if (inputStream == ((void*)0)) {
 xmlFreeParserCtxt(ctxt);
 return(((void*)0));
    }

    inputPush(ctxt, inputStream);
    if ((ctxt->directory == ((void*)0)) && (directory == ((void*)0)))
        directory = xmlParserGetDirectory(filename);
    if ((ctxt->directory == ((void*)0)) && (directory != ((void*)0)))
        ctxt->directory = directory;

    return(ctxt);
}
