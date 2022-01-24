#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sway_binding {int /*<<< orphan*/  input; } ;
struct cmd_results {int dummy; } ;
struct TYPE_4__ {int length; struct sway_binding** items; } ;
typedef  TYPE_1__ list_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FAILURE ; 
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 scalar_t__ FUNC0 (struct sway_binding*,struct sway_binding*) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_binding*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cmd_results *FUNC5(struct sway_binding *binding,
		list_t *mode_bindings, const char *bindtype,
		const char *keycombo) {
	for (int i = 0; i < mode_bindings->length; ++i) {
		struct sway_binding *config_binding = mode_bindings->items[i];
		if (FUNC0(binding, config_binding)) {
			FUNC4(SWAY_DEBUG, "%s - Unbound `%s` from device '%s'",
					bindtype, keycombo, binding->input);
			FUNC2(config_binding);
			FUNC2(binding);
			FUNC3(mode_bindings, i);
			return FUNC1(CMD_SUCCESS, NULL);
		}
	}
	FUNC2(binding);
	return FUNC1(CMD_FAILURE, "Could not find binding `%s` "
			"for the given flags", keycombo);
}