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
typedef  int /*<<< orphan*/  listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_7__ {int /*<<< orphan*/  conn; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ client ;
struct TYPE_8__ {int io_threads_num; int /*<<< orphan*/  clients_pending_write; } ;

/* Variables and functions */
 scalar_t__ AE_ERR ; 
 int /*<<< orphan*/  CLIENT_PENDING_WRITE ; 
 int /*<<< orphan*/  IO_THREADS_OP_WRITE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  io_threads_active ; 
 int /*<<< orphan*/ * io_threads_list ; 
 int /*<<< orphan*/  io_threads_op ; 
 int* io_threads_pending ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  sendReplyToClient ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ tio_debug ; 

int FUNC13(void) {
    int processed = FUNC6(server.clients_pending_write);
    if (processed == 0) return 0; /* Return ASAP if there are no clients. */

    /* If we have just a few clients to serve, don't use I/O threads, but the
     * boring synchronous code. */
    if (FUNC12()) {
        return FUNC3();
    }

    /* Start threads if needed. */
    if (!io_threads_active) FUNC11();

    if (tio_debug) FUNC10("%d TOTAL WRITE pending clients\n", processed);

    /* Distribute the clients across N different lists. */
    listIter li;
    listNode *ln;
    FUNC9(server.clients_pending_write,&li);
    int item_id = 0;
    while((ln = FUNC7(&li))) {
        client *c = FUNC8(ln);
        c->flags &= ~CLIENT_PENDING_WRITE;
        int target_id = item_id % server.io_threads_num;
        FUNC4(io_threads_list[target_id],c);
        item_id++;
    }

    /* Give the start condition to the waiting threads, by setting the
     * start condition atomic var. */
    io_threads_op = IO_THREADS_OP_WRITE;
    for (int j = 0; j < server.io_threads_num; j++) {
        int count = FUNC6(io_threads_list[j]);
        io_threads_pending[j] = count;
    }

    /* Wait for all threads to end their work. */
    while(1) {
        unsigned long pending = 0;
        for (int j = 0; j < server.io_threads_num; j++)
            pending += io_threads_pending[j];
        if (pending == 0) break;
    }
    if (tio_debug) FUNC10("I/O WRITE All threads finshed\n");

    /* Run the list of clients again to install the write handler where
     * needed. */
    FUNC9(server.clients_pending_write,&li);
    while((ln = FUNC7(&li))) {
        client *c = FUNC8(ln);

        /* Install the write handler if there are pending writes in some
         * of the clients. */
        if (FUNC0(c) &&
                FUNC1(c->conn, sendReplyToClient) == AE_ERR)
        {
            FUNC2(c);
        }
    }
    FUNC5(server.clients_pending_write);
    return processed;
}