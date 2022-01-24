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
struct sway_workspace {int /*<<< orphan*/  node; } ;
typedef  int /*<<< orphan*/  json_object ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_EVENT_WORKSPACE ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const*) ; 

void FUNC9(struct sway_workspace *old,
		struct sway_workspace *new, const char *change) {
	if (!FUNC0(IPC_EVENT_WORKSPACE)) {
		return;
	}
	FUNC8(SWAY_DEBUG, "Sending workspace::%s event", change);
	json_object *obj = FUNC3();
	FUNC5(obj, "change", FUNC4(change));
	if (old) {
		FUNC5(obj, "old",
				FUNC1(&old->node));
	} else {
		FUNC5(obj, "old", NULL);
	}

	if (new) {
		FUNC5(obj, "current",
				FUNC1(&new->node));
	} else {
		FUNC5(obj, "current", NULL);
	}

	const char *json_string = FUNC7(obj);
	FUNC2(json_string, IPC_EVENT_WORKSPACE);
	FUNC6(obj);
}