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
typedef  int /*<<< orphan*/  pos_T ;
struct TYPE_4__ {int /*<<< orphan*/  w_cursor; } ;
struct TYPE_3__ {int /*<<< orphan*/ * tp_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORWARD ; 
 int MOD_MASK_CTRL ; 
 scalar_t__ OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  can_cindent ; 
 TYPE_2__* curwin ; 
 TYPE_1__* first_tabpage ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int mod_mask ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5()
{
    pos_T	tpos;

    FUNC3();

#ifdef FEAT_WINDOWS
    if (mod_mask & MOD_MASK_CTRL)
    {
	/* <C-PageDown>: tab page forward */
	if (first_tabpage->tp_next != NULL)
	{
	    start_arrow(&curwin->w_cursor);
	    goto_tabpage(0);
	}
	return;
    }
#endif

    tpos = curwin->w_cursor;
    if (FUNC1(FORWARD, 1L) == OK)
    {
	FUNC2(&tpos);
#ifdef FEAT_CINDENT
	can_cindent = TRUE;
#endif
    }
    else
	FUNC4();
}