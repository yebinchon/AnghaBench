
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * xmlStructuredErrorFunc ;
typedef TYPE_2__* xmlParserCtxtPtr ;
typedef int * xmlGenericErrorFunc ;
typedef int xmlErrorLevel ;
struct TYPE_5__ {scalar_t__ disableSAX; scalar_t__ instate; void* userData; TYPE_1__* sax; scalar_t__ validate; } ;
struct TYPE_4__ {scalar_t__ initialized; int * serror; int * warning; int * error; } ;


 int XML_ERR_ERROR ;
 int XML_ERR_WARNING ;
 int XML_FROM_IO ;
 int XML_IO_LOAD_ERROR ;
 scalar_t__ XML_PARSER_EOF ;
 scalar_t__ XML_SAX2_MAGIC ;
 int __xmlRaiseError (int *,int *,void*,TYPE_2__*,int *,int ,int ,int ,int *,int ,char const*,int *,int *,int ,int ,char const*,char const*) ;

void
__xmlLoaderErr(void *ctx, const char *msg, const char *filename)
{
    xmlParserCtxtPtr ctxt = (xmlParserCtxtPtr) ctx;
    xmlStructuredErrorFunc schannel = ((void*)0);
    xmlGenericErrorFunc channel = ((void*)0);
    void *data = ((void*)0);
    xmlErrorLevel level = XML_ERR_ERROR;

    if ((ctxt != ((void*)0)) && (ctxt->disableSAX != 0) &&
        (ctxt->instate == XML_PARSER_EOF))
 return;
    if ((ctxt != ((void*)0)) && (ctxt->sax != ((void*)0))) {
        if (ctxt->validate) {
     channel = ctxt->sax->error;
     level = XML_ERR_ERROR;
 } else {
     channel = ctxt->sax->warning;
     level = XML_ERR_WARNING;
 }
 if (ctxt->sax->initialized == XML_SAX2_MAGIC)
     schannel = ctxt->sax->serror;
 data = ctxt->userData;
    }
    __xmlRaiseError(schannel, channel, data, ctxt, ((void*)0), XML_FROM_IO,
                    XML_IO_LOAD_ERROR, level, ((void*)0), 0,
      filename, ((void*)0), ((void*)0), 0, 0,
      msg, filename);

}
