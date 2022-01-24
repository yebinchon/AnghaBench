#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  starting; } ;

/* Variables and functions */
 int Columns ; 
 int Rows ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  exiting ; 
 TYPE_1__ gui ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3()
{
    int		old_Rows = Rows;
    int		old_Columns = Columns;

    if (!exiting
#ifdef FEAT_GUI
	    /* Do not get the size when executing a shell command during
	     * startup. */
	    && !gui.starting
#endif
	    )
    {
	(void)FUNC2();
	FUNC0();
	if (old_Rows != Rows || old_Columns != Columns)
	    FUNC1();
    }
}