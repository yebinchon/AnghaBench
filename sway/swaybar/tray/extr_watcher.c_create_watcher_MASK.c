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
struct swaybar_watcher {int /*<<< orphan*/ * interface; scalar_t__ version; void* items; void* hosts; int /*<<< orphan*/ * bus; } ;
typedef  int /*<<< orphan*/  sd_bus_slot ;
typedef  int /*<<< orphan*/  sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 struct swaybar_watcher* FUNC0 (int,int) ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct swaybar_watcher*) ; 
 int /*<<< orphan*/  handle_lost_service ; 
 int /*<<< orphan*/ * FUNC3 (size_t) ; 
 int /*<<< orphan*/  obj_path ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct swaybar_watcher*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*,char*,char*,char*,int /*<<< orphan*/ ,struct swaybar_watcher*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t,char*,char*) ; 
 int /*<<< orphan*/ * FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  watcher_vtable ; 

struct swaybar_watcher *FUNC12(char *protocol, sd_bus *bus) {
	struct swaybar_watcher *watcher =
		FUNC0(1, sizeof(struct swaybar_watcher));
	if (!watcher) {
		return NULL;
	}

	size_t len = FUNC9(NULL, 0, "org.%s.StatusNotifierWatcher", protocol) + 1;
	watcher->interface = FUNC3(len);
	FUNC9(watcher->interface, len, "org.%s.StatusNotifierWatcher", protocol);

	sd_bus_slot *signal_slot = NULL, *vtable_slot = NULL;
	int ret = FUNC4(bus, &vtable_slot, obj_path,
			watcher->interface, watcher_vtable, watcher);
	if (ret < 0) {
		FUNC11(SWAY_ERROR, "Failed to add object vtable: %s", FUNC10(-ret));
		goto error;
	}

	ret = FUNC5(bus, &signal_slot, "org.freedesktop.DBus",
			"/org/freedesktop/DBus", "org.freedesktop.DBus",
			"NameOwnerChanged", handle_lost_service, watcher);
	if (ret < 0) {
		FUNC11(SWAY_ERROR, "Failed to subscribe to unregistering events: %s",
				FUNC10(-ret));
		goto error;
	}

	ret = FUNC6(bus, watcher->interface, 0);
	if (ret < 0) {
		FUNC11(SWAY_ERROR, "Failed to acquire service name: %s", FUNC10(-ret));
		goto error;
	}

	FUNC7(signal_slot, 0);
	FUNC7(vtable_slot, 0);

	watcher->bus = bus;
	watcher->hosts = FUNC1();
	watcher->items = FUNC1();
	watcher->version = 0;
	FUNC11(SWAY_DEBUG, "Registered %s", watcher->interface);
	return watcher;
error:
	FUNC8(signal_slot);
	FUNC8(vtable_slot);
	FUNC2(watcher);
	return NULL;
}