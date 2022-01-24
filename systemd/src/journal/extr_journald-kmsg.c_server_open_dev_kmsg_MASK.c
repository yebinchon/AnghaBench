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
typedef  int mode_t ;
struct TYPE_5__ {scalar_t__ dev_kmsg_fd; int dev_kmsg_readable; int /*<<< orphan*/  dev_kmsg_event_source; int /*<<< orphan*/  event; scalar_t__ read_kmsg; } ;
typedef  TYPE_1__ Server ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int O_CLOEXEC ; 
 int O_NOCTTY ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int O_WRONLY ; 
 scalar_t__ SD_EVENT_PRIORITY_IMPORTANT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  dispatch_dev_kmsg ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(Server *s) {
        mode_t mode;
        int r;

        FUNC0(s);

        if (s->read_kmsg)
                mode = O_RDWR|O_CLOEXEC|O_NONBLOCK|O_NOCTTY;
        else
                mode = O_WRONLY|O_CLOEXEC|O_NONBLOCK|O_NOCTTY;

        s->dev_kmsg_fd = FUNC3("/dev/kmsg", mode);
        if (s->dev_kmsg_fd < 0) {
                FUNC2(errno == ENOENT ? LOG_DEBUG : LOG_WARNING,
                         "Failed to open /dev/kmsg, ignoring: %m");
                return 0;
        }

        if (!s->read_kmsg)
                return 0;

        r = FUNC5(s->event, &s->dev_kmsg_event_source, s->dev_kmsg_fd, EPOLLIN, dispatch_dev_kmsg, s);
        if (r < 0) {

                /* This will fail with EPERM on older kernels where
                 * /dev/kmsg is not readable. */
                if (r == -EPERM) {
                        r = 0;
                        goto fail;
                }

                FUNC1(r, "Failed to add /dev/kmsg fd to event loop: %m");
                goto fail;
        }

        r = FUNC6(s->dev_kmsg_event_source, SD_EVENT_PRIORITY_IMPORTANT+10);
        if (r < 0) {
                FUNC1(r, "Failed to adjust priority of kmsg event source: %m");
                goto fail;
        }

        s->dev_kmsg_readable = true;

        return 0;

fail:
        s->dev_kmsg_event_source = FUNC7(s->dev_kmsg_event_source);
        s->dev_kmsg_fd = FUNC4(s->dev_kmsg_fd);

        return r;
}