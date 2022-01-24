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
struct swaybar_tray {int /*<<< orphan*/  basedirs; int /*<<< orphan*/  themes; int /*<<< orphan*/  host_kde; int /*<<< orphan*/  host_xdg; int /*<<< orphan*/  items; int /*<<< orphan*/ * bus; void* watcher_kde; void* watcher_xdg; int /*<<< orphan*/  fd; struct swaybar* bar; } ;
struct swaybar {int dummy; } ;
typedef  int /*<<< orphan*/  sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 struct swaybar_tray* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  handle_lost_watcher ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,struct swaybar_tray*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,char*,char*,int /*<<< orphan*/ ,struct swaybar_tray*) ; 
 int FUNC7 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 

struct swaybar_tray *FUNC10(struct swaybar *bar) {
	FUNC9(SWAY_DEBUG, "Initializing tray");

	sd_bus *bus;
	int ret = FUNC7(&bus);
	if (ret < 0) {
		FUNC9(SWAY_ERROR, "Failed to connect to user bus: %s", FUNC8(-ret));
		return NULL;
	}

	struct swaybar_tray *tray = FUNC0(1, sizeof(struct swaybar_tray));
	if (!tray) {
		return NULL;
	}
	tray->bar = bar;
	tray->bus = bus;
	tray->fd = FUNC5(tray->bus);

	tray->watcher_xdg = FUNC2("freedesktop", tray->bus);
	tray->watcher_kde = FUNC2("kde", tray->bus);

	ret = FUNC6(bus, NULL, "org.freedesktop.DBus",
			"/org/freedesktop/DBus", "org.freedesktop.DBus",
			"NameOwnerChanged", handle_lost_watcher, tray);
	if (ret < 0) {
		FUNC9(SWAY_ERROR, "Failed to subscribe to unregistering events: %s",
				FUNC8(-ret));
	}

	tray->items = FUNC1();

	FUNC3(&tray->host_xdg, "freedesktop", tray);
	FUNC3(&tray->host_kde, "kde", tray);

	FUNC4(&tray->themes, &tray->basedirs);

	return tray;
}