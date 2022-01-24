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
struct tty {int flags; int /*<<< orphan*/  term; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTYC_U8 ; 
 int TTY_UTF8 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(struct tty *tty)
{
	if (tty == NULL)
		return (0);

	/*
	 * If the U8 flag is present, it marks whether a terminal supports
	 * UTF-8 and ACS together.
	 *
	 * If it is present and zero, we force ACS - this gives users a way to
	 * turn off UTF-8 line drawing.
	 *
	 * If it is nonzero, we can fall through to the default and use UTF-8
	 * line drawing on UTF-8 terminals.
	 */
	if (FUNC0(tty->term, TTYC_U8) &&
	    FUNC1(tty->term, TTYC_U8) == 0)
		return (1);

	if (tty->flags & TTY_UTF8)
		return (0);
	return (1);
}