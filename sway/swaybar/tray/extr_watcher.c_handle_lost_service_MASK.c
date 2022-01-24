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
struct swaybar_watcher {TYPE_1__* hosts; int /*<<< orphan*/  interface; int /*<<< orphan*/  bus; TYPE_1__* items; } ;
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
struct TYPE_3__ {int length; char** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 int FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*,int (*) (char*,char*),char*) ; 
 int /*<<< orphan*/  obj_path ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,char**,char**,char**) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC10 (struct swaybar_watcher*) ; 

__attribute__((used)) static int FUNC11(sd_bus_message *msg,
		void *data, sd_bus_error *error) {
	char *service, *old_owner, *new_owner;
	int ret = FUNC5(msg, "sss", &service, &old_owner, &new_owner);
	if (ret < 0) {
		FUNC9(SWAY_ERROR, "Failed to parse owner change message: %s", FUNC6(-ret));
		return ret;
	}

	if (!*new_owner) {
		struct swaybar_watcher *watcher = data;
		for (int idx = 0; idx < watcher->items->length; ++idx) {
			char *id = watcher->items->items[idx];
			int cmp_res = FUNC10(watcher) ?
				FUNC0(id, service) : FUNC8(id, service, FUNC7(service));
			if (cmp_res == 0) {
				FUNC9(SWAY_DEBUG, "Unregistering Status Notifier Item '%s'", id);
				FUNC2(watcher->items, idx--);
				FUNC4(watcher->bus, obj_path, watcher->interface,
						"StatusNotifierItemUnregistered", "s", id);
				FUNC1(id);
				if (FUNC10(watcher)) {
					break;
				}
			}
		}

		int idx = FUNC3(watcher->hosts, cmp_id, service);
		if (idx != -1) {
			FUNC9(SWAY_DEBUG, "Unregistering Status Notifier Host '%s'", service);
			FUNC1(watcher->hosts->items[idx]);
			FUNC2(watcher->hosts, idx);
		}
	}

	return 0;
}