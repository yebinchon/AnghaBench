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
struct tty {int last_wp; int flags; int /*<<< orphan*/  mode; void* rright; void* rlower; void* rleft; void* rupper; void* cy; void* cx; int /*<<< orphan*/  last_cell; int /*<<< orphan*/  cell; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_MODES ; 
 int /*<<< orphan*/  MODE_CURSOR ; 
 int /*<<< orphan*/  TTYC_SGR0 ; 
 int TTY_STARTED ; 
 void* UINT_MAX ; 
 int /*<<< orphan*/  grid_default_cell ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct tty*) ; 

__attribute__((used)) static void
FUNC8(struct tty *tty)
{
	FUNC0(&tty->cell, &grid_default_cell, sizeof tty->cell);

	FUNC0(&tty->last_cell, &grid_default_cell, sizeof tty->last_cell);
	tty->last_wp = -1;

	tty->cx = tty->cy = UINT_MAX;

	tty->rupper = tty->rleft = UINT_MAX;
	tty->rlower = tty->rright = UINT_MAX;

	if (tty->flags & TTY_STARTED) {
		if (FUNC7(tty))
			FUNC4(tty, "\033[?69h"); /* DECLRMM */
		FUNC3(tty, TTYC_SGR0);

		tty->mode = ALL_MODES;
		FUNC6(tty, MODE_CURSOR, NULL);

		FUNC1(tty, 0, 0);
		FUNC5(tty);
		FUNC2(tty);
	} else
		tty->mode = MODE_CURSOR;
}