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
struct swaybar_tray {int /*<<< orphan*/  bar; TYPE_1__* items; } ;
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
struct TYPE_3__ {int /*<<< orphan*/ * items; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  SWAY_INFO ; 
 int /*<<< orphan*/  cmp_sni_id ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC7(sd_bus_message *msg, void *data,
		sd_bus_error *error) {
	char *id;
	int ret = FUNC3(msg, "s", &id);
	if (ret < 0) {
		FUNC6(SWAY_ERROR, "Failed to parse unregister SNI message: %s", FUNC5(-ret));
	}

	struct swaybar_tray *tray = data;
	int idx = FUNC2(tray->items, cmp_sni_id, id);
	if (idx != -1) {
		FUNC6(SWAY_INFO, "Unregistering Status Notifier Item '%s'", id);
		FUNC0(tray->items->items[idx]);
		FUNC1(tray->items, idx);
		FUNC4(tray->bar);
	}
	return ret;
}