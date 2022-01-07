
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IHTMLImageElementFactory_iface; int dispex; int * window; } ;
typedef int IUnknown ;
typedef int HTMLInnerWindow ;
typedef TYPE_2__ HTMLImageElementFactory ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLImageElementFactoryVtbl ;
 int HTMLImageElementFactory_dispex ;
 int S_OK ;
 TYPE_2__* heap_alloc (int) ;
 int init_dispex (int *,int *,int *) ;

HRESULT HTMLImageElementFactory_Create(HTMLInnerWindow *window, HTMLImageElementFactory **ret_val)
{
    HTMLImageElementFactory *ret;

    ret = heap_alloc(sizeof(HTMLImageElementFactory));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IHTMLImageElementFactory_iface.lpVtbl = &HTMLImageElementFactoryVtbl;
    ret->ref = 1;
    ret->window = window;

    init_dispex(&ret->dispex, (IUnknown*)&ret->IHTMLImageElementFactory_iface,
            &HTMLImageElementFactory_dispex);

    *ret_val = ret;
    return S_OK;
}
