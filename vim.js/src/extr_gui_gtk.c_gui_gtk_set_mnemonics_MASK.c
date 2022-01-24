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
struct TYPE_3__ {int /*<<< orphan*/  label; int /*<<< orphan*/  name; int /*<<< orphan*/ * id; struct TYPE_3__* next; } ;
typedef  TYPE_1__ vimmenu_T ;
typedef  int /*<<< orphan*/  char_u ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* root_menu ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(int enable)
{
    vimmenu_T	*menu;
    char_u	*name;

    for (menu = root_menu; menu != NULL; menu = menu->next)
    {
	if (menu->id == NULL)
	    continue;

	name = FUNC2(menu->name, enable);
	FUNC1(FUNC0(menu->label),
					 (const char *)name);
	FUNC3(name);
    }
}