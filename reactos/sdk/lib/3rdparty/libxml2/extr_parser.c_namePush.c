
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
typedef int xmlChar ;
struct TYPE_4__ {int nameNr; int nameMax; int const* name; int const** nameTab; } ;


 int xmlErrMemory (TYPE_1__*,int *) ;
 scalar_t__ xmlRealloc (int **,int) ;

int
namePush(xmlParserCtxtPtr ctxt, const xmlChar * value)
{
    if (ctxt == ((void*)0)) return (-1);

    if (ctxt->nameNr >= ctxt->nameMax) {
        const xmlChar * *tmp;
        tmp = (const xmlChar * *) xmlRealloc((xmlChar * *)ctxt->nameTab,
                                    ctxt->nameMax * 2 *
                                    sizeof(ctxt->nameTab[0]));
        if (tmp == ((void*)0)) {
     goto mem_error;
        }
 ctxt->nameTab = tmp;
        ctxt->nameMax *= 2;
    }
    ctxt->nameTab[ctxt->nameNr] = value;
    ctxt->name = value;
    return (ctxt->nameNr++);
mem_error:
    xmlErrMemory(ctxt, ((void*)0));
    return (-1);
}
