
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IHTMLLocation_iface; int dispex; int * window; } ;
typedef int IUnknown ;
typedef TYPE_2__ HTMLLocation ;
typedef int HTMLInnerWindow ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLLocationVtbl ;
 int HTMLLocation_dispex ;
 int S_OK ;
 TYPE_2__* heap_alloc (int) ;
 int init_dispex (int *,int *,int *) ;

HRESULT HTMLLocation_Create(HTMLInnerWindow *window, HTMLLocation **ret)
{
    HTMLLocation *location;

    location = heap_alloc(sizeof(*location));
    if(!location)
        return E_OUTOFMEMORY;

    location->IHTMLLocation_iface.lpVtbl = &HTMLLocationVtbl;
    location->ref = 1;
    location->window = window;

    init_dispex(&location->dispex, (IUnknown*)&location->IHTMLLocation_iface, &HTMLLocation_dispex);

    *ret = location;
    return S_OK;
}
