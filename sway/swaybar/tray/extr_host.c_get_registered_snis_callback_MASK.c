#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct swaybar_tray {int dummy; } ;
typedef  int /*<<< orphan*/  sd_bus_message ;
struct TYPE_5__ {int /*<<< orphan*/  message; } ;
typedef  TYPE_1__ sd_bus_error ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct swaybar_tray*,char*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char***) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(sd_bus_message *msg, void *data,
		sd_bus_error *error) {
	if (FUNC4(msg, NULL)) {
		sd_bus_error err = *FUNC3(msg);
		FUNC7(SWAY_ERROR, "Failed to get registered SNIs: %s", err.message);
		return -FUNC1(&err);
	}

	int ret = FUNC2(msg, 'v', NULL);
	if (ret < 0) {
		FUNC7(SWAY_ERROR, "Failed to read registered SNIs: %s", FUNC6(-ret));
		return ret;
	}

	char **ids;
	ret = FUNC5(msg, &ids);
	if (ret < 0) {
		FUNC7(SWAY_ERROR, "Failed to read registered SNIs: %s", FUNC6(-ret));
		return ret;
	}

	if (ids) {
		struct swaybar_tray *tray = data;
		for (char **id = ids; *id; ++id) {
			FUNC0(tray, *id);
		}
	}

	return ret;
}