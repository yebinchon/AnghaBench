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
typedef  int /*<<< orphan*/  xkb_keysym_t ;
typedef  int /*<<< orphan*/  xkb_keycode_t ;
struct sway_binding {int flags; int type; TYPE_1__* syms; TYPE_1__* keys; } ;
struct keycode_matches {int count; int /*<<< orphan*/  keycode; } ;
struct TYPE_4__ {int length; int /*<<< orphan*/ ** items; } ;

/* Variables and functions */
 int BINDING_CODE ; 
#define  BINDING_KEYCODE 129 
#define  BINDING_KEYSYM 128 
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  SWAY_INFO ; 
 void* FUNC0 () ; 
 struct keycode_matches FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  key_qsort_cmp ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

bool FUNC7(struct sway_binding *binding) {
	if ((binding->flags & BINDING_CODE) == 0) {
		return true;
	}

	switch (binding->type) {
	// a bindsym to translate
	case BINDING_KEYSYM:
		binding->syms = binding->keys;
		binding->keys = FUNC0();
		break;
	// a bindsym to re-translate
	case BINDING_KEYCODE:
		FUNC3(binding->keys);
		binding->keys = FUNC0();
		break;
	default:
		return true;
	}

	for (int i = 0; i < binding->syms->length; ++i) {
		xkb_keysym_t *keysym = binding->syms->items[i];
		struct keycode_matches matches = FUNC1(*keysym);

		if (matches.count != 1) {
			FUNC6(SWAY_INFO, "Unable to convert keysym %d into"
					" a single keycode (found %d matches)",
					*keysym, matches.count);
			goto error;
		}

		xkb_keycode_t *keycode = FUNC5(sizeof(xkb_keycode_t));
		if (!keycode) {
			FUNC6(SWAY_ERROR, "Unable to allocate memory for a keycode");
			goto error;
		}

		*keycode = matches.keycode;
		FUNC2(binding->keys, keycode);
	}

	FUNC4(binding->keys, key_qsort_cmp);
	binding->type = BINDING_KEYCODE;
	return true;

error:
	FUNC3(binding->keys);
	binding->type = BINDING_KEYSYM;
	binding->keys = binding->syms;
	binding->syms = NULL;
	return false;
}