
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int refCount; TYPE_2__ ITfTextEditSink_iface; } ;
typedef TYPE_1__ TextEditSink ;
typedef TYPE_2__ ITfTextEditSink ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int TextEditSink_TextEditSinkVtbl ;

__attribute__((used)) static HRESULT TextEditSink_Constructor(ITfTextEditSink **ppOut)
{
    TextEditSink *This;

    *ppOut = ((void*)0);
    This = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(TextEditSink));
    if (This == ((void*)0))
        return E_OUTOFMEMORY;

    This->ITfTextEditSink_iface.lpVtbl = &TextEditSink_TextEditSinkVtbl;
    This->refCount = 1;

    *ppOut = &This->ITfTextEditSink_iface;
    return S_OK;
}
