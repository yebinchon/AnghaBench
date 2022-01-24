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
struct moduleLoadQueueEntry {int /*<<< orphan*/  path; int /*<<< orphan*/  argc; scalar_t__ argv; } ;
struct TYPE_4__ {struct moduleLoadQueueEntry* value; } ;
typedef  TYPE_1__ listNode ;
typedef  int /*<<< orphan*/  listIter ;
struct TYPE_5__ {int /*<<< orphan*/  loadmodule_queue; } ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC5(void) {
    listIter li;
    listNode *ln;

    FUNC2(server.loadmodule_queue,&li);
    while((ln = FUNC1(&li))) {
        struct moduleLoadQueueEntry *loadmod = ln->value;
        if (FUNC3(loadmod->path,(void **)loadmod->argv,loadmod->argc)
            == C_ERR)
        {
            FUNC4(LL_WARNING,
                "Can't load module from %s: server aborting",
                loadmod->path);
            FUNC0(1);
        }
    }
}