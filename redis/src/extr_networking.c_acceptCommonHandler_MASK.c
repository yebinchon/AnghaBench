#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  conninfo ;
typedef  int /*<<< orphan*/  connection ;
struct TYPE_4__ {int flags; } ;
typedef  TYPE_1__ client ;
struct TYPE_5__ {scalar_t__ maxclients; int /*<<< orphan*/  stat_rejected_conn; int /*<<< orphan*/  clients; } ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  clientAcceptHandler ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(connection *conn, int flags, char *ip) {
    client *c;
    FUNC0(ip);

    /* Admission control will happen before a client is created and connAccept()
     * called, because we don't want to even start transport-level negotiation
     * if rejected.
     */
    if (FUNC9(server.clients) >= server.maxclients) {
        char *err = "-ERR max number of clients reached\r\n";

        /* That's a best effort error message, don't check write errors.
         * Note that for TLS connections, no handshake was done yet so nothing is written
         * and the connection will just drop.
         */
        if (FUNC6(conn,err,FUNC11(err)) == -1) {
            /* Nothing to do, Just to avoid the warning... */
        }
        server.stat_rejected_conn++;
        FUNC2(conn);
        return;
    }

    /* Create connection and client */
    if ((c = FUNC7(conn)) == NULL) {
        char conninfo[100];
        FUNC10(LL_WARNING,
            "Error registering fd event for the new client: %s (conn: %s)",
            FUNC4(conn),
            FUNC3(conn, conninfo, sizeof(conninfo)));
        FUNC2(conn); /* May be already closed, just ignore errors */
        return;
    }

    /* Last chance to keep flags */
    c->flags |= flags;

    /* Initiate accept.
     *
     * Note that connAccept() is free to do two things here:
     * 1. Call clientAcceptHandler() immediately;
     * 2. Schedule a future call to clientAcceptHandler().
     *
     * Because of that, we must do nothing else afterwards.
     */
    if (FUNC1(conn, clientAcceptHandler) == C_ERR) {
        char conninfo[100];
        FUNC10(LL_WARNING,
                "Error accepting a client connection: %s (conn: %s)",
                FUNC4(conn), FUNC3(conn, conninfo, sizeof(conninfo)));
        FUNC8(FUNC5(conn));
        return;
    }
}