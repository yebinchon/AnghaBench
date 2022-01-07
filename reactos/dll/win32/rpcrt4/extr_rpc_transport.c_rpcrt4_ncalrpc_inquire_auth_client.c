
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int RpcConnection ;
typedef int * RPC_WSTR ;
typedef int RPC_STATUS ;
typedef int * RPC_AUTHZ_HANDLE ;


 int FIXME (char*,...) ;
 scalar_t__ RPC_C_AUTHN_LEVEL_PKT_PRIVACY ;
 scalar_t__ RPC_C_AUTHN_WINNT ;
 scalar_t__ RPC_C_AUTHZ_NONE ;
 int RPC_S_OK ;
 int TRACE (char*,int *,int **,int **,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__) ;

__attribute__((used)) static RPC_STATUS rpcrt4_ncalrpc_inquire_auth_client(
    RpcConnection *conn, RPC_AUTHZ_HANDLE *privs, RPC_WSTR *server_princ_name,
    ULONG *authn_level, ULONG *authn_svc, ULONG *authz_svc, ULONG flags)
{
    TRACE("(%p, %p, %p, %p, %p, %p, 0x%x)\n", conn, privs,
          server_princ_name, authn_level, authn_svc, authz_svc, flags);

    if (privs)
    {
        FIXME("privs not implemented\n");
        *privs = ((void*)0);
    }
    if (server_princ_name)
    {
        FIXME("server_princ_name not implemented\n");
        *server_princ_name = ((void*)0);
    }
    if (authn_level) *authn_level = RPC_C_AUTHN_LEVEL_PKT_PRIVACY;
    if (authn_svc) *authn_svc = RPC_C_AUTHN_WINNT;
    if (authz_svc)
    {
        FIXME("authorization service not implemented\n");
        *authz_svc = RPC_C_AUTHZ_NONE;
    }
    if (flags)
        FIXME("flags 0x%x not implemented\n", flags);

    return RPC_S_OK;
}
