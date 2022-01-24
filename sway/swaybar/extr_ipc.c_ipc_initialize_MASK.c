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
typedef  int /*<<< orphan*/  uint32_t ;
struct swaybar_config {scalar_t__ workspace_buttons; scalar_t__ binding_mode_indicator; } ;
struct swaybar {char* id; int /*<<< orphan*/  ipc_event_socketfd; struct swaybar_config* config; int /*<<< orphan*/  ipc_socketfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_GET_BAR_CONFIG ; 
 int /*<<< orphan*/  IPC_SUBSCRIBE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct swaybar_config*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

bool FUNC5(struct swaybar *bar) {
	uint32_t len = FUNC4(bar->id);
	char *res = FUNC2(bar->ipc_socketfd,
			IPC_GET_BAR_CONFIG, bar->id, &len);
	if (!FUNC1(bar->config, res)) {
		FUNC0(res);
		return false;
	}
	FUNC0(res);

	struct swaybar_config *config = bar->config;
	char subscribe[128]; // suitably large buffer
	len = FUNC3(subscribe, 128,
			"[ \"barconfig_update\" , \"bar_state_update\" %s %s ]",
			config->binding_mode_indicator ? ", \"mode\"" : "",
			config->workspace_buttons ? ", \"workspace\"" : "");
	FUNC0(FUNC2(bar->ipc_event_socketfd,
			IPC_SUBSCRIBE, subscribe, &len));
	return true;
}