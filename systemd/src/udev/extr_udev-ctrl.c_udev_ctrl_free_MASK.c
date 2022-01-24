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
struct udev_ctrl {int /*<<< orphan*/  event; int /*<<< orphan*/  sock; int /*<<< orphan*/  event_source; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct udev_ctrl*) ; 
 struct udev_ctrl* FUNC1 (struct udev_ctrl*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct udev_ctrl*) ; 

__attribute__((used)) static struct udev_ctrl *FUNC6(struct udev_ctrl *uctrl) {
        FUNC0(uctrl);

        FUNC5(uctrl);

        FUNC3(uctrl->event_source);
        FUNC2(uctrl->sock);

        FUNC4(uctrl->event);
        return FUNC1(uctrl);
}