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
struct swaybar_tray {int /*<<< orphan*/  bus; void* watcher_kde; void* watcher_xdg; } ;
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_ERROR ; 
 void* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char**,char**,char**) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(sd_bus_message *msg,
		void *data, sd_bus_error *error) {
	char *service, *old_owner, *new_owner;
	int ret = FUNC1(msg, "sss", &service, &old_owner, &new_owner);
	if (ret < 0) {
		FUNC4(SWAY_ERROR, "Failed to parse owner change message: %s", FUNC3(-ret));
		return ret;
	}

	if (!*new_owner) {
		struct swaybar_tray *tray = data;
		if (FUNC2(service, "org.freedesktop.StatusNotifierWatcher") == 0) {
			tray->watcher_xdg = FUNC0("freedesktop", tray->bus);
		} else if (FUNC2(service, "org.kde.StatusNotifierWatcher") == 0) {
			tray->watcher_kde = FUNC0("kde", tray->bus);
		}
	}

	return 0;
}