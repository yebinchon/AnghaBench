#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int exit; int /*<<< orphan*/  fd_inotify; int /*<<< orphan*/  inotify_event; int /*<<< orphan*/  ctrl; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(Manager *manager) {
        FUNC0(manager);

        manager->exit = true;

        FUNC5(false,
                  "STOPPING=1\n"
                  "STATUS=Starting shutdown...");

        /* close sources of new events and discard buffered events */
        manager->ctrl = FUNC6(manager->ctrl);

        manager->inotify_event = FUNC4(manager->inotify_event);
        manager->fd_inotify = FUNC3(manager->fd_inotify);

        /* discard queued events and kill workers */
        FUNC1(manager, EVENT_QUEUED);
        FUNC2(manager);
}