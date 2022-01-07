
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_14__ {int piid; } ;
struct TYPE_18__ {TYPE_3__ header; scalar_t__ Vtbl; } ;
struct TYPE_17__ {int * lpVtbl; } ;
struct TYPE_16__ {int TableVersion; scalar_t__* pDelegatedIIDs; TYPE_2__** pStubVtblList; TYPE_7__** pProxyVtblList; int * pNamesArray; } ;
struct TYPE_15__ {int RefCount; int * base_object; int * base_proxy; scalar_t__ PVtbl; TYPE_6__ IRpcProxyBuffer_iface; int * pChannel; int pPSFactory; int name; int * pUnkOuter; int piid; } ;
struct TYPE_12__ {int DispatchTableCount; } ;
struct TYPE_13__ {TYPE_1__ header; } ;
typedef TYPE_4__ StdProxyImpl ;
typedef int REFIID ;
typedef TYPE_5__ ProxyFileInfo ;
typedef int PCInterfaceName ;
typedef scalar_t__* LPVOID ;
typedef int * LPUNKNOWN ;
typedef TYPE_6__* LPRPCPROXYBUFFER ;
typedef int LPPSFACTORYBUFFER ;
typedef int IUnknownVtbl ;
typedef int IUnknown ;
typedef int HRESULT ;
typedef TYPE_7__ CInterfaceProxyVtbl ;


 int ERR (char*) ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_4__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_4__*) ;
 int IPSFactoryBuffer_AddRef (int ) ;
 int IUnknown_AddRef (int *) ;
 int IsEqualGUID (int ,int ) ;
 int RPC_E_UNEXPECTED ;
 int S_OK ;
 int StdProxy_Vtbl ;
 int TRACE (char*,int ,...) ;
 int create_proxy (scalar_t__,int *,int **,void**) ;
 int debugstr_guid (int ) ;
 int fill_stubless_table (int *,int ) ;

HRESULT StdProxy_Construct(REFIID riid,
                           LPUNKNOWN pUnkOuter,
                           const ProxyFileInfo *ProxyInfo,
                           int Index,
                           LPPSFACTORYBUFFER pPSFactory,
                           LPRPCPROXYBUFFER *ppProxy,
                           LPVOID *ppvObj)
{
  StdProxyImpl *This;
  PCInterfaceName name = ProxyInfo->pNamesArray[Index];
  CInterfaceProxyVtbl *vtbl = ProxyInfo->pProxyVtblList[Index];

  TRACE("(%p,%p,%p,%p,%p) %s\n", pUnkOuter, vtbl, pPSFactory, ppProxy, ppvObj, name);


  if (ProxyInfo->TableVersion > 1) {
    ULONG count = ProxyInfo->pStubVtblList[Index]->header.DispatchTableCount;
    vtbl = (CInterfaceProxyVtbl *)((const void **)vtbl + 1);
    TRACE("stubless vtbl %p: count=%d\n", vtbl->Vtbl, count );
    fill_stubless_table( (IUnknownVtbl *)vtbl->Vtbl, count );
  }

  if (!IsEqualGUID(vtbl->header.piid, riid)) {
    ERR("IID mismatch during proxy creation\n");
    return RPC_E_UNEXPECTED;
  }

  This = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(StdProxyImpl));
  if (!This) return E_OUTOFMEMORY;

  if (!pUnkOuter) pUnkOuter = (IUnknown *)This;
  This->IRpcProxyBuffer_iface.lpVtbl = &StdProxy_Vtbl;
  This->PVtbl = vtbl->Vtbl;

  This->RefCount = 1;
  This->piid = vtbl->header.piid;
  This->base_object = ((void*)0);
  This->base_proxy = ((void*)0);
  This->pUnkOuter = pUnkOuter;
  This->name = name;
  This->pPSFactory = pPSFactory;
  This->pChannel = ((void*)0);

  if(ProxyInfo->pDelegatedIIDs && ProxyInfo->pDelegatedIIDs[Index])
  {
      HRESULT r = create_proxy( ProxyInfo->pDelegatedIIDs[Index], ((void*)0),
                                &This->base_proxy, (void **)&This->base_object );
      if (FAILED(r))
      {
          HeapFree( GetProcessHeap(), 0, This );
          return r;
      }
  }

  *ppProxy = &This->IRpcProxyBuffer_iface;
  *ppvObj = &This->PVtbl;
  IUnknown_AddRef((IUnknown *)*ppvObj);
  IPSFactoryBuffer_AddRef(pPSFactory);

  TRACE( "iid=%s this %p proxy %p obj %p vtbl %p base proxy %p base obj %p\n",
         debugstr_guid(riid), This, *ppProxy, *ppvObj, This->PVtbl, This->base_proxy, This->base_object );
  return S_OK;
}
