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
struct sway_mode {TYPE_1__* switch_bindings; TYPE_1__* mouse_bindings; TYPE_1__* keycode_bindings; TYPE_1__* keysym_bindings; struct sway_mode* name; } ;
struct TYPE_2__ {int length; int /*<<< orphan*/ * items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_mode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct sway_mode *mode) {
	if (!mode) {
		return;
	}
	FUNC0(mode->name);
	if (mode->keysym_bindings) {
		for (int i = 0; i < mode->keysym_bindings->length; i++) {
			FUNC1(mode->keysym_bindings->items[i]);
		}
		FUNC3(mode->keysym_bindings);
	}
	if (mode->keycode_bindings) {
		for (int i = 0; i < mode->keycode_bindings->length; i++) {
			FUNC1(mode->keycode_bindings->items[i]);
		}
		FUNC3(mode->keycode_bindings);
	}
	if (mode->mouse_bindings) {
		for (int i = 0; i < mode->mouse_bindings->length; i++) {
			FUNC1(mode->mouse_bindings->items[i]);
		}
		FUNC3(mode->mouse_bindings);
	}
	if (mode->switch_bindings) {
		for (int i = 0; i < mode->switch_bindings->length; i++) {
			FUNC2(mode->switch_bindings->items[i]);
		}
		FUNC3(mode->switch_bindings);
	}
	FUNC0(mode);
}