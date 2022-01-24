#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ wait_release; scalar_t__ assoc; scalar_t__ server_binding; scalar_t__ QOS; scalar_t__ AuthInfo; struct TYPE_8__* CookieAuth; struct TYPE_8__* NetworkOptions; int /*<<< orphan*/  NetworkAddr; int /*<<< orphan*/  Endpoint; int /*<<< orphan*/  ref; TYPE_1__* protseq; int /*<<< orphan*/  protseq_entry; } ;
struct TYPE_7__ {int /*<<< orphan*/  cs; } ;
typedef  TYPE_2__ RpcConnection ;
typedef  scalar_t__ LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

void FUNC14(RpcConnection *connection)
{
    LONG ref;

    /* protseq stores a list of active connections, but does not own references to them.
     * It may need to grab a connection from the list, which could lead to a race if
     * connection is being released, but not yet removed from the list. We handle that
     * by synchronizing on CS here. */
    if (connection->protseq)
    {
        FUNC0(&connection->protseq->cs);
        ref = FUNC3(&connection->ref);
        if (!ref)
            FUNC13(&connection->protseq_entry);
        FUNC4(&connection->protseq->cs);
    }
    else
    {
        ref = FUNC3(&connection->ref);
    }

    FUNC12("%p ref=%u\n", connection, ref);

    if (!ref)
    {
        FUNC5(connection);
        FUNC7(connection->Endpoint);
        FUNC7(connection->NetworkAddr);
        FUNC2(FUNC1(), 0, connection->NetworkOptions);
        FUNC2(FUNC1(), 0, connection->CookieAuth);
        if (connection->AuthInfo) FUNC9(connection->AuthInfo);
        if (connection->QOS) FUNC10(connection->QOS);

        /* server-only */
        if (connection->server_binding) FUNC6(connection->server_binding);
        else if (connection->assoc) FUNC8(connection->assoc);

        if (connection->wait_release) FUNC11(connection->wait_release);

        FUNC2(FUNC1(), 0, connection);
    }
}