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

/* Variables and functions */
 scalar_t__ Columns ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  curwin ; 
 int /*<<< orphan*/ * firstwin ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ p_ea ; 
 int /*<<< orphan*/  topframe ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char) ; 

void
FUNC4()
{
    if (firstwin == NULL)	/* not initialized yet */
	return;

    /* First try setting the widths of windows with 'winfixwidth'.  If that
     * doesn't result in the right width, forget about that option. */
    FUNC1(topframe, (int)Columns, FALSE, TRUE);
    if (!FUNC0(topframe, Columns))
	FUNC1(topframe, (int)Columns, FALSE, FALSE);

    (void)FUNC2();		/* recompute w_winrow and w_wincol */
#if 0
    /* Disabled: don't want making the screen smaller make a window larger. */
    if (p_ea)
	win_equal(curwin, FALSE, 'h');
#endif
}