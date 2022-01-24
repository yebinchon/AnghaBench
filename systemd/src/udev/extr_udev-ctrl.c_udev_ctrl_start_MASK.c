#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  udev_ctrl_handler_t ;
struct udev_ctrl {int /*<<< orphan*/  event_source; int /*<<< orphan*/  sock; int /*<<< orphan*/  event; void* userdata; int /*<<< orphan*/  callback; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  FUNC0 (struct udev_ctrl*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct udev_ctrl*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct udev_ctrl*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct udev_ctrl*) ; 
 int /*<<< orphan*/  udev_ctrl_event_handler ; 

int FUNC5(struct udev_ctrl *uctrl, udev_ctrl_handler_t callback, void *userdata) {
        int r;

        FUNC0(uctrl);

        if (!uctrl->event) {
                r = FUNC3(uctrl, NULL);
                if (r < 0)
                        return r;
        }

        r = FUNC4(uctrl);
        if (r < 0)
                return r;

        uctrl->callback = callback;
        uctrl->userdata = userdata;

        r = FUNC1(uctrl->event, &uctrl->event_source, uctrl->sock, EPOLLIN, udev_ctrl_event_handler, uctrl);
        if (r < 0)
                return r;

        (void) FUNC2(uctrl->event_source, "udev-ctrl");

        return 0;
}