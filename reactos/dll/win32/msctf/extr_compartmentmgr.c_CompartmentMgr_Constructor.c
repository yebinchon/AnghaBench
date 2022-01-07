
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {TYPE_2__ ITfCompartmentMgr_iface; int values; int * pUnkOuter; } ;
typedef int REFIID ;
typedef int IUnknown ;
typedef int HRESULT ;
typedef TYPE_1__ CompartmentMgr ;


 int CLASS_E_NOAGGREGATION ;
 int CompartmentMgrVtbl ;
 int E_OUTOFMEMORY ;
 int E_POINTER ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int IID_IUnknown ;
 int ITfCompartmentMgr_QueryInterface (TYPE_2__*,int ,void**) ;
 int IsEqualIID (int ,int *) ;
 int S_OK ;
 int TRACE (char*,int *) ;
 int list_init (int *) ;

HRESULT CompartmentMgr_Constructor(IUnknown *pUnkOuter, REFIID riid, IUnknown **ppOut)
{
    CompartmentMgr *This;

    if (!ppOut)
        return E_POINTER;

    if (pUnkOuter && !IsEqualIID (riid, &IID_IUnknown))
        return CLASS_E_NOAGGREGATION;

    This = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(CompartmentMgr));
    if (This == ((void*)0))
        return E_OUTOFMEMORY;

    This->ITfCompartmentMgr_iface.lpVtbl = &CompartmentMgrVtbl;
    This->pUnkOuter = pUnkOuter;
    list_init(&This->values);

    if (pUnkOuter)
    {
        *ppOut = (IUnknown*)&This->ITfCompartmentMgr_iface;
        TRACE("returning %p\n", *ppOut);
        return S_OK;
    }
    else
    {
        HRESULT hr;
        hr = ITfCompartmentMgr_QueryInterface(&This->ITfCompartmentMgr_iface, riid, (void**)ppOut);
        if (FAILED(hr))
            HeapFree(GetProcessHeap(),0,This);
        return hr;
    }
}
