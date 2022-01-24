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
struct sway_binding {char const* input; char const* command; } ;
struct cmd_results {int dummy; } ;
typedef  int /*<<< orphan*/  list_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  SWAY_INFO ; 
 struct sway_binding* FUNC0 (struct sway_binding*,int /*<<< orphan*/ *) ; 
 struct cmd_results* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_binding*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,char const*,char const*,char const*) ; 

__attribute__((used)) static struct cmd_results *FUNC5(struct sway_binding *binding,
		list_t *mode_bindings, const char *bindtype,
		const char *keycombo, bool warn) {
	struct sway_binding *config_binding = FUNC0(binding, mode_bindings);

	if (config_binding) {
		FUNC4(SWAY_INFO, "Overwriting binding '%s' for device '%s' "
				"to `%s` from `%s`", keycombo, binding->input,
				binding->command, config_binding->command);
		if (warn) {
			FUNC2("Overwriting binding"
					"'%s' for device '%s' to `%s` from `%s`",
					keycombo, binding->input, binding->command,
					config_binding->command);
		}
		FUNC3(config_binding);
	} else {
		FUNC4(SWAY_DEBUG, "%s - Bound %s to command `%s` for device '%s'",
				bindtype, keycombo, binding->command, binding->input);
	}

	return FUNC1(CMD_SUCCESS, NULL);
}