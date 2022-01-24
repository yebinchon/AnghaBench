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
struct udev_monitor {int dummy; } ;
struct udev_device {int dummy; } ;
struct pollfd {int fd; int /*<<< orphan*/  events; } ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ services_discovery_t ;
struct TYPE_6__ {struct udev_monitor* monitor; } ;
typedef  TYPE_2__ services_discovery_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct udev_device*) ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct udev_device*) ; 
 scalar_t__ errno ; 
 int FUNC2 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 char* FUNC4 (struct udev_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct udev_device*) ; 
 int FUNC6 (struct udev_monitor*) ; 
 struct udev_device* FUNC7 (struct udev_monitor*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 () ; 

__attribute__((used)) static void *FUNC10 (void *data)
{
    services_discovery_t *sd = data;
    services_discovery_sys_t *p_sys = sd->p_sys;
    struct udev_monitor *mon = p_sys->monitor;

    int fd = FUNC6 (mon);
    struct pollfd ufd = { .fd = fd, .events = POLLIN, };

    for (;;)
    {
        while (FUNC2 (&ufd, 1, -1) == -1)
            if (errno != EINTR)
                break;

        int canc = FUNC9 ();
        struct udev_device *dev = FUNC7 (mon);
        if (dev == NULL)
            continue;

        const char *action = FUNC4 (dev);
        if (!FUNC3 (action, "add"))
            FUNC0 (sd, dev);
        else if (!FUNC3 (action, "remove"))
            FUNC1 (sd, dev);
        else if (!FUNC3 (action, "change"))
        {
            FUNC1 (sd, dev);
            FUNC0 (sd, dev);
        }
        FUNC5 (dev);
        FUNC8 (canc);
    }
    return NULL;
}