
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int refCount; TYPE_1__ ITfTextInputProcessor_iface; } ;
typedef TYPE_2__ TextService ;
typedef int IUnknown ;
typedef int HRESULT ;


 int CLASS_E_NOAGGREGATION ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int TextService_TextInputProcessorVtbl ;

__attribute__((used)) static HRESULT TextService_Constructor(IUnknown *pUnkOuter, IUnknown **ppOut)
{
    TextService *This;
    if (pUnkOuter)
        return CLASS_E_NOAGGREGATION;

    This = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(TextService));
    if (This == ((void*)0))
        return E_OUTOFMEMORY;

    This->ITfTextInputProcessor_iface.lpVtbl = &TextService_TextInputProcessorVtbl;
    This->refCount = 1;

    *ppOut = (IUnknown*)&This->ITfTextInputProcessor_iface;
    return S_OK;
}
