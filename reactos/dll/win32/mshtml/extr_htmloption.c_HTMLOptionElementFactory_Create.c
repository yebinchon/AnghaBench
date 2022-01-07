
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IHTMLOptionElementFactory_iface; int dispex; int * window; } ;
typedef int IUnknown ;
typedef TYPE_2__ HTMLOptionElementFactory ;
typedef int HTMLInnerWindow ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLOptionElementFactoryVtbl ;
 int HTMLOptionElementFactory_dispex ;
 int S_OK ;
 TYPE_2__* heap_alloc (int) ;
 int init_dispex (int *,int *,int *) ;

HRESULT HTMLOptionElementFactory_Create(HTMLInnerWindow *window, HTMLOptionElementFactory **ret_ptr)
{
    HTMLOptionElementFactory *ret;

    ret = heap_alloc(sizeof(*ret));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IHTMLOptionElementFactory_iface.lpVtbl = &HTMLOptionElementFactoryVtbl;
    ret->ref = 1;
    ret->window = window;

    init_dispex(&ret->dispex, (IUnknown*)&ret->IHTMLOptionElementFactory_iface,
            &HTMLOptionElementFactory_dispex);

    *ret_ptr = ret;
    return S_OK;
}
