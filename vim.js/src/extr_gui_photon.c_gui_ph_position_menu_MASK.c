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
struct TYPE_3__ {int priority; } ;
typedef  TYPE_1__ vimmenu_T ;
typedef  int /*<<< orphan*/  PtWidget_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Pt_ARG_POINTER ; 

__attribute__((used)) static void
FUNC5(PtWidget_t *widget, int priority)
{
    PtWidget_t	*traverse;
    vimmenu_T	*menu;

    traverse = FUNC2(FUNC4(widget));

    /* Iterate through the list of widgets in traverse, until
     * we find the position we want to insert our widget into */
    /* TODO: traverse from front to back, possible speedup? */
    while (traverse != NULL)
    {
	FUNC0(traverse, Pt_ARG_POINTER, &menu, 0);

	if (menu != NULL &&
		priority < menu->priority &&
		widget != traverse)
	{
	    /* Insert the widget before the current traverse widget */
	    FUNC3(widget, traverse, 1);
	    return;
	}

	traverse = FUNC1(traverse);
    }
}