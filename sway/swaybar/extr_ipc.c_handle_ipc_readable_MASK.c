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
struct swaybar {int /*<<< orphan*/  mode_pango_markup; int /*<<< orphan*/ * mode; int /*<<< orphan*/  visible_by_mode; int /*<<< orphan*/  ipc_event_socketfd; } ;
struct ipc_response {int type; int /*<<< orphan*/  payload; } ;
typedef  int /*<<< orphan*/  json_object ;

/* Variables and functions */
#define  IPC_EVENT_BARCONFIG_UPDATE 131 
#define  IPC_EVENT_BAR_STATE_UPDATE 130 
#define  IPC_EVENT_MODE 129 
#define  IPC_EVENT_WORKSPACE 128 
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct swaybar*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ipc_response*) ; 
 int FUNC3 (struct swaybar*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct swaybar*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct swaybar*) ; 
 struct ipc_response* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 

bool FUNC15(struct swaybar *bar) {
	struct ipc_response *resp = FUNC6(bar->ipc_event_socketfd);
	if (!resp) {
		return false;
	}

	json_object *result = FUNC11(resp->payload);
	if (!result) {
		FUNC14(SWAY_ERROR, "failed to parse payload as json");
		FUNC2(resp);
		return false;
	}

	bool bar_is_dirty = true;
	switch (resp->type) {
	case IPC_EVENT_WORKSPACE:
		bar_is_dirty = FUNC5(bar);
		break;
	case IPC_EVENT_MODE: {
		json_object *json_change, *json_pango_markup;
		if (FUNC9(result, "change", &json_change)) {
			const char *change = FUNC8(json_change);
			FUNC1(bar->mode);
			bar->mode = FUNC12(change, "default") != 0 ? FUNC13(change) : NULL;
			bar->visible_by_mode = bar->mode != NULL;
			FUNC0(bar, false);
		} else {
			FUNC14(SWAY_ERROR, "failed to parse response");
			bar_is_dirty = false;
			break;
		}
		if (FUNC9(result,
					"pango_markup", &json_pango_markup)) {
			bar->mode_pango_markup = FUNC7(json_pango_markup);
		}
		break;
	}
	case IPC_EVENT_BARCONFIG_UPDATE:
		bar_is_dirty = FUNC4(bar, resp->payload, result);
		break;
	case IPC_EVENT_BAR_STATE_UPDATE:
		bar_is_dirty = FUNC3(bar, result);
		break;
	default:
		bar_is_dirty = false;
		break;
	}
	FUNC10(result);
	FUNC2(resp);
	return bar_is_dirty;
}