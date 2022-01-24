#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  connection ;
struct TYPE_4__ {int /*<<< orphan*/ * conn; } ;
typedef  TYPE_1__ clusterLink ;

/* Variables and functions */
 scalar_t__ CONN_STATE_CONNECTED ; 
 int /*<<< orphan*/  LL_VERBOSE ; 
 int /*<<< orphan*/  clusterReadHandler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(connection *conn) {
    clusterLink *link;

    if (FUNC2(conn) != CONN_STATE_CONNECTED) {
        FUNC6(LL_VERBOSE,
                "Error accepting cluster node connection: %s", FUNC1(conn));
        FUNC0(conn);
        return;
    }

    /* Create a link object we use to handle the connection.
     * It gets passed to the readable handler when data is available.
     * Initiallly the link->node pointer is set to NULL as we don't know
     * which node is, but the right node is references once we know the
     * node identity. */
    link = FUNC5(NULL);
    link->conn = conn;
    FUNC3(conn, link);

    /* Register read handler */
    FUNC4(conn, clusterReadHandler);
}