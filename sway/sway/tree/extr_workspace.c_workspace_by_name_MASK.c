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
struct sway_workspace {int dummy; } ;
struct sway_seat {scalar_t__ prev_workspace_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  _workspace_by_name ; 
 struct sway_seat* FUNC0 () ; 
 struct sway_workspace* FUNC1 (int /*<<< orphan*/ ,void*) ; 
 struct sway_workspace* FUNC2 (struct sway_seat*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 struct sway_workspace* FUNC5 (struct sway_workspace*) ; 
 struct sway_workspace* FUNC6 (struct sway_workspace*,int) ; 
 struct sway_workspace* FUNC7 (struct sway_workspace*,int) ; 
 struct sway_workspace* FUNC8 (struct sway_workspace*) ; 

struct sway_workspace *FUNC9(const char *name) {
	struct sway_seat *seat = FUNC0();
	struct sway_workspace *current = FUNC2(seat);

	if (current && FUNC4(name, "prev") == 0) {
		return FUNC8(current);
	} else if (current && FUNC4(name, "prev_on_output") == 0) {
		return FUNC7(current, false);
	} else if (current && FUNC4(name, "next") == 0) {
		return FUNC5(current);
	} else if (current && FUNC4(name, "next_on_output") == 0) {
		return FUNC6(current, false);
	} else if (FUNC4(name, "current") == 0) {
		return current;
	} else if (FUNC3(name, "back_and_forth") == 0) {
		struct sway_seat *seat = FUNC0();
		if (!seat->prev_workspace_name) {
			return NULL;
		}
		return FUNC1(_workspace_by_name,
				(void*)seat->prev_workspace_name);
	} else {
		return FUNC1(_workspace_by_name, (void*)name);
	}
}