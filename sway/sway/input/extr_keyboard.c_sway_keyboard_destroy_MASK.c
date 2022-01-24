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
struct TYPE_4__ {int /*<<< orphan*/  link; } ;
struct TYPE_3__ {int /*<<< orphan*/  link; } ;
struct sway_keyboard {int /*<<< orphan*/  key_repeat_source; TYPE_2__ keyboard_modifiers; TYPE_1__ keyboard_key; scalar_t__ keymap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_keyboard*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_keyboard*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(struct sway_keyboard *keyboard) {
	if (!keyboard) {
		return;
	}
	if (keyboard->keymap) {
		FUNC4(keyboard->keymap);
	}
	FUNC3(&keyboard->keyboard_key.link);
	FUNC3(&keyboard->keyboard_modifiers.link);
	FUNC1(keyboard);
	FUNC2(keyboard->key_repeat_source);
	FUNC0(keyboard);
}