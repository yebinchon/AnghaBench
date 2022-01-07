
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_8__ {int refs; TYPE_3__ IRpcChannelBuffer_iface; void* dest_context_data; int dest_context; } ;
struct TYPE_11__ {TYPE_1__ super; int iid; int * event; int server_pid; int oxid; int bind; } ;
struct TYPE_9__ {int dwPid; } ;
typedef scalar_t__ RPC_STATUS ;
typedef int RPC_BINDING_HANDLE ;
typedef TYPE_2__ OXID_INFO ;
typedef int OXID ;
typedef int LPWSTR ;
typedef TYPE_3__ IRpcChannelBuffer ;
typedef int IPID ;
typedef int IID ;
typedef int HRESULT ;
typedef int DWORD ;
typedef TYPE_4__ ClientRpcChannelBuffer ;
typedef int APARTMENT ;


 int ClientRpcChannelBufferVtbl ;
 int ERR (char*,int ,scalar_t__) ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HRESULT_FROM_WIN32 (scalar_t__) ;
 TYPE_4__* HeapAlloc (int ,int ,int) ;
 scalar_t__ RPC_S_OK ;
 int RpcBindingFree (int *) ;
 scalar_t__ RpcBindingFromStringBindingW (int ,int *) ;
 scalar_t__ RpcBindingSetObject (int ,int *) ;
 scalar_t__ RpcStringBindingComposeW (int *,int ,int *,int *,int *,int *) ;
 int RpcStringFreeW (int *) ;
 int S_OK ;
 int TRACE (char*,int ) ;
 int apartment_getoxid (int *,int *) ;
 int debugstr_w (int *) ;
 int get_rpc_endpoint (int *,int const*) ;
 int wszRpcTransport ;

HRESULT RPC_CreateClientChannel(const OXID *oxid, const IPID *ipid,
                                const OXID_INFO *oxid_info, const IID *iid,
                                DWORD dest_context, void *dest_context_data,
                                IRpcChannelBuffer **chan, APARTMENT *apt)
{
    ClientRpcChannelBuffer *This;
    WCHAR endpoint[200];
    RPC_BINDING_HANDLE bind;
    RPC_STATUS status;
    LPWSTR string_binding;


    get_rpc_endpoint(endpoint, oxid);

    TRACE("proxy pipe: connecting to endpoint: %s\n", debugstr_w(endpoint));

    status = RpcStringBindingComposeW(
        ((void*)0),
        wszRpcTransport,
        ((void*)0),
        endpoint,
        ((void*)0),
        &string_binding);

    if (status == RPC_S_OK)
    {
        status = RpcBindingFromStringBindingW(string_binding, &bind);

        if (status == RPC_S_OK)
        {
            IPID ipid2 = *ipid;
            status = RpcBindingSetObject(bind, &ipid2);
            if (status != RPC_S_OK)
                RpcBindingFree(&bind);
        }

        RpcStringFreeW(&string_binding);
    }

    if (status != RPC_S_OK)
    {
        ERR("Couldn't get binding for endpoint %s, status = %d\n", debugstr_w(endpoint), status);
        return HRESULT_FROM_WIN32(status);
    }

    This = HeapAlloc(GetProcessHeap(), 0, sizeof(*This));
    if (!This)
    {
        RpcBindingFree(&bind);
        return E_OUTOFMEMORY;
    }

    This->super.IRpcChannelBuffer_iface.lpVtbl = &ClientRpcChannelBufferVtbl;
    This->super.refs = 1;
    This->super.dest_context = dest_context;
    This->super.dest_context_data = dest_context_data;
    This->bind = bind;
    apartment_getoxid(apt, &This->oxid);
    This->server_pid = oxid_info->dwPid;
    This->event = ((void*)0);
    This->iid = *iid;

    *chan = &This->super.IRpcChannelBuffer_iface;

    return S_OK;
}
