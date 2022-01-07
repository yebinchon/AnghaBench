
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlParserCtxtPtr ;
struct TYPE_4__ {int spaceNr; int spaceMax; int* spaceTab; int* space; } ;


 int xmlErrMemory (TYPE_1__*,int *) ;
 scalar_t__ xmlRealloc (int*,int) ;

__attribute__((used)) static int spacePush(xmlParserCtxtPtr ctxt, int val) {
    if (ctxt->spaceNr >= ctxt->spaceMax) {
        int *tmp;

 ctxt->spaceMax *= 2;
        tmp = (int *) xmlRealloc(ctxt->spaceTab,
                          ctxt->spaceMax * sizeof(ctxt->spaceTab[0]));
        if (tmp == ((void*)0)) {
     xmlErrMemory(ctxt, ((void*)0));
     ctxt->spaceMax /=2;
     return(-1);
 }
 ctxt->spaceTab = tmp;
    }
    ctxt->spaceTab[ctxt->spaceNr] = val;
    ctxt->space = &ctxt->spaceTab[ctxt->spaceNr];
    return(ctxt->spaceNr++);
}
