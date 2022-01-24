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
struct udev_list {int /*<<< orphan*/  unique_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct udev_list* FUNC1 (struct udev_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct udev_list*) ; 

struct udev_list *FUNC3(struct udev_list *list) {
        if (!list)
                return NULL;

        FUNC2(list);
        FUNC0(list->unique_entries);

        return FUNC1(list);
}