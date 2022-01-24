#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ pid; int /*<<< orphan*/  worker_watch; int /*<<< orphan*/  fd_inotify; int /*<<< orphan*/  rules; int /*<<< orphan*/  properties; int /*<<< orphan*/  rtnl; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  monitor; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(Manager *manager) {
        if (!manager)
                return;

        manager->monitor = FUNC6(manager->monitor);

        FUNC8();

        if (manager->pid == FUNC1())
                FUNC9(manager->ctrl);

        FUNC3(manager);

        FUNC7(manager->rtnl);

        FUNC2(manager->properties);
        FUNC10(manager->rules);

        FUNC4(manager->fd_inotify);
        FUNC5(manager->worker_watch);

        FUNC0(manager);
}