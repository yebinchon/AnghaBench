
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IWshCollection_iface; int classinfo; } ;
typedef TYPE_1__ WshCollection ;
typedef TYPE_2__ IWshCollection ;
typedef int IUnknown ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int IID_IWshCollection ;
 int S_OK ;
 int WshCollectionVtbl ;
 TYPE_1__* heap_alloc (int) ;
 int init_classinfo (int *,int *,int *) ;

__attribute__((used)) static HRESULT WshCollection_Create(IWshCollection **collection)
{
    WshCollection *This;

    This = heap_alloc(sizeof(*This));
    if (!This) return E_OUTOFMEMORY;

    This->IWshCollection_iface.lpVtbl = &WshCollectionVtbl;
    This->ref = 1;

    init_classinfo(&IID_IWshCollection, (IUnknown *)&This->IWshCollection_iface, &This->classinfo);
    *collection = &This->IWshCollection_iface;

    return S_OK;
}
