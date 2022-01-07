
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
typedef int xmlChar ;
struct TYPE_4__ {int * input; } ;


 int * xmlParseAttValueInternal (TYPE_1__*,int *,int *,int ) ;

xmlChar *
xmlParseAttValue(xmlParserCtxtPtr ctxt) {
    if ((ctxt == ((void*)0)) || (ctxt->input == ((void*)0))) return(((void*)0));
    return(xmlParseAttValueInternal(ctxt, ((void*)0), ((void*)0), 0));
}
