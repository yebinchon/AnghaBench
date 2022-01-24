#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * id; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ vimmenu_T ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(vimmenu_T *menu, int grey)
{
    if (menu->id == NULL)
	return;

    if (FUNC4(menu->name))
	grey = TRUE;

    FUNC2(menu, FALSE);
    /* Be clever about bitfields versus true booleans here! */
    if (!FUNC0(menu->id) == !grey)
    {
	FUNC1(menu->id, !grey);
	FUNC3();
    }
}