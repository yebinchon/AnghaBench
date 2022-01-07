
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* inquire_auth_client ) (TYPE_2__*,int *,int *,int *,int *,int *,int ) ;} ;
typedef TYPE_2__ RpcConnection ;
typedef int RPC_WSTR ;
typedef int RPC_STATUS ;
typedef int RPC_AUTHZ_HANDLE ;


 int stub1 (TYPE_2__*,int *,int *,int *,int *,int *,int ) ;

__attribute__((used)) static inline RPC_STATUS rpcrt4_conn_inquire_auth_client(
    RpcConnection *conn, RPC_AUTHZ_HANDLE *privs, RPC_WSTR *server_princ_name,
    ULONG *authn_level, ULONG *authn_svc, ULONG *authz_svc, ULONG flags)
{
    return conn->ops->inquire_auth_client(conn, privs, server_princ_name, authn_level, authn_svc, authz_svc, flags);
}
