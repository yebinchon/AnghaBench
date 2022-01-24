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
typedef  int /*<<< orphan*/  json_object ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_EVENT_SHUTDOWN ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*) ; 

void FUNC8(const char *reason) {
	if (!FUNC0(IPC_EVENT_SHUTDOWN)) {
		return;
	}
	FUNC7(SWAY_DEBUG, "Sending shutdown::%s event", reason);

	json_object *json = FUNC2();
	FUNC4(json, "change", FUNC3(reason));

	const char *json_string = FUNC6(json);
	FUNC1(json_string, IPC_EVENT_SHUTDOWN);
	FUNC5(json);
}