
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_1__ IXSLTemplate_iface; int dispex; int * node; } ;
typedef TYPE_2__ xsltemplate ;
typedef int IUnknown ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int TRACE (char*,void*) ;
 int XSLTemplateVtbl ;
 TYPE_2__* heap_alloc (int) ;
 int init_dispex (int *,int *,int *) ;
 int xsltemplate_dispex ;

HRESULT XSLTemplate_create(void **ppObj)
{
    xsltemplate *This;

    TRACE("(%p)\n", ppObj);

    This = heap_alloc( sizeof (*This) );
    if(!This)
        return E_OUTOFMEMORY;

    This->IXSLTemplate_iface.lpVtbl = &XSLTemplateVtbl;
    This->ref = 1;
    This->node = ((void*)0);
    init_dispex(&This->dispex, (IUnknown*)&This->IXSLTemplate_iface, &xsltemplate_dispex);

    *ppObj = &This->IXSLTemplate_iface;

    TRACE("returning iface %p\n", *ppObj);

    return S_OK;
}
