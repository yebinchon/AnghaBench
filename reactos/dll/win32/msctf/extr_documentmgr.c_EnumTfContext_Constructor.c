
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int refCount; TYPE_1__ IEnumTfContexts_iface; int * docmgr; } ;
typedef TYPE_1__ IEnumTfContexts ;
typedef int HRESULT ;
typedef TYPE_2__ EnumTfContext ;
typedef int DocumentMgr ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int IEnumTfContexts_Vtbl ;
 int S_OK ;
 int TRACE (char*,TYPE_1__*) ;

__attribute__((used)) static HRESULT EnumTfContext_Constructor(DocumentMgr *mgr, IEnumTfContexts **ppOut)
{
    EnumTfContext *This;

    This = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(EnumTfContext));
    if (This == ((void*)0))
        return E_OUTOFMEMORY;

    This->IEnumTfContexts_iface.lpVtbl = &IEnumTfContexts_Vtbl;
    This->refCount = 1;
    This->docmgr = mgr;

    *ppOut = &This->IEnumTfContexts_iface;
    TRACE("returning %p\n", *ppOut);
    return S_OK;
}
