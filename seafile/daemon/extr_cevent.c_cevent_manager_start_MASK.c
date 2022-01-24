#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ev_base; } ;
struct TYPE_5__ {int /*<<< orphan*/  event; int /*<<< orphan*/ * pipefd; } ;
typedef  TYPE_1__ CEventManager ;

/* Variables and functions */
 int EV_PERSIST ; 
 int EV_READ ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pipe_callback ; 
 TYPE_2__* seaf ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5 (CEventManager *manager)
{
    if (FUNC3(manager->pipefd) < 0) {
        FUNC2 ("pipe error: %s\n", FUNC4(errno));
        return -1;
    }

    manager->event = FUNC1 (seaf->ev_base, manager->pipefd[0],
               EV_READ | EV_PERSIST, pipe_callback, manager);
    FUNC0 (manager->event, NULL);

    return 0;
}