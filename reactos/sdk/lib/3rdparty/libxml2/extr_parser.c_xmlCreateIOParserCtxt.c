
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int xmlSAXHandlerV1 ;
typedef TYPE_1__* xmlSAXHandlerPtr ;
typedef int xmlSAXHandler ;
typedef int * xmlParserInputPtr ;
typedef int * xmlParserInputBufferPtr ;
typedef TYPE_2__* xmlParserCtxtPtr ;
typedef int * xmlInputReadCallback ;
typedef int (* xmlInputCloseCallback ) (void*) ;
typedef int xmlCharEncoding ;
struct TYPE_15__ {void* userData; TYPE_1__* sax; } ;
struct TYPE_14__ {scalar_t__ initialized; } ;


 scalar_t__ XML_SAX2_MAGIC ;
 int inputPush (TYPE_2__*,int *) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int xmlDefaultSAXHandler ;
 int xmlErrMemory (TYPE_2__*,int *) ;
 int xmlFree (TYPE_1__*) ;
 int xmlFreeParserCtxt (TYPE_2__*) ;
 int xmlFreeParserInputBuffer (int *) ;
 scalar_t__ xmlMalloc (int) ;
 int * xmlNewIOInputStream (TYPE_2__*,int *,int ) ;
 TYPE_2__* xmlNewParserCtxt () ;
 int * xmlParserInputBufferCreateIO (int *,int (*) (void*),void*,int ) ;

xmlParserCtxtPtr
xmlCreateIOParserCtxt(xmlSAXHandlerPtr sax, void *user_data,
 xmlInputReadCallback ioread, xmlInputCloseCallback ioclose,
 void *ioctx, xmlCharEncoding enc) {
    xmlParserCtxtPtr ctxt;
    xmlParserInputPtr inputStream;
    xmlParserInputBufferPtr buf;

    if (ioread == ((void*)0)) return(((void*)0));

    buf = xmlParserInputBufferCreateIO(ioread, ioclose, ioctx, enc);
    if (buf == ((void*)0)) {
        if (ioclose != ((void*)0))
            ioclose(ioctx);
        return (((void*)0));
    }

    ctxt = xmlNewParserCtxt();
    if (ctxt == ((void*)0)) {
 xmlFreeParserInputBuffer(buf);
 return(((void*)0));
    }
    if (sax != ((void*)0)) {



     xmlFree(ctxt->sax);
 ctxt->sax = (xmlSAXHandlerPtr) xmlMalloc(sizeof(xmlSAXHandler));
 if (ctxt->sax == ((void*)0)) {
     xmlErrMemory(ctxt, ((void*)0));
     xmlFreeParserCtxt(ctxt);
     return(((void*)0));
 }
 memset(ctxt->sax, 0, sizeof(xmlSAXHandler));
 if (sax->initialized == XML_SAX2_MAGIC)
     memcpy(ctxt->sax, sax, sizeof(xmlSAXHandler));
 else
     memcpy(ctxt->sax, sax, sizeof(xmlSAXHandlerV1));
 if (user_data != ((void*)0))
     ctxt->userData = user_data;
    }

    inputStream = xmlNewIOInputStream(ctxt, buf, enc);
    if (inputStream == ((void*)0)) {
 xmlFreeParserCtxt(ctxt);
 return(((void*)0));
    }
    inputPush(ctxt, inputStream);

    return(ctxt);
}
