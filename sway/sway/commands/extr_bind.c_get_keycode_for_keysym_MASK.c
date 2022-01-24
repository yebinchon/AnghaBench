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
typedef  int /*<<< orphan*/  xkb_keysym_t ;
struct keycode_matches {int /*<<< orphan*/  count; int /*<<< orphan*/  keycode; int /*<<< orphan*/  keysym; } ;
struct TYPE_2__ {int /*<<< orphan*/  keysym_translation_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  XKB_KEYCODE_INVALID ; 
 TYPE_1__* config ; 
 int /*<<< orphan*/  find_keycode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct keycode_matches*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct keycode_matches FUNC2(xkb_keysym_t keysym) {
	struct keycode_matches matches = {
		.keysym = keysym,
		.keycode = XKB_KEYCODE_INVALID,
		.count = 0,
	};

	FUNC0(
			FUNC1(config->keysym_translation_state),
			find_keycode, &matches);
	return matches;
}