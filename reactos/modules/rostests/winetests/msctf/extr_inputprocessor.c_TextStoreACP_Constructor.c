
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int refCount; TYPE_1__ ITextStoreACP_iface; } ;
typedef TYPE_2__ TextStoreACP ;
typedef int IUnknown ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int TextStoreACP_TextStoreACPVtbl ;

__attribute__((used)) static HRESULT TextStoreACP_Constructor(IUnknown **ppOut)
{
    TextStoreACP *This;

    This = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(TextStoreACP));
    if (This == ((void*)0))
        return E_OUTOFMEMORY;

    This->ITextStoreACP_iface.lpVtbl = &TextStoreACP_TextStoreACPVtbl;
    This->refCount = 1;

    *ppOut = (IUnknown*)&This->ITextStoreACP_iface;
    return S_OK;
}
