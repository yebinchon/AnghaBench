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
typedef  int /*<<< orphan*/  char_u ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ CTRL_V_STR ; 
 int /*<<< orphan*/  Ctrl_V ; 
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  revins_chars ; 
 int /*<<< orphan*/  revins_legal ; 

__attribute__((used)) static void
FUNC10()
{
    int		c;
    int		did_putchar = FALSE;

    /* may need to redraw when no more chars available now */
    FUNC7(FALSE);

    if (FUNC9() && !FUNC2())
    {
	FUNC4('^', TRUE);
	did_putchar = TRUE;
    }
    FUNC0((char_u *)CTRL_V_STR);	/* CTRL-V */

#ifdef FEAT_CMDL_INFO
    add_to_showcmd_c(Ctrl_V);
#endif

    c = FUNC6();
    if (did_putchar)
	/* when the line fits in 'columns' the '^' is at the start of the next
	 * line and will not removed by the redraw */
	FUNC5();
#ifdef FEAT_CMDL_INFO
    clear_showcmd();
#endif
    FUNC8(c, FALSE, TRUE);
#ifdef FEAT_RIGHTLEFT
    revins_chars++;
    revins_legal++;
#endif
}