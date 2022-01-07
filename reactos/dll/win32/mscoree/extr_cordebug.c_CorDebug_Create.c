
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_2__ ICorDebug_iface; int * runtimehost; int processes; int * pCallback2; int * pCallback; TYPE_1__ ICorDebugProcessEnum_iface; } ;
typedef int IUnknown ;
typedef int ICLRRuntimeHost ;
typedef int HRESULT ;
typedef TYPE_3__ CorDebug ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_3__* HeapAlloc (int ,int ,int) ;
 int ICLRRuntimeHost_AddRef (int *) ;
 int S_OK ;
 int cordebug_vtbl ;
 int list_init (int *) ;
 int processenum_vtbl ;

HRESULT CorDebug_Create(ICLRRuntimeHost *runtimehost, IUnknown** ppUnk)
{
    CorDebug *This;

    This = HeapAlloc( GetProcessHeap(), 0, sizeof *This );
    if ( !This )
        return E_OUTOFMEMORY;

    This->ICorDebug_iface.lpVtbl = &cordebug_vtbl;
    This->ICorDebugProcessEnum_iface.lpVtbl = &processenum_vtbl;
    This->ref = 1;
    This->pCallback = ((void*)0);
    This->pCallback2 = ((void*)0);
    This->runtimehost = runtimehost;

    list_init(&This->processes);

    if(This->runtimehost)
        ICLRRuntimeHost_AddRef(This->runtimehost);

    *ppUnk = (IUnknown*)&This->ICorDebug_iface;

    return S_OK;
}
