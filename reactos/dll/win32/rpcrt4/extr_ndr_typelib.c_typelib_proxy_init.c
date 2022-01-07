
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_8__ {int RefCount; scalar_t__ PVtbl; TYPE_4__ IRpcProxyBuffer_iface; int base_object; int base_proxy; int * pUnkOuter; int piid; } ;
struct typelib_proxy {TYPE_3__ proxy; TYPE_2__* proxy_vtbl; } ;
typedef int ULONG ;
struct TYPE_6__ {int piid; } ;
struct TYPE_7__ {TYPE_1__ header; scalar_t__ Vtbl; } ;
typedef int IUnknownVtbl ;
typedef int IUnknown ;
typedef TYPE_4__ IRpcProxyBuffer ;
typedef int HRESULT ;
typedef int GUID ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int IID_IUnknown ;
 int IUnknown_AddRef (int *) ;
 int IsEqualGUID (int const*,int *) ;
 int S_OK ;
 int create_proxy (int const*,int *,int *,void**) ;
 int fill_stubless_table (int *,int ) ;
 int typelib_proxy_vtbl ;

__attribute__((used)) static HRESULT typelib_proxy_init(struct typelib_proxy *proxy, IUnknown *outer,
        ULONG count, const GUID *parentiid, IRpcProxyBuffer **proxy_buffer, void **out)
{
    if (!fill_stubless_table((IUnknownVtbl *)proxy->proxy_vtbl->Vtbl, count))
        return E_OUTOFMEMORY;

    if (!outer) outer = (IUnknown *)&proxy->proxy;

    proxy->proxy.IRpcProxyBuffer_iface.lpVtbl = &typelib_proxy_vtbl;
    proxy->proxy.PVtbl = proxy->proxy_vtbl->Vtbl;
    proxy->proxy.RefCount = 1;
    proxy->proxy.piid = proxy->proxy_vtbl->header.piid;
    proxy->proxy.pUnkOuter = outer;

    if (!IsEqualGUID(parentiid, &IID_IUnknown))
    {
        HRESULT hr = create_proxy(parentiid, ((void*)0), &proxy->proxy.base_proxy,
                (void **)&proxy->proxy.base_object);
        if (FAILED(hr)) return hr;
    }

    *proxy_buffer = &proxy->proxy.IRpcProxyBuffer_iface;
    *out = &proxy->proxy.PVtbl;
    IUnknown_AddRef((IUnknown *)*out);

    return S_OK;
}
