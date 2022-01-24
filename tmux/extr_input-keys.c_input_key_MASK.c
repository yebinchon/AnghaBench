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
typedef  scalar_t__ u_int ;
typedef  char u_char ;
struct window_pane {scalar_t__ id; int /*<<< orphan*/  event; TYPE_2__* screen; TYPE_1__* window; } ;
struct utf8_data {char* data; size_t size; } ;
struct mouse_event {int wp; } ;
struct input_key_ent {int flags; int key; char* data; } ;
typedef  int key_code ;
struct TYPE_4__ {int mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  options; } ;

/* Variables and functions */
 int INPUTKEY_CURSOR ; 
 int INPUTKEY_KEYPAD ; 
 int KEYC_BASE ; 
 int KEYC_ESCAPE ; 
 scalar_t__ FUNC0 (int) ; 
 int KEYC_LITERAL ; 
 int KEYC_XTERM ; 
 int MODE_KCURSOR ; 
 int MODE_KKEYPAD ; 
 scalar_t__ UTF8_DONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct window_pane*,struct mouse_event*) ; 
 struct input_key_ent* input_keys ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 scalar_t__ FUNC6 (struct input_key_ent*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int,struct utf8_data*) ; 
 char* FUNC10 (int) ; 

void
FUNC11(struct window_pane *wp, key_code key, struct mouse_event *m)
{
	const struct input_key_ent	*ike;
	u_int				 i;
	size_t				 dlen;
	char				*out;
	key_code			 justkey;
	struct utf8_data		 ud;

	FUNC5("writing key 0x%llx (%s) to %%%u", key,
	    FUNC4(key), wp->id);

	/* If this is a mouse key, pass off to mouse function. */
	if (FUNC0(key)) {
		if (m != NULL && m->wp != -1 && (u_int)m->wp == wp->id)
			FUNC3(wp, m);
		return;
	}

	/* Literal keys go as themselves (can't be more than eight bits). */
	if (key & KEYC_LITERAL) {
		ud.data[0] = (u_char)key;
		FUNC1(wp->event, &ud.data[0], 1);
		return;
	}

	/*
	 * If this is a normal 7-bit key, just send it, with a leading escape
	 * if necessary. If it is a UTF-8 key, split it and send it.
	 */
	justkey = (key & ~(KEYC_XTERM|KEYC_ESCAPE));
	if (justkey <= 0x7f) {
		if (key & KEYC_ESCAPE)
			FUNC1(wp->event, "\033", 1);
		ud.data[0] = justkey;
		FUNC1(wp->event, &ud.data[0], 1);
		return;
	}
	if (justkey > 0x7f && justkey < KEYC_BASE) {
		if (FUNC9(justkey, &ud) != UTF8_DONE)
			return;
		if (key & KEYC_ESCAPE)
			FUNC1(wp->event, "\033", 1);
		FUNC1(wp->event, ud.data, ud.size);
		return;
	}

	/*
	 * Then try to look this up as an xterm key, if the flag to output them
	 * is set.
	 */
	if (FUNC7(wp->window->options, "xterm-keys")) {
		if ((out = FUNC10(key)) != NULL) {
			FUNC1(wp->event, out, FUNC8(out));
			FUNC2(out);
			return;
		}
	}
	key &= ~KEYC_XTERM;

	/* Otherwise look the key up in the table. */
	for (i = 0; i < FUNC6(input_keys); i++) {
		ike = &input_keys[i];

		if ((ike->flags & INPUTKEY_KEYPAD) &&
		    !(wp->screen->mode & MODE_KKEYPAD))
			continue;
		if ((ike->flags & INPUTKEY_CURSOR) &&
		    !(wp->screen->mode & MODE_KCURSOR))
			continue;

		if ((key & KEYC_ESCAPE) && (ike->key | KEYC_ESCAPE) == key)
			break;
		if (ike->key == key)
			break;
	}
	if (i == FUNC6(input_keys)) {
		FUNC5("key 0x%llx missing", key);
		return;
	}
	dlen = FUNC8(ike->data);
	FUNC5("found key 0x%llx: \"%s\"", key, ike->data);

	/* Prefix a \033 for escape. */
	if (key & KEYC_ESCAPE)
		FUNC1(wp->event, "\033", 1);
	FUNC1(wp->event, ike->data, dlen);
}