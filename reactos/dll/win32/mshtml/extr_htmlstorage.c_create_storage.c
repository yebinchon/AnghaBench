
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; TYPE_1__ IHTMLStorage_iface; int dispex; } ;
typedef int IUnknown ;
typedef TYPE_1__ IHTMLStorage ;
typedef TYPE_2__ HTMLStorage ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int HTMLStorageVtbl ;
 int HTMLStorage_dispex ;
 int S_OK ;
 TYPE_2__* heap_alloc_zero (int) ;
 int init_dispex (int *,int *,int *) ;

HRESULT create_storage(IHTMLStorage **p)
{
    HTMLStorage *storage;

    storage = heap_alloc_zero(sizeof(*storage));
    if(!storage)
        return E_OUTOFMEMORY;

    storage->IHTMLStorage_iface.lpVtbl = &HTMLStorageVtbl;
    storage->ref = 1;
    init_dispex(&storage->dispex, (IUnknown*)&storage->IHTMLStorage_iface, &HTMLStorage_dispex);

    *p = &storage->IHTMLStorage_iface;
    return S_OK;
}
