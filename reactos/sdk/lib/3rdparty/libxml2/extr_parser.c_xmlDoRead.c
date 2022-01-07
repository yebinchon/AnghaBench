
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* xmlParserCtxtPtr ;
typedef int * xmlDocPtr ;
typedef int * xmlCharEncodingHandlerPtr ;
typedef int xmlChar ;
struct TYPE_9__ {int * myDoc; scalar_t__ recovery; scalar_t__ wellFormed; TYPE_1__* input; } ;
struct TYPE_8__ {char* filename; } ;


 int xmlCtxtUseOptionsInternal (TYPE_2__*,int,char const*) ;
 int * xmlFindCharEncodingHandler (char const*) ;
 int xmlFreeDoc (int *) ;
 int xmlFreeParserCtxt (TYPE_2__*) ;
 int xmlParseDocument (TYPE_2__*) ;
 scalar_t__ xmlStrdup (int const*) ;
 int xmlSwitchToEncoding (TYPE_2__*,int *) ;

__attribute__((used)) static xmlDocPtr
xmlDoRead(xmlParserCtxtPtr ctxt, const char *URL, const char *encoding,
          int options, int reuse)
{
    xmlDocPtr ret;

    xmlCtxtUseOptionsInternal(ctxt, options, encoding);
    if (encoding != ((void*)0)) {
        xmlCharEncodingHandlerPtr hdlr;

 hdlr = xmlFindCharEncodingHandler(encoding);
 if (hdlr != ((void*)0))
     xmlSwitchToEncoding(ctxt, hdlr);
    }
    if ((URL != ((void*)0)) && (ctxt->input != ((void*)0)) &&
        (ctxt->input->filename == ((void*)0)))
        ctxt->input->filename = (char *) xmlStrdup((const xmlChar *) URL);
    xmlParseDocument(ctxt);
    if ((ctxt->wellFormed) || ctxt->recovery)
        ret = ctxt->myDoc;
    else {
        ret = ((void*)0);
 if (ctxt->myDoc != ((void*)0)) {
     xmlFreeDoc(ctxt->myDoc);
 }
    }
    ctxt->myDoc = ((void*)0);
    if (!reuse) {
 xmlFreeParserCtxt(ctxt);
    }

    return (ret);
}
