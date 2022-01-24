#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xkb_rule_names {int /*<<< orphan*/  member_0; } ;
struct sway_mode {int /*<<< orphan*/ * keycode_bindings; int /*<<< orphan*/ * keysym_bindings; } ;
struct input_config {int /*<<< orphan*/  identifier; } ;
typedef  int /*<<< orphan*/  list_t ;
struct TYPE_4__ {TYPE_1__* modes; int /*<<< orphan*/  keysym_translation_state; } ;
struct TYPE_3__ {int length; struct sway_mode** items; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 TYPE_2__* config ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct input_config*,struct xkb_rule_names*) ; 
 int /*<<< orphan*/  FUNC2 (struct xkb_rule_names) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC7(struct input_config *input_config) {
	FUNC3(config->keysym_translation_state);

	struct xkb_rule_names rules = {0};
	FUNC1(input_config, &rules);
	config->keysym_translation_state =
		FUNC2(rules);

	for (int i = 0; i < config->modes->length; ++i) {
		struct sway_mode *mode = config->modes->items[i];

		list_t *bindsyms = FUNC0();
		list_t *bindcodes = FUNC0();

		FUNC6(mode->keysym_bindings, bindsyms, bindcodes);
		FUNC6(mode->keycode_bindings, bindsyms, bindcodes);

		FUNC4(mode->keysym_bindings);
		FUNC4(mode->keycode_bindings);

		mode->keysym_bindings = bindsyms;
		mode->keycode_bindings = bindcodes;
	}

	FUNC5(SWAY_DEBUG, "Translated keysyms using config for device '%s'",
			input_config->identifier);
}