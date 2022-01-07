
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
struct TYPE_4__ {int disableSAX; scalar_t__ instate; int errNo; } ;


 int XML_ERR_FATAL ;
 int XML_ERR_NO_MEMORY ;
 int XML_FROM_PARSER ;
 scalar_t__ XML_PARSER_EOF ;
 int __xmlRaiseError (int *,int *,int *,TYPE_1__*,int *,int ,int ,int ,int *,int ,char const*,int *,int *,int ,int ,char*,...) ;

void
xmlErrMemory(xmlParserCtxtPtr ctxt, const char *extra)
{
    if ((ctxt != ((void*)0)) && (ctxt->disableSAX != 0) &&
        (ctxt->instate == XML_PARSER_EOF))
 return;
    if (ctxt != ((void*)0)) {
        ctxt->errNo = XML_ERR_NO_MEMORY;
        ctxt->instate = XML_PARSER_EOF;
        ctxt->disableSAX = 1;
    }
    if (extra)
        __xmlRaiseError(((void*)0), ((void*)0), ((void*)0), ctxt, ((void*)0), XML_FROM_PARSER,
                        XML_ERR_NO_MEMORY, XML_ERR_FATAL, ((void*)0), 0, extra,
                        ((void*)0), ((void*)0), 0, 0,
                        "Memory allocation failed : %s\n", extra);
    else
        __xmlRaiseError(((void*)0), ((void*)0), ((void*)0), ctxt, ((void*)0), XML_FROM_PARSER,
                        XML_ERR_NO_MEMORY, XML_ERR_FATAL, ((void*)0), 0, ((void*)0),
                        ((void*)0), ((void*)0), 0, 0, "Memory allocation failed\n");
}
