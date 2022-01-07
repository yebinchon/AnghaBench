
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ctx; int AuthInfo; } ;
typedef int SECURITY_STATUS ;
typedef TYPE_1__ RpcConnection ;
typedef int RPC_STATUS ;


 int RPC_S_CANNOT_SUPPORT ;
 int RPC_S_NO_CONTEXT_AVAILABLE ;
 int RPC_S_OK ;
 int RPC_S_SEC_PKG_ERROR ;
 int RevertSecurityContext (int *) ;



 int SecIsValidHandle (int *) ;
 int TRACE (char*,TYPE_1__*) ;
 int WARN (char*,int) ;

RPC_STATUS RPCRT4_default_revert_to_self(RpcConnection *conn)
{
    SECURITY_STATUS sec_status;

    TRACE("(%p)\n", conn);

    if (!conn->AuthInfo || !SecIsValidHandle(&conn->ctx))
        return RPC_S_NO_CONTEXT_AVAILABLE;
    sec_status = RevertSecurityContext(&conn->ctx);
    if (sec_status != 129)
        WARN("RevertSecurityContext returned 0x%08x\n", sec_status);
    switch (sec_status)
    {
    case 128:
        return RPC_S_CANNOT_SUPPORT;
    case 130:
        return RPC_S_NO_CONTEXT_AVAILABLE;
    case 129:
        return RPC_S_OK;
    default:
        return RPC_S_SEC_PKG_ERROR;
    }
}
