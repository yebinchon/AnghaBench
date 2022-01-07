
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int refCount; TYPE_1__ ITfLangBarMgr_iface; } ;
typedef TYPE_2__ LangBarMgr ;
typedef int IUnknown ;
typedef int HRESULT ;


 int CLASS_E_NOAGGREGATION ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int LangBarMgr_LangBarMgrVtbl ;
 int S_OK ;
 int TRACE (char*,int *) ;

HRESULT LangBarMgr_Constructor(IUnknown *pUnkOuter, IUnknown **ppOut)
{
    LangBarMgr *This;
    if (pUnkOuter)
        return CLASS_E_NOAGGREGATION;

    This = HeapAlloc(GetProcessHeap(),0,sizeof(LangBarMgr));
    if (This == ((void*)0))
        return E_OUTOFMEMORY;

    This->ITfLangBarMgr_iface.lpVtbl = &LangBarMgr_LangBarMgrVtbl;
    This->refCount = 1;

    *ppOut = (IUnknown *)&This->ITfLangBarMgr_iface;
    TRACE("returning %p\n", *ppOut);
    return S_OK;
}
