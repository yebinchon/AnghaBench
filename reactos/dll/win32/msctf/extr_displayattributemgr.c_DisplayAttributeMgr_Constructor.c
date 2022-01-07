
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int refCount; TYPE_1__ ITfDisplayAttributeMgr_iface; } ;
typedef int IUnknown ;
typedef int HRESULT ;
typedef TYPE_2__ DisplayAttributeMgr ;


 int CLASS_E_NOAGGREGATION ;
 int DisplayAttributeMgrVtbl ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int TRACE (char*,int *) ;

HRESULT DisplayAttributeMgr_Constructor(IUnknown *pUnkOuter, IUnknown **ppOut)
{
    DisplayAttributeMgr *This;
    if (pUnkOuter)
        return CLASS_E_NOAGGREGATION;

    This = HeapAlloc(GetProcessHeap(),0,sizeof(DisplayAttributeMgr));
    if (This == ((void*)0))
        return E_OUTOFMEMORY;

    This->ITfDisplayAttributeMgr_iface.lpVtbl = &DisplayAttributeMgrVtbl;
    This->refCount = 1;

    *ppOut = (IUnknown *)&This->ITfDisplayAttributeMgr_iface;
    TRACE("returning %p\n", *ppOut);
    return S_OK;
}
