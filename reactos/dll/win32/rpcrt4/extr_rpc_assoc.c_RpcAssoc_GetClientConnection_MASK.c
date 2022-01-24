#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  connection_cnt; int /*<<< orphan*/  NetworkOptions; int /*<<< orphan*/  Endpoint; int /*<<< orphan*/  NetworkAddr; int /*<<< orphan*/  Protseq; } ;
struct TYPE_14__ {TYPE_2__* assoc; } ;
typedef  int /*<<< orphan*/  RpcQualityOfService ;
typedef  TYPE_1__ RpcConnection ;
typedef  int /*<<< orphan*/  RpcAuthInfo ;
typedef  TYPE_2__ RpcAssoc ;
typedef  int /*<<< orphan*/  RPC_SYNTAX_IDENTIFIER ;
typedef  scalar_t__ RPC_STATUS ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ RPC_S_OK ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC5 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  TRUE ; 

RPC_STATUS FUNC7(RpcAssoc *assoc,
                                        const RPC_SYNTAX_IDENTIFIER *InterfaceId,
                                        const RPC_SYNTAX_IDENTIFIER *TransferSyntax, RpcAuthInfo *AuthInfo,
                                        RpcQualityOfService *QOS, LPCWSTR CookieAuth,
                                        RpcConnection **Connection, BOOL *from_cache)
{
    RpcConnection *NewConnection;
    RPC_STATUS status;

    *Connection = FUNC5(assoc, InterfaceId, TransferSyntax, AuthInfo, QOS);
    if (*Connection) {
        FUNC6("return idle connection %p for association %p\n", *Connection, assoc);
        if (from_cache) *from_cache = TRUE;
        return RPC_S_OK;
    }

    /* create a new connection */
    status = FUNC1(&NewConnection, FALSE /* is this a server connection? */,
        assoc->Protseq, assoc->NetworkAddr,
        assoc->Endpoint, assoc->NetworkOptions,
        AuthInfo, QOS, CookieAuth);
    if (status != RPC_S_OK)
        return status;

    NewConnection->assoc = assoc;
    status = FUNC2(NewConnection);
    if (status != RPC_S_OK)
    {
        FUNC3(NewConnection);
        return status;
    }

    status = FUNC4(assoc, NewConnection, InterfaceId, TransferSyntax);
    if (status != RPC_S_OK)
    {
        FUNC3(NewConnection);
        return status;
    }

    FUNC0(&assoc->connection_cnt);

    FUNC6("return new connection %p for association %p\n", *Connection, assoc);
    *Connection = NewConnection;
    if (from_cache) *from_cache = FALSE;
    return RPC_S_OK;
}