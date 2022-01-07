
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; int maxSinks; TYPE_1__ IConnectionPoint_iface; scalar_t__ nSinks; void* sinks; int iid; int * Obj; } ;
typedef int * REFIID ;
typedef int IUnknown ;
typedef TYPE_1__ IConnectionPoint ;
typedef int HRESULT ;
typedef TYPE_2__ ConnectionPointImpl ;


 int ConnectionPointImpl_VTable ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int MAXSINKS ;
 int S_OK ;
 int TRACE (char*,int *,int ,TYPE_1__**) ;
 int debugstr_guid (int *) ;

HRESULT CreateConnectionPoint(IUnknown *pUnk, REFIID riid,
         IConnectionPoint **pCP)
{
  ConnectionPointImpl *Obj;

  TRACE("(%p %s %p)\n", pUnk, debugstr_guid(riid), pCP);

  *pCP = ((void*)0);
  Obj = HeapAlloc(GetProcessHeap(), 0, sizeof(*Obj));
  if (!Obj)
    return E_OUTOFMEMORY;

  Obj->IConnectionPoint_iface.lpVtbl = &ConnectionPointImpl_VTable;
  Obj->Obj = pUnk;
  Obj->ref = 1;
  Obj->iid = *riid;
  Obj->maxSinks = MAXSINKS;
  Obj->sinks = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(IUnknown*) * MAXSINKS);
  Obj->nSinks = 0;

  *pCP = &Obj->IConnectionPoint_iface;
  return S_OK;
}
