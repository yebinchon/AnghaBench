#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct cmd_results {int dummy; } ;
struct bar_binding {scalar_t__ button; scalar_t__ release; } ;
struct TYPE_7__ {int length; struct bar_binding** items; } ;
typedef  TYPE_2__ list_t ;
struct TYPE_8__ {TYPE_1__* current_bar; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SUCCESS ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 struct cmd_results* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* config ; 
 int /*<<< orphan*/  FUNC1 (struct bar_binding*) ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct bar_binding*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,char const*,char*) ; 

__attribute__((used)) static struct cmd_results *FUNC5(struct bar_binding *binding,
		list_t *mode_bindings) {
	const char *name = FUNC2(binding->button);
	bool overwritten = false;
	for (int i = 0; i < mode_bindings->length; i++) {
		struct bar_binding *other = mode_bindings->items[i];
		if (other->button == binding->button &&
				other->release == binding->release) {
			overwritten = true;
			mode_bindings->items[i] = binding;
			FUNC1(other);
			FUNC4(SWAY_DEBUG, "[bar %s] Updated binding for %u (%s)%s",
					config->current_bar->id, binding->button, name,
					binding->release ? " - release" : "");
			break;
		}
	}
	if (!overwritten) {
		FUNC3(mode_bindings, binding);
		FUNC4(SWAY_DEBUG, "[bar %s] Added binding for %u (%s)%s",
				config->current_bar->id, binding->button, name,
				binding->release ? " - release" : "");
	}
	return FUNC0(CMD_SUCCESS, NULL);
}