#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lnum; } ;
typedef  TYPE_1__ pos_T ;
typedef  int /*<<< orphan*/  colnr_T ;
typedef  int /*<<< orphan*/  char_u ;
struct TYPE_6__ {int /*<<< orphan*/  b_p_inde; } ;
struct TYPE_5__ {int w_set_curswant; int /*<<< orphan*/  w_curswant; TYPE_1__ w_cursor; } ;

/* Variables and functions */
 int INSERT ; 
 int /*<<< orphan*/  OPT_LOCAL ; 
 int State ; 
 int /*<<< orphan*/  VV_LNUM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_3__* curbuf ; 
 TYPE_2__* curwin ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  sandbox ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  textlock ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC5()
{
    int		indent;
    pos_T	save_pos;
    colnr_T	save_curswant;
    int		save_set_curswant;
    int		save_State;
    int		use_sandbox = FUNC4((char_u *)"indentexpr",
								   OPT_LOCAL);

    /* Save and restore cursor position and curswant, in case it was changed
     * via :normal commands */
    save_pos = curwin->w_cursor;
    save_curswant = curwin->w_curswant;
    save_set_curswant = curwin->w_set_curswant;
    FUNC3(VV_LNUM, curwin->w_cursor.lnum);
    if (use_sandbox)
	++sandbox;
    ++textlock;
    indent = FUNC1(curbuf->b_p_inde);
    if (use_sandbox)
	--sandbox;
    --textlock;

    /* Restore the cursor position so that 'indentexpr' doesn't need to.
     * Pretend to be in Insert mode, allow cursor past end of line for "o"
     * command. */
    save_State = State;
    State = INSERT;
    curwin->w_cursor = save_pos;
    curwin->w_curswant = save_curswant;
    curwin->w_set_curswant = save_set_curswant;
    FUNC0();
    State = save_State;

    /* If there is an error, just keep the current indent. */
    if (indent < 0)
	indent = FUNC2();

    return indent;
}