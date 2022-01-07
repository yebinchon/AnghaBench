
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int connection_cnt; int NetworkOptions; int Endpoint; int NetworkAddr; int Protseq; } ;
struct TYPE_14__ {TYPE_2__* assoc; } ;
typedef int RpcQualityOfService ;
typedef TYPE_1__ RpcConnection ;
typedef int RpcAuthInfo ;
typedef TYPE_2__ RpcAssoc ;
typedef int RPC_SYNTAX_IDENTIFIER ;
typedef scalar_t__ RPC_STATUS ;
typedef int LPCWSTR ;
typedef int BOOL ;


 int FALSE ;
 int InterlockedIncrement (int *) ;
 scalar_t__ RPCRT4_CreateConnection (TYPE_1__**,int ,int ,int ,int ,int ,int *,int *,int ) ;
 scalar_t__ RPCRT4_OpenClientConnection (TYPE_1__*) ;
 int RPCRT4_ReleaseConnection (TYPE_1__*) ;
 scalar_t__ RPC_S_OK ;
 scalar_t__ RpcAssoc_BindConnection (TYPE_2__*,TYPE_1__*,int const*,int const*) ;
 TYPE_1__* RpcAssoc_GetIdleConnection (TYPE_2__*,int const*,int const*,int *,int *) ;
 int TRACE (char*,TYPE_1__*,TYPE_2__*) ;
 int TRUE ;

RPC_STATUS RpcAssoc_GetClientConnection(RpcAssoc *assoc,
                                        const RPC_SYNTAX_IDENTIFIER *InterfaceId,
                                        const RPC_SYNTAX_IDENTIFIER *TransferSyntax, RpcAuthInfo *AuthInfo,
                                        RpcQualityOfService *QOS, LPCWSTR CookieAuth,
                                        RpcConnection **Connection, BOOL *from_cache)
{
    RpcConnection *NewConnection;
    RPC_STATUS status;

    *Connection = RpcAssoc_GetIdleConnection(assoc, InterfaceId, TransferSyntax, AuthInfo, QOS);
    if (*Connection) {
        TRACE("return idle connection %p for association %p\n", *Connection, assoc);
        if (from_cache) *from_cache = TRUE;
        return RPC_S_OK;
    }


    status = RPCRT4_CreateConnection(&NewConnection, FALSE ,
        assoc->Protseq, assoc->NetworkAddr,
        assoc->Endpoint, assoc->NetworkOptions,
        AuthInfo, QOS, CookieAuth);
    if (status != RPC_S_OK)
        return status;

    NewConnection->assoc = assoc;
    status = RPCRT4_OpenClientConnection(NewConnection);
    if (status != RPC_S_OK)
    {
        RPCRT4_ReleaseConnection(NewConnection);
        return status;
    }

    status = RpcAssoc_BindConnection(assoc, NewConnection, InterfaceId, TransferSyntax);
    if (status != RPC_S_OK)
    {
        RPCRT4_ReleaseConnection(NewConnection);
        return status;
    }

    InterlockedIncrement(&assoc->connection_cnt);

    TRACE("return new connection %p for association %p\n", *Connection, assoc);
    *Connection = NewConnection;
    if (from_cache) *from_cache = FALSE;
    return RPC_S_OK;
}
