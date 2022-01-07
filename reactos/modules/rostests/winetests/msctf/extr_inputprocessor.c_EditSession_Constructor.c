
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int refCount; TYPE_1__ ITfEditSession_iface; } ;
typedef TYPE_1__ ITfEditSession ;
typedef int HRESULT ;
typedef TYPE_2__ EditSession ;


 int E_OUTOFMEMORY ;
 int EditSession_EditSessionVtbl ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int S_OK ;

__attribute__((used)) static HRESULT EditSession_Constructor(ITfEditSession **ppOut)
{
    EditSession *This;

    *ppOut = ((void*)0);
    This = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(EditSession));
    if (This == ((void*)0))
        return E_OUTOFMEMORY;

    This->ITfEditSession_iface.lpVtbl = &EditSession_EditSessionVtbl;
    This->refCount = 1;

    *ppOut = &This->ITfEditSession_iface;
    return S_OK;
}
