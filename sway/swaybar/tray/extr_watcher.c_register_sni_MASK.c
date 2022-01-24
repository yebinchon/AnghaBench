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
struct swaybar_watcher {int /*<<< orphan*/  interface; int /*<<< orphan*/  bus; int /*<<< orphan*/  items; } ;
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  cmp_id ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  obj_path ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,char**) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int FUNC8 (char*,size_t,char*,char const*,char const*) ; 
 char* FUNC9 (char*) ; 
 char* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC12 (struct swaybar_watcher*) ; 

__attribute__((used)) static int FUNC13(sd_bus_message *msg, void *data, sd_bus_error *error) {
	char *service_or_path, *id;
	int ret = FUNC6(msg, "s", &service_or_path);
	if (ret < 0) {
		FUNC11(SWAY_ERROR, "Failed to parse register SNI message: %s", FUNC10(-ret));
		return ret;
	}

	struct swaybar_watcher *watcher = data;
	if (FUNC12(watcher)) {
		id = FUNC9(service_or_path);
	} else {
		const char *service, *path;
		if (service_or_path[0] == '/') {
			service = FUNC5(msg);
			path = service_or_path;
		} else {
			service = service_or_path;
			path = "/StatusNotifierItem";
		}
		size_t id_len = FUNC8(NULL, 0, "%s%s", service, path) + 1;
		id = FUNC3(id_len);
		FUNC8(id, id_len, "%s%s", service, path);
	}

	if (FUNC2(watcher->items, cmp_id, id) == -1) {
		FUNC11(SWAY_DEBUG, "Registering Status Notifier Item '%s'", id);
		FUNC1(watcher->items, id);
		FUNC4(watcher->bus, obj_path, watcher->interface,
				"StatusNotifierItemRegistered", "s", id);
	} else {
		FUNC11(SWAY_DEBUG, "Status Notifier Item '%s' already registered", id);
		FUNC0(id);
	}

	return FUNC7(msg, "");
}