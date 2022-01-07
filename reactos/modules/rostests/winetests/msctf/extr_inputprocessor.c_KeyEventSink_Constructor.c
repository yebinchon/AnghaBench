
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int refCount; TYPE_2__ ITfKeyEventSink_iface; } ;
typedef TYPE_1__ KeyEventSink ;
typedef TYPE_2__ ITfKeyEventSink ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int KeyEventSink_KeyEventSinkVtbl ;
 int S_OK ;

__attribute__((used)) static HRESULT KeyEventSink_Constructor(ITfKeyEventSink **ppOut)
{
    KeyEventSink *This;

    This = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(KeyEventSink));
    if (This == ((void*)0))
        return E_OUTOFMEMORY;

    This->ITfKeyEventSink_iface.lpVtbl = &KeyEventSink_KeyEventSinkVtbl;
    This->refCount = 1;

    *ppOut = &This->ITfKeyEventSink_iface;
    return S_OK;
}
