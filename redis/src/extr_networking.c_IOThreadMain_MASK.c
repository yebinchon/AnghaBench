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
typedef  int /*<<< orphan*/  listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_4__ {int /*<<< orphan*/  conn; } ;
typedef  TYPE_1__ client ;

/* Variables and functions */
 scalar_t__ IO_THREADS_OP_READ ; 
 scalar_t__ IO_THREADS_OP_WRITE ; 
 int /*<<< orphan*/ * io_threads_list ; 
 int /*<<< orphan*/ * io_threads_mutex ; 
 scalar_t__ io_threads_op ; 
 scalar_t__* io_threads_pending ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,long,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ tio_debug ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void *FUNC12(void *myid) {
    /* The ID is the thread number (from 0 to server.iothreads_num-1), and is
     * used by the thread to just manipulate a single sub-array of clients. */
    long id = (unsigned long)myid;

    while(1) {
        /* Wait for start */
        for (int j = 0; j < 1000000; j++) {
            if (io_threads_pending[id] != 0) break;
        }

        /* Give the main thread a chance to stop this thread. */
        if (io_threads_pending[id] == 0) {
            FUNC6(&io_threads_mutex[id]);
            FUNC7(&io_threads_mutex[id]);
            continue;
        }

        FUNC9(io_threads_pending[id] != 0);

        if (tio_debug) FUNC5("[%ld] %d to handle\n", id, (int)FUNC1(io_threads_list[id]));

        /* Process: note that the main thread will never touch our list
         * before we drop the pending count to 0. */
        listIter li;
        listNode *ln;
        FUNC4(io_threads_list[id],&li);
        while((ln = FUNC2(&li))) {
            client *c = FUNC3(ln);
            if (io_threads_op == IO_THREADS_OP_WRITE) {
                FUNC11(c,0);
            } else if (io_threads_op == IO_THREADS_OP_READ) {
                FUNC8(c->conn);
            } else {
                FUNC10("io_threads_op value is unknown");
            }
        }
        FUNC0(io_threads_list[id]);
        io_threads_pending[id] = 0;

        if (tio_debug) FUNC5("[%ld] Done\n", id);
    }
}