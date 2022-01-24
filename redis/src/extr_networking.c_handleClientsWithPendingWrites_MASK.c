#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_7__ {int flags; int /*<<< orphan*/  conn; } ;
typedef  TYPE_1__ client ;
struct TYPE_8__ {scalar_t__ aof_state; scalar_t__ aof_fsync; int /*<<< orphan*/  clients_pending_write; } ;

/* Variables and functions */
 scalar_t__ AOF_FSYNC_ALWAYS ; 
 scalar_t__ AOF_ON ; 
 int CLIENT_PENDING_WRITE ; 
 int CLIENT_PROTECTED ; 
 scalar_t__ C_ERR ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sendReplyToClient ; 
 TYPE_3__ server ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC9(void) {
    listIter li;
    listNode *ln;
    int processed = FUNC4(server.clients_pending_write);

    FUNC7(server.clients_pending_write,&li);
    while((ln = FUNC5(&li))) {
        client *c = FUNC6(ln);
        c->flags &= ~CLIENT_PENDING_WRITE;
        FUNC3(server.clients_pending_write,ln);

        /* If a client is protected, don't do anything,
         * that may trigger write error or recreate handler. */
        if (c->flags & CLIENT_PROTECTED) continue;

        /* Try to write buffers to the client socket. */
        if (FUNC8(c,0) == C_ERR) continue;

        /* If after the synchronous writes above we still have data to
         * output to the client, we need to install the writable handler. */
        if (FUNC0(c)) {
            int ae_barrier = 0;
            /* For the fsync=always policy, we want that a given FD is never
             * served for reading and writing in the same event loop iteration,
             * so that in the middle of receiving the query, and serving it
             * to the client, we'll call beforeSleep() that will do the
             * actual fsync of AOF to disk. the write barrier ensures that. */
            if (server.aof_state == AOF_ON &&
                server.aof_fsync == AOF_FSYNC_ALWAYS)
            {
                ae_barrier = 1;
            }
            if (FUNC1(c->conn, sendReplyToClient, ae_barrier) == C_ERR) {
                FUNC2(c);
            }
        }
    }
    return processed;
}