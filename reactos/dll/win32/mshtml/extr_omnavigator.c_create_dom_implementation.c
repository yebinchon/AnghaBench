
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IHTMLDOMImplementation_iface; int dispex; } ;
typedef int IUnknown ;
typedef TYPE_1__ IHTMLDOMImplementation ;
typedef TYPE_2__ HTMLDOMImplementation ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLDOMImplementationVtbl ;
 int HTMLDOMImplementation_dispex ;
 int S_OK ;
 TYPE_2__* heap_alloc_zero (int) ;
 int init_dispex (int *,int *,int *) ;

HRESULT create_dom_implementation(IHTMLDOMImplementation **ret)
{
    HTMLDOMImplementation *dom_implementation;

    dom_implementation = heap_alloc_zero(sizeof(*dom_implementation));
    if(!dom_implementation)
        return E_OUTOFMEMORY;

    dom_implementation->IHTMLDOMImplementation_iface.lpVtbl = &HTMLDOMImplementationVtbl;
    dom_implementation->ref = 1;

    init_dispex(&dom_implementation->dispex, (IUnknown*)&dom_implementation->IHTMLDOMImplementation_iface,
            &HTMLDOMImplementation_dispex);

    *ret = &dom_implementation->IHTMLDOMImplementation_iface;
    return S_OK;
}
