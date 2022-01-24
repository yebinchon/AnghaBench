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
struct TYPE_2__ {int aof_child_pid; int aof_rewrite_time_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(void) {
    int statloc;
    /* No AOFRW child? return. */
    if (server.aof_child_pid == -1) return;
    /* Kill AOFRW child, wait for child exit. */
    FUNC5(LL_NOTICE,"Killing running AOF rewrite child: %ld",
        (long) server.aof_child_pid);
    if (FUNC4(server.aof_child_pid,SIGUSR1) != -1) {
        while(FUNC7(&statloc,0,NULL) != server.aof_child_pid);
    }
    /* Reset the buffer accumulating changes while the child saves. */
    FUNC2();
    FUNC1(server.aof_child_pid);
    server.aof_child_pid = -1;
    server.aof_rewrite_time_start = -1;
    /* Close pipes used for IPC between the two processes. */
    FUNC0();
    FUNC3();
    FUNC6();
}