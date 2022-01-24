#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_10__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {int refs; TYPE_3__ IRpcChannelBuffer_iface; void* dest_context_data; int /*<<< orphan*/  dest_context; } ;
struct TYPE_11__ {TYPE_1__ super; int /*<<< orphan*/  iid; int /*<<< orphan*/ * event; int /*<<< orphan*/  server_pid; int /*<<< orphan*/  oxid; int /*<<< orphan*/  bind; } ;
struct TYPE_9__ {int /*<<< orphan*/  dwPid; } ;
typedef  scalar_t__ RPC_STATUS ;
typedef  int /*<<< orphan*/  RPC_BINDING_HANDLE ;
typedef  TYPE_2__ OXID_INFO ;
typedef  int /*<<< orphan*/  OXID ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  TYPE_3__ IRpcChannelBuffer ;
typedef  int /*<<< orphan*/  IPID ;
typedef  int /*<<< orphan*/  IID ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_4__ ClientRpcChannelBuffer ;
typedef  int /*<<< orphan*/  APARTMENT ;

/* Variables and functions */
 int /*<<< orphan*/  ClientRpcChannelBufferVtbl ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ RPC_S_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  wszRpcTransport ; 

HRESULT FUNC13(const OXID *oxid, const IPID *ipid,
                                const OXID_INFO *oxid_info, const IID *iid,
                                DWORD dest_context, void *dest_context_data,
                                IRpcChannelBuffer **chan, APARTMENT *apt)
{
    ClientRpcChannelBuffer *This;
    WCHAR                   endpoint[200];
    RPC_BINDING_HANDLE      bind;
    RPC_STATUS              status;
    LPWSTR                  string_binding;

    /* FIXME: get the endpoint from oxid_info->psa instead */
    FUNC12(endpoint, oxid);

    FUNC9("proxy pipe: connecting to endpoint: %s\n", FUNC11(endpoint));

    status = FUNC7(
        NULL,
        wszRpcTransport,
        NULL,
        endpoint,
        NULL,
        &string_binding);
        
    if (status == RPC_S_OK)
    {
        status = FUNC5(string_binding, &bind);

        if (status == RPC_S_OK)
        {
            IPID ipid2 = *ipid; /* why can't RpcBindingSetObject take a const? */
            status = FUNC6(bind, &ipid2);
            if (status != RPC_S_OK)
                FUNC4(&bind);
        }

        FUNC8(&string_binding);
    }

    if (status != RPC_S_OK)
    {
        FUNC0("Couldn't get binding for endpoint %s, status = %d\n", FUNC11(endpoint), status);
        return FUNC2(status);
    }

    This = FUNC3(FUNC1(), 0, sizeof(*This));
    if (!This)
    {
        FUNC4(&bind);
        return E_OUTOFMEMORY;
    }

    This->super.IRpcChannelBuffer_iface.lpVtbl = &ClientRpcChannelBufferVtbl;
    This->super.refs = 1;
    This->super.dest_context = dest_context;
    This->super.dest_context_data = dest_context_data;
    This->bind = bind;
    FUNC10(apt, &This->oxid);
    This->server_pid = oxid_info->dwPid;
    This->event = NULL;
    This->iid = *iid;

    *chan = &This->super.IRpcChannelBuffer_iface;

    return S_OK;
}