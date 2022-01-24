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
struct sway_container {int /*<<< orphan*/  node; } ;
typedef  int /*<<< orphan*/  json_object ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_EVENT_WINDOW ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const*) ; 

void FUNC9(struct sway_container *window, const char *change) {
	if (!FUNC0(IPC_EVENT_WINDOW)) {
		return;
	}
	FUNC8(SWAY_DEBUG, "Sending window::%s event", change);
	json_object *obj = FUNC3();
	FUNC5(obj, "change", FUNC4(change));
	FUNC5(obj, "container",
			FUNC1(&window->node));

	const char *json_string = FUNC7(obj);
	FUNC2(json_string, IPC_EVENT_WINDOW);
	FUNC6(obj);
}