#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cmd_results {int dummy; } ;
struct bar_config {char* hidden_state; int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int /*<<< orphan*/  current_bar; int /*<<< orphan*/  reading; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INVALID ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 struct cmd_results* FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_1__* config ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bar_config*) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (char*,char const*) ; 
 void* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cmd_results *FUNC7(struct bar_config *bar,
		const char *hidden_state) {
	char *old_state = bar->hidden_state;
	if (FUNC3("toggle", hidden_state) == 0 && !config->reading) {
		if (FUNC3("hide", bar->hidden_state) == 0) {
			bar->hidden_state = FUNC5("show");
		} else if (FUNC3("show", bar->hidden_state) == 0) {
			bar->hidden_state = FUNC5("hide");
		}
	} else if (FUNC3("hide", hidden_state) == 0) {
		bar->hidden_state = FUNC5("hide");
	} else if (FUNC3("show", hidden_state) == 0) {
		bar->hidden_state = FUNC5("show");
	} else {
		return FUNC0(CMD_INVALID, "Invalid value %s",	hidden_state);
	}
	if (FUNC4(old_state, bar->hidden_state) != 0) {
		if (!config->current_bar) {
			FUNC2(bar);
		}
		FUNC6(SWAY_DEBUG, "Setting hidden_state: '%s' for bar: %s",
				bar->hidden_state, bar->id);
	}
	// free old mode
	FUNC1(old_state);
	return NULL;
}