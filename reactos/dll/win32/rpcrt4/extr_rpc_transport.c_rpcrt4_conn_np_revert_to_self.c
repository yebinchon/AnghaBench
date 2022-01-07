
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ctx; scalar_t__ AuthInfo; } ;
typedef TYPE_1__ RpcConnection ;
typedef int RPC_STATUS ;
typedef int BOOL ;


 int GetLastError () ;
 int RPCRT4_default_revert_to_self (TYPE_1__*) ;
 int RPC_S_NO_CONTEXT_AVAILABLE ;
 int RPC_S_OK ;
 int RevertToSelf () ;
 scalar_t__ SecIsValidHandle (int *) ;
 int TRACE (char*,TYPE_1__*) ;
 int WARN (char*,int ) ;

__attribute__((used)) static RPC_STATUS rpcrt4_conn_np_revert_to_self(RpcConnection *conn)
{
    BOOL ret;

    TRACE("(%p)\n", conn);

    if (conn->AuthInfo && SecIsValidHandle(&conn->ctx))
        return RPCRT4_default_revert_to_self(conn);

    ret = RevertToSelf();
    if (!ret)
    {
        WARN("RevertToSelf failed with error %u\n", GetLastError());
        return RPC_S_NO_CONTEXT_AVAILABLE;
    }
    return RPC_S_OK;
}
