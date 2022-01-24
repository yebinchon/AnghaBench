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
struct udev_monitor {int /*<<< orphan*/  monitor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct udev_monitor*) ; 
 struct udev_monitor* FUNC1 (struct udev_monitor*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct udev_monitor *FUNC3(struct udev_monitor *udev_monitor) {
        FUNC0(udev_monitor);

        FUNC2(udev_monitor->monitor);
        return FUNC1(udev_monitor);
}