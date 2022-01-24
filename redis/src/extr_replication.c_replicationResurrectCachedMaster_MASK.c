#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  connection ;
struct TYPE_7__ {int flags; int authenticated; int /*<<< orphan*/ * conn; int /*<<< orphan*/  lastinteraction; } ;
struct TYPE_6__ {TYPE_2__* master; scalar_t__ repl_down_since; int /*<<< orphan*/  repl_state; int /*<<< orphan*/  unixtime; TYPE_2__* cached_master; } ;

/* Variables and functions */
 int CLIENT_CLOSE_AFTER_REPLY ; 
 int CLIENT_CLOSE_ASAP ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  REPL_STATE_CONNECTED ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  readQueryFromClient ; 
 int /*<<< orphan*/  sendReplyToClient ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(connection *conn) {
    server.master = server.cached_master;
    server.cached_master = NULL;
    server.master->conn = conn;
    FUNC1(server.master->conn, server.master);
    server.master->flags &= ~(CLIENT_CLOSE_AFTER_REPLY|CLIENT_CLOSE_ASAP);
    server.master->authenticated = 1;
    server.master->lastinteraction = server.unixtime;
    server.repl_state = REPL_STATE_CONNECTED;
    server.repl_down_since = 0;

    /* Re-add to the list of clients. */
    FUNC5(server.master);
    if (FUNC2(server.master->conn, readQueryFromClient)) {
        FUNC6(LL_WARNING,"Error resurrecting the cached master, impossible to add the readable handler: %s", FUNC7(errno));
        FUNC4(server.master); /* Close ASAP. */
    }

    /* We may also need to install the write handler as well if there is
     * pending data in the write buffers. */
    if (FUNC0(server.master)) {
        if (FUNC3(server.master->conn, sendReplyToClient)) {
            FUNC6(LL_WARNING,"Error resurrecting the cached master, impossible to add the writable handler: %s", FUNC7(errno));
            FUNC4(server.master); /* Close ASAP. */
        }
    }
}