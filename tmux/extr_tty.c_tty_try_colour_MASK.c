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
typedef  int /*<<< orphan*/  u_char ;
struct tty {int term_flags; TYPE_1__* client; TYPE_2__* term; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int COLOUR_FLAG_256 ; 
 int COLOUR_FLAG_RGB ; 
 int TERM_256COLOURS ; 
 int /*<<< orphan*/  TTYC_RGB ; 
 int /*<<< orphan*/  TTYC_SETAB ; 
 int /*<<< orphan*/  TTYC_SETAF ; 
 int /*<<< orphan*/  TTYC_SETRGBB ; 
 int /*<<< orphan*/  TTYC_SETRGBF ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*,char*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const*,int) ; 

__attribute__((used)) static int
FUNC7(struct tty *tty, int colour, const char *type)
{
	u_char	r, g, b;
	char	s[32];

	if (colour & COLOUR_FLAG_256) {
		/*
		 * If the user has specified -2 to the client (meaning
		 * TERM_256COLOURS is set), setaf and setab may not work (or
		 * they may not want to use them), so send the usual sequence.
		 *
		 * Also if RGB is set, setaf and setab do not support the 256
		 * colour palette so use the sequences directly there too.
		 */
		if ((tty->term_flags & TERM_256COLOURS) ||
		    FUNC5(tty->term, TTYC_RGB))
			goto fallback_256;

		/*
		 * If the terminfo entry has 256 colours and setaf and setab
		 * exist, assume that they work correctly.
		 */
		if (tty->term->flags & TERM_256COLOURS) {
			if (*type == '3') {
				if (!FUNC5(tty->term, TTYC_SETAF))
					goto fallback_256;
				FUNC2(tty, TTYC_SETAF, colour & 0xff);
			} else {
				if (!FUNC5(tty->term, TTYC_SETAB))
					goto fallback_256;
				FUNC2(tty, TTYC_SETAB, colour & 0xff);
			}
			return (0);
		}
		goto fallback_256;
	}

	if (colour & COLOUR_FLAG_RGB) {
		if (*type == '3') {
			if (!FUNC5(tty->term, TTYC_SETRGBF))
				return (-1);
			FUNC0(colour & 0xffffff, &r, &g, &b);
			FUNC3(tty, TTYC_SETRGBF, r, g, b);
		} else {
			if (!FUNC5(tty->term, TTYC_SETRGBB))
				return (-1);
			FUNC0(colour & 0xffffff, &r, &g, &b);
			FUNC3(tty, TTYC_SETRGBB, r, g, b);
		}
		return (0);
	}

	return (-1);

fallback_256:
	FUNC6(s, sizeof s, "\033[%s;5;%dm", type, colour & 0xff);
	FUNC1("%s: 256 colour fallback: %s", tty->client->name, s);
	FUNC4(tty, s);
	return (0);
}