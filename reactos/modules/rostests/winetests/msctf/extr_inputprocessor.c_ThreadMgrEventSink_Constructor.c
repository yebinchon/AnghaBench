
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int refCount; TYPE_1__ ITfThreadMgrEventSink_iface; } ;
typedef TYPE_2__ ThreadMgrEventSink ;
typedef int IUnknown ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int ThreadMgrEventSink_ThreadMgrEventSinkVtbl ;

__attribute__((used)) static HRESULT ThreadMgrEventSink_Constructor(IUnknown **ppOut)
{
    ThreadMgrEventSink *This;

    This = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(ThreadMgrEventSink));
    if (This == ((void*)0))
        return E_OUTOFMEMORY;

    This->ITfThreadMgrEventSink_iface.lpVtbl = &ThreadMgrEventSink_ThreadMgrEventSinkVtbl;
    This->refCount = 1;

    *ppOut = (IUnknown*)&This->ITfThreadMgrEventSink_iface;
    return S_OK;
}
