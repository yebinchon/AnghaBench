
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_14__ {int * psa; int dwAuthnHint; int ipidRemUnknown; int dwTid; int dwPid; } ;
struct proxy_manager {int refs; int entry; int * dest_context_data; int dest_context; int * remunk; int sorflags; void* oid; void* oxid; TYPE_5__* parent; int cs; int interfaces; TYPE_3__ IClientSecurity_iface; TYPE_2__ IMarshal_iface; TYPE_1__ IMultiQI_iface; int remoting_mutex; TYPE_8__ oxid_info; } ;
typedef int ULONG ;
struct TYPE_13__ {int cs; int proxies; } ;
struct TYPE_12__ {int dwAuthnHint; int ipidRemUnknown; int dwTid; int dwPid; } ;
typedef TYPE_4__ OXID_INFO ;
typedef void* OXID ;
typedef void* OID ;
typedef int HRESULT ;
typedef TYPE_5__ APARTMENT ;


 int ClientIdentity_Vtbl ;
 int CloseHandle (int ) ;
 int CreateMutexW (int *,int ,int *) ;
 int DEBUG_SET_CRITSEC_NAME (int *,char*) ;
 int E_OUTOFMEMORY ;
 int EnterCriticalSection (int *) ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int GetLastError () ;
 int GetProcessHeap () ;
 int HRESULT_FROM_WIN32 (int ) ;
 struct proxy_manager* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,struct proxy_manager*) ;
 int InitializeCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int MSHCTX_INPROC ;
 int ProxyCliSec_Vtbl ;
 int ProxyMarshal_Vtbl ;
 int RPC_ResolveOxid (void*,TYPE_8__*) ;
 int S_OK ;
 int TRACE (char*,struct proxy_manager*,int ,int ) ;
 int list_add_tail (int *,int *) ;
 int list_init (int *) ;
 int wine_dbgstr_longlong (void*) ;

__attribute__((used)) static HRESULT proxy_manager_construct(
    APARTMENT * apt, ULONG sorflags, OXID oxid, OID oid,
    const OXID_INFO *oxid_info, struct proxy_manager ** proxy_manager)
{
    struct proxy_manager * This = HeapAlloc(GetProcessHeap(), 0, sizeof(*This));
    if (!This) return E_OUTOFMEMORY;

    This->remoting_mutex = CreateMutexW(((void*)0), FALSE, ((void*)0));
    if (!This->remoting_mutex)
    {
        HeapFree(GetProcessHeap(), 0, This);
        return HRESULT_FROM_WIN32(GetLastError());
    }

    if (oxid_info)
    {
        This->oxid_info.dwPid = oxid_info->dwPid;
        This->oxid_info.dwTid = oxid_info->dwTid;
        This->oxid_info.ipidRemUnknown = oxid_info->ipidRemUnknown;
        This->oxid_info.dwAuthnHint = oxid_info->dwAuthnHint;
        This->oxid_info.psa = ((void*)0) ;
    }
    else
    {
        HRESULT hr = RPC_ResolveOxid(oxid, &This->oxid_info);
        if (FAILED(hr))
        {
            CloseHandle(This->remoting_mutex);
            HeapFree(GetProcessHeap(), 0, This);
            return hr;
        }
    }

    This->IMultiQI_iface.lpVtbl = &ClientIdentity_Vtbl;
    This->IMarshal_iface.lpVtbl = &ProxyMarshal_Vtbl;
    This->IClientSecurity_iface.lpVtbl = &ProxyCliSec_Vtbl;

    list_init(&This->entry);
    list_init(&This->interfaces);

    InitializeCriticalSection(&This->cs);
    DEBUG_SET_CRITSEC_NAME(&This->cs, "proxy_manager");


    This->parent = apt;


    This->oxid = oxid;
    This->oid = oid;

    This->refs = 1;




    This->sorflags = sorflags;


    This->remunk = ((void*)0);



    This->dest_context = MSHCTX_INPROC;
    This->dest_context_data = ((void*)0);

    EnterCriticalSection(&apt->cs);





    list_add_tail(&apt->proxies, &This->entry);
    LeaveCriticalSection(&apt->cs);

    TRACE("%p created for OXID %s, OID %s\n", This,
        wine_dbgstr_longlong(oxid), wine_dbgstr_longlong(oid));

    *proxy_manager = This;
    return S_OK;
}
