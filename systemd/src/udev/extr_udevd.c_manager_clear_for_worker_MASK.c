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
struct TYPE_5__ {int /*<<< orphan*/ * worker_watch; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  monitor; int /*<<< orphan*/  workers; int /*<<< orphan*/  event; void* kill_workers_event; void* inotify_event; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_UNDEF ; 
 size_t READ_END ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(Manager *manager) {
        FUNC0(manager);

        manager->inotify_event = FUNC5(manager->inotify_event);
        manager->kill_workers_event = FUNC5(manager->kill_workers_event);

        manager->event = FUNC6(manager->event);

        manager->workers = FUNC2(manager->workers);
        FUNC1(manager, EVENT_UNDEF);

        manager->monitor = FUNC4(manager->monitor);
        manager->ctrl = FUNC7(manager->ctrl);

        manager->worker_watch[READ_END] = FUNC3(manager->worker_watch[READ_END]);
}