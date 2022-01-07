
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_5__ {TYPE_1__* AuthInfo; } ;
struct TYPE_4__ {scalar_t__ AuthnSvc; scalar_t__ AuthnLevel; int server_principal_name; } ;
typedef TYPE_2__ RpcConnection ;
typedef int RPC_WSTR ;
typedef int RPC_STATUS ;
typedef int * RPC_AUTHZ_HANDLE ;


 int ERROR_OUTOFMEMORY ;
 int FIXME (char*,...) ;
 int RPCRT4_strdupW (int ) ;
 scalar_t__ RPC_C_AUTHZ_NONE ;
 int RPC_S_BINDING_HAS_NO_AUTH ;
 int RPC_S_OK ;

RPC_STATUS RPCRT4_default_inquire_auth_client(
    RpcConnection *conn, RPC_AUTHZ_HANDLE *privs, RPC_WSTR *server_princ_name,
    ULONG *authn_level, ULONG *authn_svc, ULONG *authz_svc, ULONG flags)
{
    if (!conn->AuthInfo) return RPC_S_BINDING_HAS_NO_AUTH;

    if (privs)
    {
        FIXME("privs not implemented\n");
        *privs = ((void*)0);
    }
    if (server_princ_name)
    {
        *server_princ_name = RPCRT4_strdupW(conn->AuthInfo->server_principal_name);
        if (!*server_princ_name) return ERROR_OUTOFMEMORY;
    }
    if (authn_level) *authn_level = conn->AuthInfo->AuthnLevel;
    if (authn_svc) *authn_svc = conn->AuthInfo->AuthnSvc;
    if (authz_svc)
    {
        FIXME("authorization service not implemented\n");
        *authz_svc = RPC_C_AUTHZ_NONE;
    }
    if (flags)
        FIXME("flags 0x%x not implemented\n", flags);

    return RPC_S_OK;
}
