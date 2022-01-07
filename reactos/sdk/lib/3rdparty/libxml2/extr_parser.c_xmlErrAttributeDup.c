
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
typedef int xmlChar ;
struct TYPE_4__ {int disableSAX; scalar_t__ instate; scalar_t__ recovery; scalar_t__ wellFormed; int errNo; } ;


 int XML_ERR_ATTRIBUTE_REDEFINED ;
 int XML_ERR_FATAL ;
 int XML_FROM_PARSER ;
 scalar_t__ XML_PARSER_EOF ;
 int __xmlRaiseError (int *,int *,int *,TYPE_1__*,int *,int ,int ,int ,int *,int ,char const*,char const*,int *,int ,int ,char*,int const*,...) ;

__attribute__((used)) static void
xmlErrAttributeDup(xmlParserCtxtPtr ctxt, const xmlChar * prefix,
                   const xmlChar * localname)
{
    if ((ctxt != ((void*)0)) && (ctxt->disableSAX != 0) &&
        (ctxt->instate == XML_PARSER_EOF))
 return;
    if (ctxt != ((void*)0))
 ctxt->errNo = XML_ERR_ATTRIBUTE_REDEFINED;

    if (prefix == ((void*)0))
        __xmlRaiseError(((void*)0), ((void*)0), ((void*)0), ctxt, ((void*)0), XML_FROM_PARSER,
                        XML_ERR_ATTRIBUTE_REDEFINED, XML_ERR_FATAL, ((void*)0), 0,
                        (const char *) localname, ((void*)0), ((void*)0), 0, 0,
                        "Attribute %s redefined\n", localname);
    else
        __xmlRaiseError(((void*)0), ((void*)0), ((void*)0), ctxt, ((void*)0), XML_FROM_PARSER,
                        XML_ERR_ATTRIBUTE_REDEFINED, XML_ERR_FATAL, ((void*)0), 0,
                        (const char *) prefix, (const char *) localname,
                        ((void*)0), 0, 0, "Attribute %s:%s redefined\n", prefix,
                        localname);
    if (ctxt != ((void*)0)) {
 ctxt->wellFormed = 0;
 if (ctxt->recovery == 0)
     ctxt->disableSAX = 1;
    }
}
