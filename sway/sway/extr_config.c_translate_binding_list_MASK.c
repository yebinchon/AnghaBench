#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sway_binding {int type; } ;
struct TYPE_6__ {int length; struct sway_binding** items; } ;
typedef  TYPE_1__ list_t ;

/* Variables and functions */
#define  BINDING_KEYCODE 129 
#define  BINDING_KEYSYM 128 
 int /*<<< orphan*/  FUNC0 (struct sway_binding*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_binding*) ; 

__attribute__((used)) static void FUNC3(list_t *bindings, list_t *bindsyms,
		list_t *bindcodes) {
	for (int i = 0; i < bindings->length; ++i) {
		struct sway_binding *binding = bindings->items[i];
		FUNC2(binding);

		switch (binding->type) {
		case BINDING_KEYSYM:
			FUNC0(binding, bindsyms);
			break;
		case BINDING_KEYCODE:
			FUNC0(binding, bindcodes);
			break;
		default:
			FUNC1(false, "unexpected translated binding type: %d",
					binding->type);
			break;
		}

	}
}