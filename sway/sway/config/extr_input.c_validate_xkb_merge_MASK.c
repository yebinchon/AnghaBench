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
struct xkb_keymap {int dummy; } ;
struct input_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct input_config*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_config*,struct input_config*) ; 
 struct input_config* FUNC2 (char*) ; 
 struct xkb_keymap* FUNC3 (struct input_config*,char**) ; 
 int /*<<< orphan*/  FUNC4 (struct xkb_keymap*) ; 

__attribute__((used)) static bool FUNC5(struct input_config *dest,
		struct input_config *src, char **xkb_error) {
	struct input_config *temp = FUNC2("temp");
	if (dest) {
		FUNC1(temp, dest);
	}
	FUNC1(temp, src);

	struct xkb_keymap *keymap = FUNC3(temp, xkb_error);
	FUNC0(temp);
	if (!keymap) {
		return false;
	}

	FUNC4(keymap);
	return true;
}