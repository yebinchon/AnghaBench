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
struct udev_enumerate {int /*<<< orphan*/  enumerator; int /*<<< orphan*/  devices_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct udev_enumerate*) ; 
 struct udev_enumerate* FUNC1 (struct udev_enumerate*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct udev_enumerate *FUNC4(struct udev_enumerate *udev_enumerate) {
        FUNC0(udev_enumerate);

        FUNC3(udev_enumerate->devices_list);
        FUNC2(udev_enumerate->enumerator);
        return FUNC1(udev_enumerate);
}