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
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_2__ {int io_threads_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOThreadMain ; 
 int IO_THREADS_MAX_NUM ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * io_threads ; 
 scalar_t__ io_threads_active ; 
 int /*<<< orphan*/ * io_threads_list ; 
 int /*<<< orphan*/ * io_threads_mutex ; 
 scalar_t__* io_threads_pending ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

void FUNC6(void) {
    io_threads_active = 0; /* We start with threads not active. */

    /* Don't spawn any thread if the user selected a single thread:
     * we'll handle I/O directly from the main thread. */
    if (server.io_threads_num == 1) return;

    if (server.io_threads_num > IO_THREADS_MAX_NUM) {
        FUNC5(LL_WARNING,"Fatal: too many I/O threads configured. "
                             "The maximum number is %d.", IO_THREADS_MAX_NUM);
        FUNC0(1);
    }

    /* Spawn the I/O threads. */
    for (int i = 0; i < server.io_threads_num; i++) {
        pthread_t tid;
        FUNC3(&io_threads_mutex[i],NULL);
        io_threads_pending[i] = 0;
        io_threads_list[i] = FUNC1();
        FUNC4(&io_threads_mutex[i]); /* Thread will be stopped. */
        if (FUNC2(&tid,NULL,IOThreadMain,(void*)(long)i) != 0) {
            FUNC5(LL_WARNING,"Fatal: Can't initialize IO thread.");
            FUNC0(1);
        }
        io_threads[i] = tid;
    }
}