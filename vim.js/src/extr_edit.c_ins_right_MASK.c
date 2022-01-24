#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ ml_line_count; } ;
struct TYPE_8__ {TYPE_1__ b_ml; } ;
struct TYPE_6__ {scalar_t__ lnum; scalar_t__ col; } ;
struct TYPE_7__ {TYPE_2__ w_cursor; void* w_set_curswant; } ;

/* Variables and functions */
 int FDO_HOR ; 
 scalar_t__ KeyTyped ; 
 scalar_t__ NUL ; 
 void* TRUE ; 
 TYPE_4__* curbuf ; 
 TYPE_3__* curwin ; 
 int fdo_flags ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ has_mbyte ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  p_ww ; 
 scalar_t__ revins_chars ; 
 int /*<<< orphan*/  revins_legal ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC10 () ; 

__attribute__((used)) static void
FUNC11()
{
#ifdef FEAT_FOLDING
    if ((fdo_flags & FDO_HOR) && KeyTyped)
	foldOpenCursor();
#endif
    FUNC7();
    if (FUNC1() != NUL
#ifdef FEAT_VIRTUALEDIT
	    || virtual_active()
#endif
	    )
    {
	FUNC5(&curwin->w_cursor);
	curwin->w_set_curswant = TRUE;
#ifdef FEAT_VIRTUALEDIT
	if (virtual_active())
	    oneright();
	else
#endif
	{
#ifdef FEAT_MBYTE
	    if (has_mbyte)
		curwin->w_cursor.col += (*mb_ptr2len)(ml_get_cursor());
	    else
#endif
		++curwin->w_cursor.col;
	}

#ifdef FEAT_RIGHTLEFT
	revins_legal++;
	if (revins_chars)
	    revins_chars--;
#endif
    }
    /* if 'whichwrap' set for cursor in insert mode, may move the
     * cursor to the next line */
    else if (FUNC9(p_ww, ']') != NULL
	    && curwin->w_cursor.lnum < curbuf->b_ml.ml_line_count)
    {
	FUNC5(&curwin->w_cursor);
	curwin->w_set_curswant = TRUE;
	++curwin->w_cursor.lnum;
	curwin->w_cursor.col = 0;
    }
    else
	FUNC8();
}