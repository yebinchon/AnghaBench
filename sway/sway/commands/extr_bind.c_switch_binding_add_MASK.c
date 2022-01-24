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
struct sway_switch_binding {char const* command; } ;
struct cmd_results {int dummy; } ;
struct TYPE_6__ {int length; struct sway_switch_binding** items; } ;
typedef  TYPE_2__ list_t ;
struct TYPE_7__ {TYPE_1__* current_mode; } ;
struct TYPE_5__ {TYPE_2__* switch_bindings; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  SWAY_INFO ; 
 scalar_t__ FUNC0 (struct sway_switch_binding*,struct sway_switch_binding*) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* config ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_switch_binding*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct sway_switch_binding*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,char const*,char const*) ; 

__attribute__((used)) static struct cmd_results *FUNC6(
		struct sway_switch_binding *binding, const char *bindtype,
		const char *switchcombo, bool warn) {
	list_t *mode_bindings = config->current_mode->switch_bindings;
	// overwrite the binding if it already exists
	bool overwritten = false;
	for (int i = 0; i < mode_bindings->length; ++i) {
		struct sway_switch_binding *config_binding = mode_bindings->items[i];
		if (FUNC0(binding, config_binding)) {
			FUNC5(SWAY_INFO, "Overwriting binding '%s' to `%s` from `%s`",
					switchcombo, binding->command, config_binding->command);
			if (warn) {
				FUNC2("Overwriting binding"
						"'%s' to `%s` from `%s`",
						switchcombo, binding->command,
						config_binding->command);
			}
			FUNC3(config_binding);
			mode_bindings->items[i] = binding;
			overwritten = true;
		}
	}

	if (!overwritten) {
		FUNC4(mode_bindings, binding);
		FUNC5(SWAY_DEBUG, "%s - Bound %s to command `%s`",
				bindtype, switchcombo, binding->command);
	}

	return FUNC1(CMD_SUCCESS, NULL);
}