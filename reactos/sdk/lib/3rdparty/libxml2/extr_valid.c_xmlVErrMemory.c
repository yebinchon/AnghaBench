
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlValidCtxtPtr ;
typedef int * xmlParserCtxtPtr ;
typedef int * xmlGenericErrorFunc ;
struct TYPE_3__ {scalar_t__ finishDtd; int * userData; int * error; } ;


 scalar_t__ XML_CTXT_FINISH_DTD_0 ;
 scalar_t__ XML_CTXT_FINISH_DTD_1 ;
 int XML_ERR_FATAL ;
 int XML_ERR_NO_MEMORY ;
 int XML_FROM_VALID ;
 int __xmlRaiseError (int *,int *,void*,int *,int *,int ,int ,int ,int *,int ,char const*,int *,int *,int ,int ,char*,...) ;

__attribute__((used)) static void
xmlVErrMemory(xmlValidCtxtPtr ctxt, const char *extra)
{
    xmlGenericErrorFunc channel = ((void*)0);
    xmlParserCtxtPtr pctxt = ((void*)0);
    void *data = ((void*)0);

    if (ctxt != ((void*)0)) {
        channel = ctxt->error;
        data = ctxt->userData;


 if ((ctxt->finishDtd == XML_CTXT_FINISH_DTD_0) ||
     (ctxt->finishDtd == XML_CTXT_FINISH_DTD_1)) {
     long delta = (char *) ctxt - (char *) ctxt->userData;
     if ((delta > 0) && (delta < 250))
  pctxt = ctxt->userData;
 }
    }
    if (extra)
        __xmlRaiseError(((void*)0), channel, data,
                        pctxt, ((void*)0), XML_FROM_VALID, XML_ERR_NO_MEMORY,
                        XML_ERR_FATAL, ((void*)0), 0, extra, ((void*)0), ((void*)0), 0, 0,
                        "Memory allocation failed : %s\n", extra);
    else
        __xmlRaiseError(((void*)0), channel, data,
                        pctxt, ((void*)0), XML_FROM_VALID, XML_ERR_NO_MEMORY,
                        XML_ERR_FATAL, ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0), 0, 0,
                        "Memory allocation failed\n");
}
