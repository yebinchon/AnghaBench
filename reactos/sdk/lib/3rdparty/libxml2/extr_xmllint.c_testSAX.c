
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int xmlSchemaValidityWarningFunc ;
typedef int xmlSchemaValidityErrorFunc ;
typedef int xmlSchemaValidCtxtPtr ;
typedef void* xmlSAXHandlerPtr ;
typedef int * xmlParserInputPtr ;
typedef int * xmlParserInputBufferPtr ;
typedef TYPE_1__* xmlParserCtxtPtr ;
struct TYPE_7__ {void* sax; int * myDoc; void* userData; } ;


 int XMLLINT_ERR_VALID ;
 int XML_CHAR_ENCODING_NONE ;
 scalar_t__ callbacks ;
 void* debugSAX2Handler ;
 void* debugSAXHandler ;
 void* emptySAXHandler ;
 int fprintf (int ,char*,...) ;
 int inputPush (TYPE_1__*,int *) ;
 scalar_t__ noout ;
 int progresult ;
 scalar_t__ repeat ;
 scalar_t__ sax1 ;
 int stderr ;
 int * wxschemas ;
 int xmlFreeDoc (int *) ;
 int xmlFreeParserCtxt (TYPE_1__*) ;
 int xmlFreeParserInputBuffer (int *) ;
 int * xmlNewIOInputStream (TYPE_1__*,int *,int ) ;
 TYPE_1__* xmlNewParserCtxt () ;
 int xmlParseDocument (TYPE_1__*) ;
 int * xmlParserInputBufferCreateFilename (char const*,int ) ;
 int xmlSchemaFreeValidCtxt (int ) ;
 int xmlSchemaNewValidCtxt (int *) ;
 int xmlSchemaSetValidErrors (int ,int ,int ,int ) ;
 int xmlSchemaValidateSetFilename (int ,char const*) ;
 int xmlSchemaValidateStream (int ,int *,int ,void*,void*) ;

__attribute__((used)) static void
testSAX(const char *filename) {
    xmlSAXHandlerPtr handler;
    const char *user_data = "user_data";
    xmlParserInputBufferPtr buf = ((void*)0);
    xmlParserInputPtr inputStream;
    xmlParserCtxtPtr ctxt = ((void*)0);
    xmlSAXHandlerPtr old_sax = ((void*)0);

    callbacks = 0;

    if (noout) {
        handler = emptySAXHandler;




    } else {
        handler = debugSAX2Handler;
    }




    buf = xmlParserInputBufferCreateFilename(filename, XML_CHAR_ENCODING_NONE);
    if (buf == ((void*)0)) {
        goto error;
    }
    {



 ctxt = xmlNewParserCtxt();
 if (ctxt == ((void*)0)) {
     xmlFreeParserInputBuffer(buf);
     goto error;
 }
 old_sax = ctxt->sax;
 ctxt->sax = handler;
 ctxt->userData = (void *) user_data;
 inputStream = xmlNewIOInputStream(ctxt, buf, XML_CHAR_ENCODING_NONE);
 if (inputStream == ((void*)0)) {
     xmlFreeParserInputBuffer(buf);
     goto error;
 }
 inputPush(ctxt, inputStream);


 xmlParseDocument(ctxt);

 if (ctxt->myDoc != ((void*)0)) {
     fprintf(stderr, "SAX generated a doc !\n");
     xmlFreeDoc(ctxt->myDoc);
     ctxt->myDoc = ((void*)0);
 }
    }

error:
    if (ctxt != ((void*)0)) {
        ctxt->sax = old_sax;
        xmlFreeParserCtxt(ctxt);
    }
}
