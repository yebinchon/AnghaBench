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
 scalar_t__ Rows ; 
 scalar_t__* T_CD ; 
 scalar_t__* T_CE ; 
 scalar_t__ cmdmsg_rl ; 
 scalar_t__ full_screen ; 
 int msg_col ; 
 int msg_row ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,char,char,int /*<<< orphan*/ ) ; 

void
FUNC3()
{
    if (FUNC0())
    {
	if (full_screen)	/* only when termcap codes are valid */
	{
	    if (*T_CD)
		FUNC1(T_CD);	/* clear to end of display */
	    else if (*T_CE)
		FUNC1(T_CE);	/* clear to end of line */
	}
    }
    else
    {
#ifdef FEAT_RIGHTLEFT
	if (cmdmsg_rl)
	{
	    screen_fill(msg_row, msg_row + 1, 0, msg_col + 1, ' ', ' ', 0);
	    screen_fill(msg_row + 1, (int)Rows, 0, (int)Columns, ' ', ' ', 0);
	}
	else
#endif
	{
	    FUNC2(msg_row, msg_row + 1, msg_col, (int)Columns,
								 ' ', ' ', 0);
	    FUNC2(msg_row + 1, (int)Rows, 0, (int)Columns, ' ', ' ', 0);
	}
    }
}