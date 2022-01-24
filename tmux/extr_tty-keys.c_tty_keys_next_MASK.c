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
typedef  int u_char ;
struct TYPE_2__ {int* c_cc; } ;
struct tty {int flags; int /*<<< orphan*/  in; struct client* client; int /*<<< orphan*/  key_timer; TYPE_1__ tio; } ;
struct timeval {int tv_sec; int tv_usec; } ;
struct mouse_event {int /*<<< orphan*/  member_0; } ;
struct key_event {int key; int /*<<< orphan*/  m; } ;
struct client {int /*<<< orphan*/  name; int /*<<< orphan*/  flags; } ;
typedef  int key_code ;
typedef  int cc_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_FOCUSED ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int KEYC_BSPACE ; 
 int KEYC_ESCAPE ; 
 int KEYC_FOCUS_IN ; 
 int KEYC_FOCUS_OUT ; 
 int KEYC_MASK_KEY ; 
 int KEYC_MASK_MOD ; 
 int KEYC_MOUSE ; 
 int KEYC_UNKNOWN ; 
 int KEYC_XTERM ; 
 int TTY_TIMER ; 
 size_t VERASE ; 
 int _POSIX_VDISABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct tty*) ; 
 int /*<<< orphan*/  FUNC9 (struct key_event*) ; 
 int /*<<< orphan*/  FUNC10 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  global_options ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct mouse_event*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct client*,struct key_event*) ; 
 int /*<<< orphan*/  tty_keys_callback ; 
 int FUNC15 (struct tty*,char const*,size_t,size_t*) ; 
 int FUNC16 (struct tty*,char const*,size_t,size_t*) ; 
 int FUNC17 (struct tty*,char const*,size_t,size_t*,struct mouse_event*) ; 
 int FUNC18 (struct tty*,char const*,size_t,int*,size_t*,int) ; 
 struct key_event* FUNC19 (int) ; 

int
FUNC20(struct tty *tty)
{
	struct client		*c = tty->client;
	struct timeval		 tv;
	const char		*buf;
	size_t			 len, size;
	cc_t			 bspace;
	int			 delay, expired = 0, n;
	key_code		 key;
	struct mouse_event	 m = { 0 };
	struct key_event	*event;

	FUNC10(&tv, NULL);

	/* Get key buffer. */
	buf = FUNC0(tty->in);
	len = FUNC1(tty->in);
	if (len == 0)
		return (0);
	FUNC11("%s: keys are %zu (%.*s)", c->name, len, (int)len, buf);

	/* Is this a clipboard response? */
	switch (FUNC15(tty, buf, len, &size)) {
	case 0:		/* yes */
		key = KEYC_UNKNOWN;
		goto complete_key;
	case -1:	/* no, or not valid */
		break;
	case 1:		/* partial */
		goto partial_key;
	}

	/* Is this a device attributes response? */
	switch (FUNC16(tty, buf, len, &size)) {
	case 0:		/* yes */
		key = KEYC_UNKNOWN;
		goto complete_key;
	case -1:	/* no, or not valid */
		break;
	case 1:		/* partial */
		goto partial_key;
	}

	/* Is this a mouse key press? */
	switch (FUNC17(tty, buf, len, &size, &m)) {
	case 0:		/* yes */
		key = KEYC_MOUSE;
		goto complete_key;
	case -1:	/* no, or not valid */
		break;
	case -2:	/* yes, but we don't care. */
		key = KEYC_MOUSE;
		goto discard_key;
	case 1:		/* partial */
		goto partial_key;
	}

first_key:
	/* Try to lookup complete key. */
	n = FUNC18(tty, buf, len, &key, &size, expired);
	if (n == 0)	/* found */
		goto complete_key;
	if (n == 1)
		goto partial_key;

	/*
	 * If not a complete key, look for key with an escape prefix (meta
	 * modifier).
	 */
	if (*buf == '\033' && len > 1) {
		/* Look for a key without the escape. */
		n = FUNC18(tty, buf + 1, len - 1, &key, &size, expired);
		if (n == 0) {	/* found */
			if (key & KEYC_XTERM) {
				/*
				 * We want the escape key as well as the xterm
				 * key, because the xterm sequence implicitly
				 * includes the escape (so if we see
				 * \033\033[1;3D we know it is an Escape
				 * followed by M-Left, not just M-Left).
				 */
				key = '\033';
				size = 1;
				goto complete_key;
			}
			key |= KEYC_ESCAPE;
			size++;
			goto complete_key;
		}
		if (n == 1)	/* partial */
			goto partial_key;
	}

	/*
	 * At this point, we know the key is not partial (with or without
	 * escape). So pass it through even if the timer has not expired.
	 */
	if (*buf == '\033' && len >= 2) {
		key = (u_char)buf[1] | KEYC_ESCAPE;
		size = 2;
	} else {
		key = (u_char)buf[0];
		size = 1;
	}
	goto complete_key;

partial_key:
	FUNC11("%s: partial key %.*s", c->name, (int)len, buf);

	/* If timer is going, check for expiration. */
	if (tty->flags & TTY_TIMER) {
		if (FUNC6(&tty->key_timer) &&
		    !FUNC7(&tty->key_timer, NULL)) {
			expired = 1;
			goto first_key;
		}
		return (0);
	}

	/* Get the time period. */
	delay = FUNC13(global_options, "escape-time");
	tv.tv_sec = delay / 1000;
	tv.tv_usec = (delay % 1000) * 1000L;

	/* Start the timer. */
	if (FUNC3(&tty->key_timer))
		FUNC5(&tty->key_timer);
	FUNC8(&tty->key_timer, tty_keys_callback, tty);
	FUNC4(&tty->key_timer, &tv);

	tty->flags |= TTY_TIMER;
	return (0);

complete_key:
	FUNC11("%s: complete key %.*s %#llx", c->name, (int)size, buf, key);

	/*
	 * Check for backspace key using termios VERASE - the terminfo
	 * kbs entry is extremely unreliable, so cannot be safely
	 * used. termios should have a better idea.
	 */
	bspace = tty->tio.c_cc[VERASE];
	if (bspace != _POSIX_VDISABLE && (key & KEYC_MASK_KEY) == bspace)
		key = (key & KEYC_MASK_MOD) | KEYC_BSPACE;

	/* Remove data from buffer. */
	FUNC2(tty->in, size);

	/* Remove key timer. */
	if (FUNC3(&tty->key_timer))
		FUNC5(&tty->key_timer);
	tty->flags &= ~TTY_TIMER;

	/* Check for focus events. */
	if (key == KEYC_FOCUS_OUT) {
		tty->client->flags &= ~CLIENT_FOCUSED;
		return (1);
	} else if (key == KEYC_FOCUS_IN) {
		tty->client->flags |= CLIENT_FOCUSED;
		return (1);
	}

	/* Fire the key. */
	if (key != KEYC_UNKNOWN) {
		event = FUNC19(sizeof *event);
		event->key = key;
		FUNC12(&event->m, &m, sizeof event->m);
		if (!FUNC14(c, event))
			FUNC9(event);
	}

	return (1);

discard_key:
	FUNC11("%s: discard key %.*s %#llx", c->name, (int)size, buf, key);

	/* Remove data from buffer. */
	FUNC2(tty->in, size);

	return (1);
}