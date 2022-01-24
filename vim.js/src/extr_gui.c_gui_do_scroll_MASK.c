#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ lnum; } ;
struct TYPE_11__ {scalar_t__ w_topline; int w_topfill; scalar_t__ w_scbind_pos; scalar_t__ w_redr_type; TYPE_2__ w_cursor; scalar_t__ w_lines_valid; int /*<<< orphan*/  w_buffer; int /*<<< orphan*/  w_curswant; } ;
typedef  TYPE_1__ win_T ;
typedef  TYPE_2__ pos_T ;
typedef  scalar_t__ linenr_T ;
struct TYPE_13__ {scalar_t__ dragged_sb; int /*<<< orphan*/ * dragged_wp; } ;

/* Variables and functions */
 int FALSE ; 
 int NOT_VALID ; 
 scalar_t__ SBAR_NONE ; 
 int VALID ; 
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curbuf ; 
 int current_scrollbar ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* curwin ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__,TYPE_2__) ; 
 TYPE_1__* firstwin ; 
 TYPE_4__ gui ; 
 scalar_t__ p_so ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ scrollbar_value ; 
 int /*<<< orphan*/  FUNC6 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

int
FUNC11()
{
    win_T	*wp, *save_wp;
    int		i;
    long	nlines;
    pos_T	old_cursor;
    linenr_T	old_topline;
#ifdef FEAT_DIFF
    int		old_topfill;
#endif

    for (wp = firstwin, i = 0; i < current_scrollbar; wp = FUNC0(wp), i++)
	if (wp == NULL)
	    break;
    if (wp == NULL)
	/* Couldn't find window */
	return FALSE;

    /*
     * Compute number of lines to scroll.  If zero, nothing to do.
     */
    nlines = (long)scrollbar_value + 1 - (long)wp->w_topline;
    if (nlines == 0)
	return FALSE;

    save_wp = curwin;
    old_topline = wp->w_topline;
#ifdef FEAT_DIFF
    old_topfill = wp->w_topfill;
#endif
    old_cursor = wp->w_cursor;
    curwin = wp;
    curbuf = wp->w_buffer;
    if (nlines < 0)
	FUNC6(-nlines, gui.dragged_wp == NULL);
    else
	FUNC7(nlines, gui.dragged_wp == NULL);
    /* Reset dragged_wp after using it.  "dragged_sb" will have been reset for
     * the mouse-up event already, but we still want it to behave like when
     * dragging.  But not the next click in an arrow. */
    if (gui.dragged_sb == SBAR_NONE)
	gui.dragged_wp = NULL;

    if (old_topline != wp->w_topline
#ifdef FEAT_DIFF
	    || old_topfill != wp->w_topfill
#endif
	    )
    {
	if (p_so != 0)
	{
	    FUNC2();		/* fix window for 'so' */
	    FUNC9();		/* avoid up/down jump */
	}
	if (old_cursor.lnum != wp->w_cursor.lnum)
	    FUNC1(wp->w_curswant);
#ifdef FEAT_SCROLLBIND
	wp->w_scbind_pos = wp->w_topline;
#endif
    }

    /* Make sure wp->w_leftcol and wp->w_skipcol are correct. */
    FUNC10();

    curwin = save_wp;
    curbuf = save_wp->w_buffer;

    /*
     * Don't call updateWindow() when nothing has changed (it will overwrite
     * the status line!).
     */
    if (old_topline != wp->w_topline
	    || wp->w_redr_type != 0
#ifdef FEAT_DIFF
	    || old_topfill != wp->w_topfill
#endif
	    )
    {
	int type = VALID;

#ifdef FEAT_INS_EXPAND
	if (pum_visible())
	{
	    type = NOT_VALID;
	    wp->w_lines_valid = 0;
	}
#endif
	/* Don't set must_redraw here, it may cause the popup menu to
	 * disappear when losing focus after a scrollbar drag. */
	if (wp->w_redr_type < type)
	    wp->w_redr_type = type;
	FUNC8(wp);   /* update window, status line, and cmdline */
    }

#ifdef FEAT_INS_EXPAND
    /* May need to redraw the popup menu. */
    if (pum_visible())
	pum_redraw();
#endif

    return (wp == curwin && !FUNC3(curwin->w_cursor, old_cursor));
}