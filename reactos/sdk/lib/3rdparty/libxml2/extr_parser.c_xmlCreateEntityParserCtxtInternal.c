
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int * xmlParserInputPtr ;
typedef TYPE_1__* xmlParserCtxtPtr ;
typedef int xmlChar ;
struct TYPE_8__ {char* directory; scalar_t__ input_id; int _private; int options; } ;


 int inputPush (TYPE_1__*,int *) ;
 int * xmlBuildURI (int const*,int const*) ;
 int xmlFree (int *) ;
 int xmlFreeParserCtxt (TYPE_1__*) ;
 int * xmlLoadExternalEntity (char*,char*,TYPE_1__*) ;
 TYPE_1__* xmlNewParserCtxt () ;
 char* xmlParserGetDirectory (char*) ;

__attribute__((used)) static xmlParserCtxtPtr
xmlCreateEntityParserCtxtInternal(const xmlChar *URL, const xmlChar *ID,
                   const xmlChar *base, xmlParserCtxtPtr pctx) {
    xmlParserCtxtPtr ctxt;
    xmlParserInputPtr inputStream;
    char *directory = ((void*)0);
    xmlChar *uri;

    ctxt = xmlNewParserCtxt();
    if (ctxt == ((void*)0)) {
 return(((void*)0));
    }

    if (pctx != ((void*)0)) {
        ctxt->options = pctx->options;
        ctxt->_private = pctx->_private;




 ctxt->input_id = pctx->input_id + 1;
    }

    uri = xmlBuildURI(URL, base);

    if (uri == ((void*)0)) {
 inputStream = xmlLoadExternalEntity((char *)URL, (char *)ID, ctxt);
 if (inputStream == ((void*)0)) {
     xmlFreeParserCtxt(ctxt);
     return(((void*)0));
 }

 inputPush(ctxt, inputStream);

 if ((ctxt->directory == ((void*)0)) && (directory == ((void*)0)))
     directory = xmlParserGetDirectory((char *)URL);
 if ((ctxt->directory == ((void*)0)) && (directory != ((void*)0)))
     ctxt->directory = directory;
    } else {
 inputStream = xmlLoadExternalEntity((char *)uri, (char *)ID, ctxt);
 if (inputStream == ((void*)0)) {
     xmlFree(uri);
     xmlFreeParserCtxt(ctxt);
     return(((void*)0));
 }

 inputPush(ctxt, inputStream);

 if ((ctxt->directory == ((void*)0)) && (directory == ((void*)0)))
     directory = xmlParserGetDirectory((char *)uri);
 if ((ctxt->directory == ((void*)0)) && (directory != ((void*)0)))
     ctxt->directory = directory;
 xmlFree(uri);
    }
    return(ctxt);
}
