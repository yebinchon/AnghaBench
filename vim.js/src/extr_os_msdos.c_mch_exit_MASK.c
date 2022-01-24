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
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TMODE_COOK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void
FUNC9(int r)
{
    FUNC7(TMODE_COOK);
    FUNC8();
    FUNC5(FALSE);	    /* restore interrupts */
#ifdef DJGPP
    set_sys_cursor();
#endif
    /* Somehow outputting CR-NL causes the original colors to be restored */
    FUNC3('\r');
    FUNC3('\n');
    FUNC4();
    FUNC2(TRUE);		    /* remove all memfiles */
#ifdef MCH_CURSOR_SHAPE
    mch_restore_cursor_shape(TRUE);
#endif
    FUNC0(r);
}