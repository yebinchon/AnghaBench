#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {int RefCount; scalar_t__ PVtbl; TYPE_4__ IRpcProxyBuffer_iface; int /*<<< orphan*/  base_object; int /*<<< orphan*/  base_proxy; int /*<<< orphan*/ * pUnkOuter; int /*<<< orphan*/  piid; } ;
struct typelib_proxy {TYPE_3__ proxy; TYPE_2__* proxy_vtbl; } ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_6__ {int /*<<< orphan*/  piid; } ;
struct TYPE_7__ {TYPE_1__ header; scalar_t__ Vtbl; } ;
typedef  int /*<<< orphan*/  IUnknownVtbl ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_4__ IRpcProxyBuffer ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  typelib_proxy_vtbl ; 

__attribute__((used)) static HRESULT FUNC5(struct typelib_proxy *proxy, IUnknown *outer,
        ULONG count, const GUID *parentiid, IRpcProxyBuffer **proxy_buffer, void **out)
{
    if (!FUNC4((IUnknownVtbl *)proxy->proxy_vtbl->Vtbl, count))
        return E_OUTOFMEMORY;

    if (!outer) outer = (IUnknown *)&proxy->proxy;

    proxy->proxy.IRpcProxyBuffer_iface.lpVtbl = &typelib_proxy_vtbl;
    proxy->proxy.PVtbl = proxy->proxy_vtbl->Vtbl;
    proxy->proxy.RefCount = 1;
    proxy->proxy.piid = proxy->proxy_vtbl->header.piid;
    proxy->proxy.pUnkOuter = outer;

    if (!FUNC2(parentiid, &IID_IUnknown))
    {
        HRESULT hr = FUNC3(parentiid, NULL, &proxy->proxy.base_proxy,
                (void **)&proxy->proxy.base_object);
        if (FUNC0(hr)) return hr;
    }

    *proxy_buffer = &proxy->proxy.IRpcProxyBuffer_iface;
    *out = &proxy->proxy.PVtbl;
    FUNC1((IUnknown *)*out);

    return S_OK;
}