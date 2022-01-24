#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct event {TYPE_2__* manager; TYPE_1__* worker; int /*<<< orphan*/  timeout_event; int /*<<< orphan*/  timeout_warning_event; int /*<<< orphan*/  dev_kernel; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ pid; int /*<<< orphan*/  events; } ;
struct TYPE_3__ {int /*<<< orphan*/ * event; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct event*,int /*<<< orphan*/ ,struct event*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (struct event*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(struct event *event) {
        if (!event)
                return;

        FUNC2(event->manager);

        FUNC1(event, event->manager->events, event);
        FUNC6(event->dev);
        FUNC6(event->dev_kernel);

        FUNC7(event->timeout_warning_event);
        FUNC7(event->timeout_event);

        if (event->worker)
                event->worker->event = NULL;

        /* only clean up the queue from the process that created it */
        if (FUNC0(event->manager->events) &&
            event->manager->pid == FUNC4())
                if (FUNC8("/run/udev/queue") < 0)
                        FUNC5(errno, "Failed to unlink /run/udev/queue: %m");

        FUNC3(event);
}