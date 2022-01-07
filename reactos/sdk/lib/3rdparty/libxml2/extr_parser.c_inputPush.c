
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * xmlParserInputPtr ;
typedef TYPE_1__* xmlParserCtxtPtr ;
struct TYPE_4__ {int inputNr; int inputMax; int * input; int ** inputTab; } ;


 int xmlErrMemory (TYPE_1__*,int *) ;
 int xmlFreeInputStream (int *) ;
 scalar_t__ xmlRealloc (int **,int) ;

int
inputPush(xmlParserCtxtPtr ctxt, xmlParserInputPtr value)
{
    if ((ctxt == ((void*)0)) || (value == ((void*)0)))
        return(-1);
    if (ctxt->inputNr >= ctxt->inputMax) {
        ctxt->inputMax *= 2;
        ctxt->inputTab =
            (xmlParserInputPtr *) xmlRealloc(ctxt->inputTab,
                                             ctxt->inputMax *
                                             sizeof(ctxt->inputTab[0]));
        if (ctxt->inputTab == ((void*)0)) {
            xmlErrMemory(ctxt, ((void*)0));
     xmlFreeInputStream(value);
     ctxt->inputMax /= 2;
     value = ((void*)0);
            return (-1);
        }
    }
    ctxt->inputTab[ctxt->inputNr] = value;
    ctxt->input = value;
    return (ctxt->inputNr++);
}
