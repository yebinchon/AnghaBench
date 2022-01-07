
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_20__ {int * lpVtbl; } ;
struct TYPE_19__ {int * lpVtbl; } ;
struct TYPE_18__ {int * lpVtbl; } ;
struct TYPE_17__ {int * lpVtbl; } ;
struct TYPE_16__ {int * lpVtbl; } ;
struct TYPE_15__ {int * lpVtbl; } ;
struct TYPE_21__ {int inproc_server; int ref; int * pCFObject; int object_state; int * pDataDelegate; int * pOleDelegate; int * pPSDelegate; int clsid; int storage_state; int * storage; scalar_t__ dwAdvConn; scalar_t__ in_call; int * containerObj; int * containerApp; int * dataAdviseHolder; int * oleAdviseHolder; int * clientSite; TYPE_6__* dataCache; TYPE_6__* outerUnknown; int dataCache_PersistStg; TYPE_6__ IUnknown_iface; TYPE_5__ IPersistStorage_iface; TYPE_4__ IAdviseSink_iface; TYPE_3__ IRunnableObject_iface; TYPE_2__ IDataObject_iface; TYPE_1__ IOleObject_iface; } ;
typedef int * REFCLSID ;
typedef TYPE_6__* LPUNKNOWN ;
typedef int IClassFactory ;
typedef int HRESULT ;
typedef TYPE_7__ DefaultHandler ;
typedef int DWORD ;


 int CLSCTX_INPROC_SERVER ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int CreateDataCache (TYPE_6__*,int *,int *,void**) ;
 int DefaultHandler_IAdviseSink_VTable ;
 int DefaultHandler_IDataObject_VTable ;
 int DefaultHandler_IOleObject_VTable ;
 int DefaultHandler_IPersistStorage_VTable ;
 int DefaultHandler_IRunnableObject_VTable ;
 int DefaultHandler_NDIUnknown_VTable ;
 int EMBDHLP_DELAYCREATE ;
 int EMBDHLP_INPROC_SERVER ;
 int ERR (char*) ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 TYPE_7__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_7__*) ;
 int IClassFactory_AddRef (int *) ;
 int IClassFactory_CreateInstance (int *,int *,int *,void**) ;
 int IID_IDataObject ;
 int IID_IOleObject ;
 int IID_IPersistStorage ;
 int IID_IUnknown ;
 int IOleObject_QueryInterface (int *,int *,void**) ;
 int IUnknown_QueryInterface (TYPE_6__*,int *,void**) ;
 int IUnknown_Release (TYPE_6__*) ;
 scalar_t__ SUCCEEDED (int ) ;
 int WARN (char*,int ) ;
 int object_state_not_running ;
 int object_state_running ;
 int storage_state_uninitialised ;

__attribute__((used)) static DefaultHandler* DefaultHandler_Construct(
  REFCLSID clsid,
  LPUNKNOWN pUnkOuter,
  DWORD flags,
  IClassFactory *pCF)
{
  DefaultHandler* This = ((void*)0);
  HRESULT hr;

  This = HeapAlloc(GetProcessHeap(), 0, sizeof(DefaultHandler));

  if (!This)
    return This;

  This->IOleObject_iface.lpVtbl = &DefaultHandler_IOleObject_VTable;
  This->IUnknown_iface.lpVtbl = &DefaultHandler_NDIUnknown_VTable;
  This->IDataObject_iface.lpVtbl = &DefaultHandler_IDataObject_VTable;
  This->IRunnableObject_iface.lpVtbl = &DefaultHandler_IRunnableObject_VTable;
  This->IAdviseSink_iface.lpVtbl = &DefaultHandler_IAdviseSink_VTable;
  This->IPersistStorage_iface.lpVtbl = &DefaultHandler_IPersistStorage_VTable;

  This->inproc_server = (flags & EMBDHLP_INPROC_SERVER) != 0;





  This->ref = 1;







  if (!pUnkOuter)
    pUnkOuter = &This->IUnknown_iface;

  This->outerUnknown = pUnkOuter;






  hr = CreateDataCache(This->outerUnknown,
                       clsid,
                       &IID_IUnknown,
                       (void**)&This->dataCache);
  if(SUCCEEDED(hr))
  {
    hr = IUnknown_QueryInterface(This->dataCache, &IID_IPersistStorage, (void**)&This->dataCache_PersistStg);


    if (SUCCEEDED(hr))
        IUnknown_Release(This->outerUnknown);
    else
        IUnknown_Release(This->dataCache);
  }
  if(FAILED(hr))
  {
    ERR("Unexpected error creating data cache\n");
    HeapFree(GetProcessHeap(), 0, This);
    return ((void*)0);
  }

  This->clsid = *clsid;
  This->clientSite = ((void*)0);
  This->oleAdviseHolder = ((void*)0);
  This->dataAdviseHolder = ((void*)0);
  This->containerApp = ((void*)0);
  This->containerObj = ((void*)0);
  This->pOleDelegate = ((void*)0);
  This->pPSDelegate = ((void*)0);
  This->pDataDelegate = ((void*)0);
  This->object_state = object_state_not_running;
  This->in_call = 0;

  This->dwAdvConn = 0;
  This->storage = ((void*)0);
  This->storage_state = storage_state_uninitialised;

  if (This->inproc_server && !(flags & EMBDHLP_DELAYCREATE))
  {
    HRESULT hr;
    This->pCFObject = ((void*)0);
    if (pCF)
      hr = IClassFactory_CreateInstance(pCF, ((void*)0), &IID_IOleObject, (void **)&This->pOleDelegate);
    else
      hr = CoCreateInstance(&This->clsid, ((void*)0), CLSCTX_INPROC_SERVER,
                            &IID_IOleObject, (void **)&This->pOleDelegate);
    if (SUCCEEDED(hr))
      hr = IOleObject_QueryInterface(This->pOleDelegate, &IID_IPersistStorage, (void **)&This->pPSDelegate);
    if (SUCCEEDED(hr))
      hr = IOleObject_QueryInterface(This->pOleDelegate, &IID_IDataObject, (void **)&This->pDataDelegate);
    if (SUCCEEDED(hr))
      This->object_state = object_state_running;
    if (FAILED(hr))
      WARN("object creation failed with error %08x\n", hr);
  }
  else
  {
    This->pCFObject = pCF;
    if (pCF) IClassFactory_AddRef(pCF);
  }

  return This;
}
