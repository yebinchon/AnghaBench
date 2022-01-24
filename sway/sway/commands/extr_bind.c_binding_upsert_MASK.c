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
struct sway_binding {int dummy; } ;
struct TYPE_4__ {int length; struct sway_binding** items; } ;
typedef  TYPE_1__ list_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sway_binding*,struct sway_binding*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct sway_binding*) ; 

__attribute__((used)) static struct sway_binding *FUNC2(struct sway_binding *binding,
		list_t *mode_bindings) {
	for (int i = 0; i < mode_bindings->length; ++i) {
		struct sway_binding *config_binding = mode_bindings->items[i];
		if (FUNC0(binding, config_binding)) {
			mode_bindings->items[i] = binding;
			return config_binding;
		}
	}

	FUNC1(mode_bindings, binding);
	return NULL;
}