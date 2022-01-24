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
 scalar_t__ Columns ; 
 scalar_t__ EXMODE_NORMAL ; 
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  cmdline_row ; 
 scalar_t__ cmdmsg_rl ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ exmode_active ; 
 scalar_t__ full_screen ; 
 int /*<<< orphan*/ * keep_msg ; 
 scalar_t__ lines_left ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ msg_col ; 
 int /*<<< orphan*/  msg_didany ; 
 int msg_didout ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  msg_row ; 
 int /*<<< orphan*/  msg_scroll ; 
 scalar_t__ msg_silent ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int need_clr_eos ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6()
{
    int		did_return = FALSE;

    if (!msg_silent)
    {
	FUNC5(keep_msg);
	keep_msg = NULL;		/* don't display old message now */
    }

#ifdef FEAT_EVAL
    if (need_clr_eos)
    {
	/* Halfway an ":echo" command and getting an (error) message: clear
	 * any text from the command. */
	need_clr_eos = FALSE;
	msg_clr_eos();
    }
#endif

    if (!msg_scroll && full_screen)	/* overwrite last message */
    {
	msg_row = cmdline_row;
	msg_col =
#ifdef FEAT_RIGHTLEFT
	    cmdmsg_rl ? Columns - 1 :
#endif
	    0;
    }
    else if (msg_didout)		    /* start message on next line */
    {
	FUNC2('\n');
	did_return = TRUE;
	if (exmode_active != EXMODE_NORMAL)
	    cmdline_row = msg_row;
    }
    if (!msg_didany || lines_left < 0)
	FUNC3();
    if (msg_silent == 0)
    {
	msg_didout = FALSE;		    /* no output on current line yet */
	FUNC0();
    }

    /* when redirecting, may need to start a new line. */
    if (!did_return)
	FUNC4((char_u *)"\n", -1);
}