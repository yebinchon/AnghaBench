#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sway_switch_binding {int dummy; } ;
struct cmd_results {int dummy; } ;
struct TYPE_6__ {int length; struct sway_switch_binding** items; } ;
typedef  TYPE_2__ list_t ;
struct TYPE_7__ {TYPE_1__* current_mode; } ;
struct TYPE_5__ {TYPE_2__* switch_bindings; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 scalar_t__ FUNC0 (struct sway_switch_binding*,struct sway_switch_binding*) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_4__* config ; 
 int /*<<< orphan*/  FUNC2 (struct sway_switch_binding*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 

__attribute__((used)) static struct cmd_results *FUNC5(
		struct sway_switch_binding *binding, const char *bindtype,
		const char *switchcombo) {
	list_t *mode_bindings = config->current_mode->switch_bindings;
	for (int i = 0; i < mode_bindings->length; ++i) {
		struct sway_switch_binding *config_binding = mode_bindings->items[i];
		if (FUNC0(binding, config_binding)) {
			FUNC2(config_binding);
			FUNC2(binding);
			FUNC3(mode_bindings, i);
			FUNC4(SWAY_DEBUG, "%s - Unbound %s switch",
					bindtype, switchcombo);
			return FUNC1(CMD_SUCCESS, NULL);
		}
	}

	FUNC2(binding);
	return FUNC1(CMD_FAILURE, "Could not find switch binding `%s`",
			switchcombo);
}