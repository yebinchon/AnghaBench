
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int refCount; TYPE_2__ ITfRange_iface; void* anchorEnd; void* anchorStart; void* lockType; int * pITextStoreACP; int * pITfContext; } ;
typedef TYPE_1__ Range ;
typedef TYPE_2__ ITfRange ;
typedef int ITfContext ;
typedef int ITextStoreACP ;
typedef int HRESULT ;
typedef void* DWORD ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int Range_RangeVtbl ;
 int S_OK ;
 int TRACE (char*,...) ;

HRESULT Range_Constructor(ITfContext *context, ITextStoreACP *textstore, DWORD lockType, DWORD anchorStart, DWORD anchorEnd, ITfRange **ppOut)
{
    Range *This;

    This = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(Range));
    if (This == ((void*)0))
        return E_OUTOFMEMORY;

    TRACE("(%p) %p %p\n",This, context, textstore);

    This->ITfRange_iface.lpVtbl = &Range_RangeVtbl;
    This->refCount = 1;
    This->pITfContext = context;
    This->pITextStoreACP = textstore;
    This->lockType = lockType;
    This->anchorStart = anchorStart;
    This->anchorEnd = anchorEnd;

    *ppOut = &This->ITfRange_iface;
    TRACE("returning %p\n", *ppOut);

    return S_OK;
}
