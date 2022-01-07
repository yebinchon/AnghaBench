
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
typedef scalar_t__ xmlChar ;
struct TYPE_3__ {scalar_t__ const* str_xml; scalar_t__ const* str_xml_ns; int nsNr; scalar_t__ const** nsTab; } ;



__attribute__((used)) static const xmlChar *
xmlGetNamespace(xmlParserCtxtPtr ctxt, const xmlChar *prefix) {
    int i;

    if (prefix == ctxt->str_xml) return(ctxt->str_xml_ns);
    for (i = ctxt->nsNr - 2;i >= 0;i-=2)
        if (ctxt->nsTab[i] == prefix) {
     if ((prefix == ((void*)0)) && (*ctxt->nsTab[i + 1] == 0))
         return(((void*)0));
     return(ctxt->nsTab[i + 1]);
 }
    return(((void*)0));
}
