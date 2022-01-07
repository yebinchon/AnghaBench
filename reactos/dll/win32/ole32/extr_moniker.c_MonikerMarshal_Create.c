
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_3__ IUnknown_iface; int * moniker; TYPE_1__ IMarshal_iface; } ;
typedef TYPE_2__ MonikerMarshal ;
typedef TYPE_3__ IUnknown ;
typedef int IMoniker ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int VT_MonikerMarshal ;
 int VT_MonikerMarshalInner ;

HRESULT MonikerMarshal_Create(IMoniker *inner, IUnknown **outer)
{
    MonikerMarshal *This = HeapAlloc(GetProcessHeap(), 0, sizeof(*This));
    if (!This) return E_OUTOFMEMORY;

    This->IUnknown_iface.lpVtbl = &VT_MonikerMarshalInner;
    This->IMarshal_iface.lpVtbl = &VT_MonikerMarshal;
    This->ref = 1;
    This->moniker = inner;

    *outer = &This->IUnknown_iface;
    return S_OK;
}
