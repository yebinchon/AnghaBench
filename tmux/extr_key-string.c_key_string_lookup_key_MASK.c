#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct utf8_data {size_t size; int /*<<< orphan*/  data; } ;
typedef  int key_code ;
struct TYPE_3__ {int key; char* string; } ;

/* Variables and functions */
 int KEYC_ANY ; 
 int KEYC_BASE ; 
 char KEYC_CTRL ; 
 int KEYC_DRAGGING ; 
 int KEYC_ESCAPE ; 
 int KEYC_FOCUS_IN ; 
 int KEYC_FOCUS_OUT ; 
 int KEYC_LITERAL ; 
 int KEYC_MASK_KEY ; 
 int KEYC_MASK_MOD ; 
 int KEYC_MOUSE ; 
 int KEYC_MOUSEMOVE_BORDER ; 
 int KEYC_MOUSEMOVE_PANE ; 
 int KEYC_MOUSEMOVE_STATUS ; 
 int KEYC_MOUSEMOVE_STATUS_LEFT ; 
 int KEYC_MOUSEMOVE_STATUS_RIGHT ; 
 int KEYC_NONE ; 
 int KEYC_NUSER ; 
 int KEYC_PASTE_END ; 
 int KEYC_PASTE_START ; 
 int KEYC_SHIFT ; 
 int KEYC_UNKNOWN ; 
 int KEYC_USER ; 
 scalar_t__ UTF8_DONE ; 
 TYPE_1__* key_string_table ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 size_t FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int,struct utf8_data*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 

const char *
FUNC7(key_code key)
{
	static char		out[32];
	char			tmp[8];
	u_int			i;
	struct utf8_data	ud;
	size_t			off;

	*out = '\0';

	/* Handle no key. */
	if (key == KEYC_NONE)
		return ("None");

	/* Handle special keys. */
	if (key == KEYC_UNKNOWN)
		return ("Unknown");
	if (key == KEYC_ANY)
		return ("Any");
	if (key == KEYC_FOCUS_IN)
		return ("FocusIn");
	if (key == KEYC_FOCUS_OUT)
		return ("FocusOut");
	if (key == KEYC_PASTE_START)
		return ("PasteStart");
	if (key == KEYC_PASTE_END)
		return ("PasteEnd");
	if (key == KEYC_MOUSE)
		return ("Mouse");
	if (key == KEYC_DRAGGING)
		return ("Dragging");
	if (key == KEYC_MOUSEMOVE_PANE)
		return ("MouseMovePane");
	if (key == KEYC_MOUSEMOVE_STATUS)
		return ("MouseMoveStatus");
	if (key == KEYC_MOUSEMOVE_STATUS_LEFT)
		return ("MouseMoveStatusLeft");
	if (key == KEYC_MOUSEMOVE_STATUS_RIGHT)
		return ("MouseMoveStatusRight");
	if (key == KEYC_MOUSEMOVE_BORDER)
		return ("MouseMoveBorder");
	if (key >= KEYC_USER && key < KEYC_USER + KEYC_NUSER) {
		FUNC2(out, sizeof out, "User%u", (u_int)(key - KEYC_USER));
		return (out);
	}

	/* Literal keys are themselves. */
	if (key & KEYC_LITERAL) {
		FUNC2(out, sizeof out, "%c", (int)(key & 0xff));
		return (out);
	}

	/*
	 * Special case: display C-@ as C-Space. Could do this below in
	 * the (key >= 0 && key <= 32), but this way we let it be found
	 * in key_string_table, for the unlikely chance that we might
	 * change its name.
	 */
	if ((key & KEYC_MASK_KEY) == 0)
	    key = ' ' | KEYC_CTRL | (key & KEYC_MASK_MOD);

	/* Fill in the modifiers. */
	if (key & KEYC_CTRL)
		FUNC3(out, "C-", sizeof out);
	if (key & KEYC_ESCAPE)
		FUNC3(out, "M-", sizeof out);
	if (key & KEYC_SHIFT)
		FUNC3(out, "S-", sizeof out);
	key &= KEYC_MASK_KEY;

	/* Try the key against the string table. */
	for (i = 0; i < FUNC1(key_string_table); i++) {
		if (key == key_string_table[i].key)
			break;
	}
	if (i != FUNC1(key_string_table)) {
		FUNC3(out, key_string_table[i].string, sizeof out);
		return (out);
	}

	/* Is this a UTF-8 key? */
	if (key > 127 && key < KEYC_BASE) {
		if (FUNC5(key, &ud) == UTF8_DONE) {
			off = FUNC4(out);
			FUNC0(out + off, ud.data, ud.size);
			out[off + ud.size] = '\0';
			return (out);
		}
	}

	/* Invalid keys are errors. */
	if (key == 127 || key > 255) {
		FUNC2(out, sizeof out, "Invalid#%llx", key);
		return (out);
	}

	/* Check for standard or control key. */
	if (key <= 32) {
		if (key == 0 || key > 26)
			FUNC6(tmp, sizeof tmp, "C-%c", (int)(64 + key));
		else
			FUNC6(tmp, sizeof tmp, "C-%c", (int)(96 + key));
	} else if (key >= 32 && key <= 126) {
		tmp[0] = key;
		tmp[1] = '\0';
	} else if (key >= 128)
		FUNC6(tmp, sizeof tmp, "\\%llo", key);

	FUNC3(out, tmp, sizeof out);
	return (out);
}