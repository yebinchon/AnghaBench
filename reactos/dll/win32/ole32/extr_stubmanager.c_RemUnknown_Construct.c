
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int refs; TYPE_2__ IRemUnknown_iface; } ;
typedef TYPE_1__ RemUnknown ;
typedef TYPE_2__ IRemUnknown ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int RemUnknown_Vtbl ;
 int S_OK ;

__attribute__((used)) static HRESULT RemUnknown_Construct(IRemUnknown **ppRemUnknown)
{
    RemUnknown *This = HeapAlloc(GetProcessHeap(), 0, sizeof(*This));

    if (!This) return E_OUTOFMEMORY;

    This->IRemUnknown_iface.lpVtbl = &RemUnknown_Vtbl;
    This->refs = 1;

    *ppRemUnknown = &This->IRemUnknown_iface;
    return S_OK;
}
