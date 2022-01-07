
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; int * window; TYPE_1__ IOmHistory_iface; int dispex; } ;
typedef TYPE_2__ OmHistory ;
typedef int IUnknown ;
typedef int HTMLInnerWindow ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int OmHistoryVtbl ;
 int OmHistory_dispex ;
 int S_OK ;
 TYPE_2__* heap_alloc_zero (int) ;
 int init_dispex (int *,int *,int *) ;

HRESULT create_history(HTMLInnerWindow *window, OmHistory **ret)
{
    OmHistory *history;

    history = heap_alloc_zero(sizeof(*history));
    if(!history)
        return E_OUTOFMEMORY;

    init_dispex(&history->dispex, (IUnknown*)&history->IOmHistory_iface, &OmHistory_dispex);
    history->IOmHistory_iface.lpVtbl = &OmHistoryVtbl;
    history->ref = 1;

    history->window = window;

    *ret = history;
    return S_OK;
}
