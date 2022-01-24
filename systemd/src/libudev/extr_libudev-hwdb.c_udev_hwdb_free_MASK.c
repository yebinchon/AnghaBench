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
struct udev_hwdb {int /*<<< orphan*/  properties_list; int /*<<< orphan*/  hwdb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct udev_hwdb*) ; 
 struct udev_hwdb* FUNC1 (struct udev_hwdb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct udev_hwdb *FUNC4(struct udev_hwdb *hwdb) {
        FUNC0(hwdb);

        FUNC2(hwdb->hwdb);
        FUNC3(hwdb->properties_list);
        return FUNC1(hwdb);
}