#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* protseq; int /*<<< orphan*/  protseq_entry; int /*<<< orphan*/  CookieAuth; int /*<<< orphan*/  QOS; int /*<<< orphan*/  AuthInfo; int /*<<< orphan*/  Endpoint; int /*<<< orphan*/  NetworkAddr; int /*<<< orphan*/  server; } ;
struct TYPE_9__ {int /*<<< orphan*/  cs; int /*<<< orphan*/  connections; } ;
typedef  TYPE_2__ RpcConnection ;
typedef  scalar_t__ RPC_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ RPC_S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*) ; 

__attribute__((used)) static RpcConnection *FUNC6(RpcConnection *old_connection)
{
    RpcConnection *connection;
    RPC_STATUS err;

    err = FUNC2(&connection, old_connection->server, FUNC4(old_connection),
                                  old_connection->NetworkAddr, old_connection->Endpoint, NULL,
                                  old_connection->AuthInfo, old_connection->QOS, old_connection->CookieAuth);
    if (err != RPC_S_OK)
        return NULL;

    FUNC5(old_connection, connection);
    if (old_connection->protseq)
    {
        FUNC0(&old_connection->protseq->cs);
        connection->protseq = old_connection->protseq;
        FUNC3(&old_connection->protseq->connections, &connection->protseq_entry);
        FUNC1(&old_connection->protseq->cs);
    }
    return connection;
}