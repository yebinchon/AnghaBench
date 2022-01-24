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
struct sway_keyboard {int /*<<< orphan*/  key_repeat_source; int /*<<< orphan*/ * repeat_binding; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct sway_keyboard *keyboard) {
	if (!keyboard) {
		return;
	}
	keyboard->repeat_binding = NULL;
	if (FUNC1(keyboard->key_repeat_source, 0) < 0) {
		FUNC0(SWAY_DEBUG, "failed to disarm key repeat timer");
	}
}