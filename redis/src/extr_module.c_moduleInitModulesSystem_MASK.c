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
struct TYPE_5__ {int /*<<< orphan*/ * user; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/ * module_blocked_pipe; void* loadmodule_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_MODULE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 void* RedisModule_EventListeners ; 
 int /*<<< orphan*/  Timers ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void* FUNC4 () ; 
 void* moduleCommandFilters ; 
 TYPE_2__* moduleFreeContextReusedClient ; 
 int /*<<< orphan*/  moduleGIL ; 
 void* moduleKeyspaceSubscribers ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* moduleUnblockedClients ; 
 int /*<<< orphan*/  modules ; 
 int /*<<< orphan*/  modulesDictType ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(void) {
    moduleUnblockedClients = FUNC4();
    server.loadmodule_queue = FUNC4();
    modules = FUNC2(&modulesDictType,NULL);

    /* Set up the keyspace notification susbscriber list and static client */
    moduleKeyspaceSubscribers = FUNC4();
    moduleFreeContextReusedClient = FUNC1(NULL);
    moduleFreeContextReusedClient->flags |= CLIENT_MODULE;
    moduleFreeContextReusedClient->user = NULL; /* root user. */

    /* Set up filter list */
    moduleCommandFilters = FUNC4();

    FUNC5();
    if (FUNC6(server.module_blocked_pipe) == -1) {
        FUNC9(LL_WARNING,
            "Can't create the pipe for module blocking commands: %s",
            FUNC10(errno));
        FUNC3(1);
    }
    /* Make the pipe non blocking. This is just a best effort aware mechanism
     * and we do not want to block not in the read nor in the write half. */
    FUNC0(NULL,server.module_blocked_pipe[0]);
    FUNC0(NULL,server.module_blocked_pipe[1]);

    /* Create the timers radix tree. */
    Timers = FUNC8();

    /* Setup the event listeners data structures. */
    RedisModule_EventListeners = FUNC4();

    /* Our thread-safe contexts GIL must start with already locked:
     * it is just unlocked when it's safe. */
    FUNC7(&moduleGIL);
}