
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
struct TYPE_4__ {int errNo; } ;


 int XML_ERR_USER_STOP ;
 int xmlHaltParser (TYPE_1__*) ;

void
xmlStopParser(xmlParserCtxtPtr ctxt) {
    if (ctxt == ((void*)0))
        return;
    xmlHaltParser(ctxt);
    ctxt->errNo = XML_ERR_USER_STOP;
}
