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
struct sway_binding {int /*<<< orphan*/  command; int /*<<< orphan*/  input; } ;
typedef  int /*<<< orphan*/  list_t ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_INFO ; 
 struct sway_binding* FUNC0 (struct sway_binding*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_binding*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct sway_binding *binding,
		list_t *mode_bindings) {
	struct sway_binding *config_binding =
		FUNC0(binding, mode_bindings);

	if (config_binding) {
		FUNC2(SWAY_INFO, "Overwriting binding for device '%s' "
				"to `%s` from `%s`", binding->input,
				binding->command, config_binding->command);
		FUNC1(config_binding);
	}
}