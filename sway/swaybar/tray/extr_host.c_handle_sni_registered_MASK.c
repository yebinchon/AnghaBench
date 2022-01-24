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
struct swaybar_tray {int dummy; } ;
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct swaybar_tray*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(sd_bus_message *msg, void *data,
		sd_bus_error *error) {
	char *id;
	int ret = FUNC1(msg, "s", &id);
	if (ret < 0) {
		FUNC3(SWAY_ERROR, "Failed to parse register SNI message: %s", FUNC2(-ret));
	}

	struct swaybar_tray *tray = data;
	FUNC0(tray, id);

	return ret;
}