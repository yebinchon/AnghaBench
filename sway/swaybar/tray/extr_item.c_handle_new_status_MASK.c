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
struct swaybar_sni {int /*<<< orphan*/  status; int /*<<< orphan*/  watcher_id; } ;
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  FUNC2 (struct swaybar_sni*) ; 
 int FUNC3 (struct swaybar_sni*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct swaybar_sni*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC8(sd_bus_message *msg, void *data, sd_bus_error *error) {
	struct swaybar_sni *sni = data;
	int ret = FUNC3(sni, msg, "status");
	if (ret == 1) {
		char *status;
		int r = FUNC1(msg, "s", &status);
		if (r < 0) {
			FUNC7(SWAY_ERROR, "%s new status error: %s", sni->watcher_id, FUNC6(-ret));
			ret = r;
		} else {
			FUNC0(sni->status);
			sni->status = FUNC5(status);
			FUNC7(SWAY_DEBUG, "%s has new status = '%s'", sni->watcher_id, status);
			FUNC2(sni);
		}
	} else {
		FUNC4(sni, "Status", "s", &sni->status);
	}

	return ret;
}