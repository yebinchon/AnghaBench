
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xmlParserErrors ;
typedef TYPE_1__* xmlParserCtxtPtr ;
typedef int xmlChar ;
struct TYPE_4__ {int disableSAX; scalar_t__ instate; scalar_t__ recovery; scalar_t__ wellFormed; int errNo; } ;


 int XML_ERR_FATAL ;
 int XML_FROM_PARSER ;
 scalar_t__ XML_PARSER_EOF ;
 int __xmlRaiseError (int *,int *,int *,TYPE_1__*,int *,int ,int ,int ,int *,int ,char const*,char const*,int *,int ,int ,char const*,int const*,int const*) ;

void
__xmlErrEncoding(xmlParserCtxtPtr ctxt, xmlParserErrors xmlerr,
                 const char *msg, const xmlChar * str1, const xmlChar * str2)
{
    if ((ctxt != ((void*)0)) && (ctxt->disableSAX != 0) &&
        (ctxt->instate == XML_PARSER_EOF))
 return;
    if (ctxt != ((void*)0))
        ctxt->errNo = xmlerr;
    __xmlRaiseError(((void*)0), ((void*)0), ((void*)0),
                    ctxt, ((void*)0), XML_FROM_PARSER, xmlerr, XML_ERR_FATAL,
                    ((void*)0), 0, (const char *) str1, (const char *) str2,
                    ((void*)0), 0, 0, msg, str1, str2);
    if (ctxt != ((void*)0)) {
        ctxt->wellFormed = 0;
        if (ctxt->recovery == 0)
            ctxt->disableSAX = 1;
    }
}
