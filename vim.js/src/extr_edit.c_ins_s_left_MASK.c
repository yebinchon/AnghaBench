#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int lnum; scalar_t__ col; } ;
struct TYPE_4__ {int /*<<< orphan*/  w_set_curswant; TYPE_1__ w_cursor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FDO_HOR ; 
 scalar_t__ KeyTyped ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* curwin ; 
 int fdo_flags ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5()
{
#ifdef FEAT_FOLDING
    if ((fdo_flags & FDO_HOR) && KeyTyped)
	foldOpenCursor();
#endif
    FUNC3();
    if (curwin->w_cursor.lnum > 1 || curwin->w_cursor.col > 0)
    {
	FUNC2(&curwin->w_cursor);
	(void)FUNC0(1L, FALSE, FALSE);
	curwin->w_set_curswant = TRUE;
    }
    else
	FUNC4();
}