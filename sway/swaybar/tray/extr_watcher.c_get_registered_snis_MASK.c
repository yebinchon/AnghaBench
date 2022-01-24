#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct swaybar_watcher {TYPE_1__* items; } ;
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  sd_bus ;
struct TYPE_3__ {scalar_t__ length; scalar_t__ items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *,char**) ; 

__attribute__((used)) static int FUNC3(sd_bus *bus, const char *obj_path,
		const char *interface, const char *property, sd_bus_message *reply,
		void *data, sd_bus_error *error) {
	struct swaybar_watcher *watcher = data;
	FUNC0(watcher->items, NULL); // strv expects NULL-terminated string array
	int ret = FUNC2(reply, (char **)watcher->items->items);
	FUNC1(watcher->items, watcher->items->length - 1);
	return ret;
}