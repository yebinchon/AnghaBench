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
struct swaybar_watcher {int /*<<< orphan*/  interface; int /*<<< orphan*/  bus; int /*<<< orphan*/  hosts; } ;
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  cmp_id ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  obj_path ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char**) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC8(sd_bus_message *msg, void *data, sd_bus_error *error) {
	char *service;
	int ret = FUNC3(msg, "s", &service);
	if (ret < 0) {
		FUNC7(SWAY_ERROR, "Failed to parse register host message: %s", FUNC6(-ret));
		return ret;
	}

	struct swaybar_watcher *watcher = data;
	if (FUNC1(watcher->hosts, cmp_id, service) == -1) {
		FUNC7(SWAY_DEBUG, "Registering Status Notifier Host '%s'", service);
		FUNC0(watcher->hosts, FUNC5(service));
		FUNC2(watcher->bus, obj_path, watcher->interface,
				"StatusNotifierHostRegistered", "s", service);
	} else {
		FUNC7(SWAY_DEBUG, "Status Notifier Host '%s' already registered", service);
	}

	return FUNC4(msg, "");
}