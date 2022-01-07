
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xmlNsMapPtr ;
typedef TYPE_1__* xmlDOMWrapCtxtPtr ;
struct TYPE_4__ {int * namespaceMap; } ;


 int xmlDOMWrapNsMapFree (int ) ;
 int xmlFree (TYPE_1__*) ;

void
xmlDOMWrapFreeCtxt(xmlDOMWrapCtxtPtr ctxt)
{
    if (ctxt == ((void*)0))
 return;
    if (ctxt->namespaceMap != ((void*)0))
 xmlDOMWrapNsMapFree((xmlNsMapPtr) ctxt->namespaceMap);



    xmlFree(ctxt);
}
