#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ fifo_fd; scalar_t__ fifo_path; int /*<<< orphan*/  event_source; TYPE_1__* manager; int /*<<< orphan*/  id; } ;
struct TYPE_6__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_2__ Inhibitor ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MKDIR_WARN_MODE ; 
 int O_CLOEXEC ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int O_WRONLY ; 
 scalar_t__ SD_EVENT_PRIORITY_IDLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int errno ; 
 int /*<<< orphan*/  inhibitor_dispatch_fifo ; 
 int FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 void* FUNC3 (scalar_t__,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ,char*) ; 

int FUNC8(Inhibitor *i) {
        int r;

        FUNC0(i);

        /* Create FIFO */
        if (!i->fifo_path) {
                r = FUNC1("/run/systemd/inhibit", 0755, 0, 0, MKDIR_WARN_MODE);
                if (r < 0)
                        return r;

                i->fifo_path = FUNC7("/run/systemd/inhibit/", i->id, ".ref");
                if (!i->fifo_path)
                        return -ENOMEM;

                if (FUNC2(i->fifo_path, 0600) < 0 && errno != EEXIST)
                        return -errno;
        }

        /* Open reading side */
        if (i->fifo_fd < 0) {
                i->fifo_fd = FUNC3(i->fifo_path, O_RDONLY|O_CLOEXEC|O_NONBLOCK);
                if (i->fifo_fd < 0)
                        return -errno;
        }

        if (!i->event_source) {
                r = FUNC4(i->manager->event, &i->event_source, i->fifo_fd, 0, inhibitor_dispatch_fifo, i);
                if (r < 0)
                        return r;

                r = FUNC6(i->event_source, SD_EVENT_PRIORITY_IDLE-10);
                if (r < 0)
                        return r;

                (void) FUNC5(i->event_source, "inhibitor-ref");
        }

        /* Open writing side */
        r = FUNC3(i->fifo_path, O_WRONLY|O_CLOEXEC|O_NONBLOCK);
        if (r < 0)
                return -errno;

        return r;
}