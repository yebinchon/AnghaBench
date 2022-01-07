
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_1__ IMetaDataDispenserEx_iface; } ;
typedef TYPE_2__ MetaDataDispenser ;
typedef int IUnknown ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int MetaDataDispenserVtbl ;
 int S_OK ;

HRESULT MetaDataDispenser_CreateInstance(IUnknown **ppUnk)
{
    MetaDataDispenser *This;

    This = HeapAlloc(GetProcessHeap(), 0, sizeof(MetaDataDispenser));

    if (!This)
        return E_OUTOFMEMORY;

    This->IMetaDataDispenserEx_iface.lpVtbl = &MetaDataDispenserVtbl;
    This->ref = 1;

    *ppUnk = (IUnknown*)This;

    return S_OK;
}
