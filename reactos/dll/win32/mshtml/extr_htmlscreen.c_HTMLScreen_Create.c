
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IHTMLScreen_iface; int dispex; } ;
typedef int IUnknown ;
typedef TYPE_1__ IHTMLScreen ;
typedef TYPE_2__ HTMLScreen ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLScreen_dispex ;
 int HTMLSreenVtbl ;
 int S_OK ;
 TYPE_2__* heap_alloc_zero (int) ;
 int init_dispex (int *,int *,int *) ;

HRESULT HTMLScreen_Create(IHTMLScreen **ret)
{
    HTMLScreen *screen;

    screen = heap_alloc_zero(sizeof(HTMLScreen));
    if(!screen)
        return E_OUTOFMEMORY;

    screen->IHTMLScreen_iface.lpVtbl = &HTMLSreenVtbl;
    screen->ref = 1;

    init_dispex(&screen->dispex, (IUnknown*)&screen->IHTMLScreen_iface, &HTMLScreen_dispex);

    *ret = &screen->IHTMLScreen_iface;
    return S_OK;
}
