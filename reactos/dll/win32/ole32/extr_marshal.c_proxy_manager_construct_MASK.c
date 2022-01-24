#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_10__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_9__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_14__ {int /*<<< orphan*/ * psa; int /*<<< orphan*/  dwAuthnHint; int /*<<< orphan*/  ipidRemUnknown; int /*<<< orphan*/  dwTid; int /*<<< orphan*/  dwPid; } ;
struct proxy_manager {int refs; int /*<<< orphan*/  entry; int /*<<< orphan*/ * dest_context_data; int /*<<< orphan*/  dest_context; int /*<<< orphan*/ * remunk; int /*<<< orphan*/  sorflags; void* oid; void* oxid; TYPE_5__* parent; int /*<<< orphan*/  cs; int /*<<< orphan*/  interfaces; TYPE_3__ IClientSecurity_iface; TYPE_2__ IMarshal_iface; TYPE_1__ IMultiQI_iface; int /*<<< orphan*/  remoting_mutex; TYPE_8__ oxid_info; } ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_13__ {int /*<<< orphan*/  cs; int /*<<< orphan*/  proxies; } ;
struct TYPE_12__ {int /*<<< orphan*/  dwAuthnHint; int /*<<< orphan*/  ipidRemUnknown; int /*<<< orphan*/  dwTid; int /*<<< orphan*/  dwPid; } ;
typedef  TYPE_4__ OXID_INFO ;
typedef  void* OXID ;
typedef  void* OID ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_5__ APARTMENT ;

/* Variables and functions */
 int /*<<< orphan*/  ClientIdentity_Vtbl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct proxy_manager* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct proxy_manager*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSHCTX_INPROC ; 
 int /*<<< orphan*/  ProxyCliSec_Vtbl ; 
 int /*<<< orphan*/  ProxyMarshal_Vtbl ; 
 int /*<<< orphan*/  FUNC12 (void*,TYPE_8__*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC13 (char*,struct proxy_manager*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 

__attribute__((used)) static HRESULT FUNC17(
    APARTMENT * apt, ULONG sorflags, OXID oxid, OID oid,
    const OXID_INFO *oxid_info, struct proxy_manager ** proxy_manager)
{
    struct proxy_manager * This = FUNC8(FUNC6(), 0, sizeof(*This));
    if (!This) return E_OUTOFMEMORY;

    This->remoting_mutex = FUNC1(NULL, FALSE, NULL);
    if (!This->remoting_mutex)
    {
        FUNC9(FUNC6(), 0, This);
        return FUNC7(FUNC5());
    }

    if (oxid_info)
    {
        This->oxid_info.dwPid = oxid_info->dwPid;
        This->oxid_info.dwTid = oxid_info->dwTid;
        This->oxid_info.ipidRemUnknown = oxid_info->ipidRemUnknown;
        This->oxid_info.dwAuthnHint = oxid_info->dwAuthnHint;
        This->oxid_info.psa = NULL /* FIXME: copy from oxid_info */;
    }
    else
    {
        HRESULT hr = FUNC12(oxid, &This->oxid_info);
        if (FUNC4(hr))
        {
            FUNC0(This->remoting_mutex);
            FUNC9(FUNC6(), 0, This);
            return hr;
        }
    }

    This->IMultiQI_iface.lpVtbl = &ClientIdentity_Vtbl;
    This->IMarshal_iface.lpVtbl = &ProxyMarshal_Vtbl;
    This->IClientSecurity_iface.lpVtbl = &ProxyCliSec_Vtbl;

    FUNC15(&This->entry);
    FUNC15(&This->interfaces);

    FUNC10(&This->cs);
    FUNC2(&This->cs, "proxy_manager");

    /* the apartment the object was unmarshaled into */
    This->parent = apt;

    /* the source apartment and id of the object */
    This->oxid = oxid;
    This->oid = oid;

    This->refs = 1;

    /* the DCOM draft specification states that the SORF_NOPING flag is
     * proxy manager specific, not ifproxy specific, so this implies that we
     * should store the STDOBJREF flags here in the proxy manager. */
    This->sorflags = sorflags;

    /* we create the IRemUnknown proxy on demand */
    This->remunk = NULL;

    /* initialise these values to the weakest values and they will be
     * overwritten in proxy_manager_set_context */
    This->dest_context = MSHCTX_INPROC;
    This->dest_context_data = NULL;

    FUNC3(&apt->cs);
    /* FIXME: we are dependent on the ordering in here to make sure a proxy's
     * IRemUnknown proxy doesn't get destroyed before the regular proxy does
     * because we need the IRemUnknown proxy during the destruction of the
     * regular proxy. Ideally, we should maintain a separate list for the
     * IRemUnknown proxies that need late destruction */
    FUNC14(&apt->proxies, &This->entry);
    FUNC11(&apt->cs);

    FUNC13("%p created for OXID %s, OID %s\n", This,
        FUNC16(oxid), FUNC16(oid));

    *proxy_manager = This;
    return S_OK;
}