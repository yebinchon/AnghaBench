
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ctx; scalar_t__ AuthInfo; } ;
struct TYPE_6__ {int pipe; } ;
typedef TYPE_1__ RpcConnection_np ;
typedef TYPE_2__ RpcConnection ;
typedef int RPC_STATUS ;
typedef int DWORD ;
typedef int BOOL ;



 int GetLastError () ;
 int ImpersonateNamedPipeClient (int ) ;
 int RPCRT4_default_impersonate_client (TYPE_2__*) ;
 int RPC_S_NO_CONTEXT_AVAILABLE ;
 int RPC_S_OK ;
 scalar_t__ SecIsValidHandle (int *) ;
 int TRACE (char*,TYPE_2__*) ;
 int WARN (char*,int) ;

__attribute__((used)) static RPC_STATUS rpcrt4_conn_np_impersonate_client(RpcConnection *conn)
{
    RpcConnection_np *npc = (RpcConnection_np *)conn;
    BOOL ret;

    TRACE("(%p)\n", conn);

    if (conn->AuthInfo && SecIsValidHandle(&conn->ctx))
        return RPCRT4_default_impersonate_client(conn);

    ret = ImpersonateNamedPipeClient(npc->pipe);
    if (!ret)
    {
        DWORD error = GetLastError();
        WARN("ImpersonateNamedPipeClient failed with error %u\n", error);
        switch (error)
        {
        case 128:
            return RPC_S_NO_CONTEXT_AVAILABLE;
        }
    }
    return RPC_S_OK;
}
