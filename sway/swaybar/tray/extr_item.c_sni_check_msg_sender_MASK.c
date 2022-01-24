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
struct swaybar_sni {char* service; int /*<<< orphan*/  watcher_id; } ;
typedef  int /*<<< orphan*/  sd_bus_message ;

/* Variables and functions */
 int SD_BUS_CREDS_WELL_KNOWN_NAMES ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC3(struct swaybar_sni *sni, sd_bus_message *msg,
		const char *signal) {
	bool has_well_known_names =
		FUNC0(FUNC1(msg)) & SD_BUS_CREDS_WELL_KNOWN_NAMES;
	if (sni->service[0] == ':' || has_well_known_names) {
		FUNC2(SWAY_DEBUG, "%s has new %s", sni->watcher_id, signal);
		return 1;
	} else {
		FUNC2(SWAY_DEBUG, "%s may have new %s", sni->watcher_id, signal);
		return 0;
	}
}