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
typedef  char char_u ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SHELL_COOKED ; 
 int SHELL_SILENT ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 scalar_t__ FUNC1 (char*) ; 
 int TMODE_COOK ; 
 int TMODE_RAW ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC2 (scalar_t__) ; 
 int cur_tmode ; 
 int /*<<< orphan*/  emsg_silent ; 
 int /*<<< orphan*/  FUNC3 (long) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* p_sh ; 
 char* p_shcf ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*,char*,char*) ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

int
FUNC14(
    char_u	*cmd,
    int		options)
{
    int		x;
    int		tmode = cur_tmode;
#ifndef DJGPP
    char_u	*newcmd;
#endif

    FUNC5();
#ifdef DJGPP
    set_sys_cursor();
#endif

    if (options & SHELL_COOKED)
	FUNC9(TMODE_COOK);	/* set to normal mode */
    FUNC6(FALSE);	/* restore interrupts */

#ifdef DJGPP
    /* ignore signals while external command is running */
    signal(SIGINT, SIG_IGN);
    signal(SIGHUP, SIG_IGN);
    signal(SIGQUIT, SIG_IGN);
    signal(SIGTERM, SIG_IGN);
#endif
    if (cmd == NULL)
	x = FUNC12((char *)p_sh);
    else
    {
#ifdef DJGPP
	/*
	 * Use 'shell' for system().
	 */
	setenv("SHELL", (char *)p_sh, 1);
	x = system(cmd);
#else
	/* we use "command" to start the shell, slow but easy */
	newcmd = FUNC2(FUNC1(p_sh) + FUNC1(p_shcf) + FUNC1(cmd) + 3);
	if (newcmd == NULL)
	    x = -1;
	else
	{
	    FUNC11((char *)newcmd, "%s %s %s", p_sh, p_shcf, cmd);
	    x = FUNC12((char *)newcmd);
	    FUNC13(newcmd);
	}
#endif
    }
#ifdef DJGPP
    signal(SIGINT, SIG_DFL);
    signal(SIGHUP, SIG_DFL);
    signal(SIGQUIT, SIG_DFL);
    signal(SIGTERM, SIG_DFL);
#endif
    if (tmode == TMODE_RAW)
	FUNC9(TMODE_RAW);	/* set to raw mode */
    FUNC6(TRUE);	/* catch interrupts */

    if (x && !(options & SHELL_SILENT) && !emsg_silent)
    {
	FUNC0("\nshell returned ");
	FUNC3((long)x);
	FUNC4('\n');
    }

    return x;
}