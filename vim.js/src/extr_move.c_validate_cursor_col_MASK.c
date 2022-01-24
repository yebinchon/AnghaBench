#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int colnr_T ;
struct TYPE_3__ {int w_valid; int w_virtcol; int w_wcol; scalar_t__ w_leftcol; scalar_t__ w_p_wrap; } ;

/* Variables and functions */
 int VALID_WCOL ; 
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* curwin ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4()
{
    colnr_T off;
    colnr_T col;
    int     width;

    FUNC3();
    if (!(curwin->w_valid & VALID_WCOL))
    {
	col = curwin->w_virtcol;
	off = FUNC1();
	col += off;
	width = FUNC0(curwin) - off + FUNC2();

	/* long line wrapping, adjust curwin->w_wrow */
	if (curwin->w_p_wrap
		&& col >= (colnr_T)FUNC0(curwin)
		&& width > 0)
	    /* use same formula as what is used in curs_columns() */
	    col -= ((col - FUNC0(curwin)) / width + 1) * width;
	if (col > (int)curwin->w_leftcol)
	    col -= curwin->w_leftcol;
	else
	    col = 0;
	curwin->w_wcol = col;

	curwin->w_valid |= VALID_WCOL;
    }
}