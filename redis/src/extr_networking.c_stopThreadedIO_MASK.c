#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int io_threads_num; int /*<<< orphan*/  clients_pending_write; int /*<<< orphan*/  clients_pending_read; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int io_threads_active ; 
 int /*<<< orphan*/ * io_threads_mutex ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ tio_debug ; 

void FUNC6(void) {
    /* We may have still clients with pending reads when this function
     * is called: handle them before stopping the threads. */
    FUNC1();
    if (tio_debug) { FUNC3("E"); FUNC0(stdout); }
    if (tio_debug) FUNC3("--- STOPPING THREADED IO [R%d] [W%d] ---\n",
        (int) FUNC2(server.clients_pending_read),
        (int) FUNC2(server.clients_pending_write));
    FUNC5(io_threads_active == 1);
    for (int j = 0; j < server.io_threads_num; j++)
        FUNC4(&io_threads_mutex[j]);
    io_threads_active = 0;
}