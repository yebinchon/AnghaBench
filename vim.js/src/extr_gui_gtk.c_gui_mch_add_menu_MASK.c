#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* name; int /*<<< orphan*/  tearoff_handle; int /*<<< orphan*/ * submenu_id; int /*<<< orphan*/  id; struct TYPE_5__* parent; } ;
typedef  TYPE_1__ vimmenu_T ;
struct TYPE_6__ {int /*<<< orphan*/  accel_group; int /*<<< orphan*/ * menubar; } ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/  GO_TEAROFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_4__ gui ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  p_go ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC14(vimmenu_T *menu, int idx)
{
    vimmenu_T	*parent;
    GtkWidget	*parent_widget;

    if (menu->name[0] == ']' || FUNC11(menu->name))
    {
	menu->submenu_id = FUNC4();
	return;
    }

    parent = menu->parent;

    if ((parent != NULL && parent->submenu_id == NULL)
	    || !FUNC10(menu->name))
	return;

    parent_widget = (parent != NULL) ? parent->submenu_id : gui.menubar;
    FUNC12(menu, parent_widget);

    /* since the tearoff should always appear first, increment idx */
    if (parent != NULL && !FUNC11(parent->name))
	++idx;

    FUNC7(FUNC2(parent_widget), menu->id, idx);

    menu->submenu_id = FUNC4();

    FUNC6(FUNC0(menu->submenu_id), gui.accel_group);
    FUNC3(FUNC1(menu->id), menu->submenu_id);

    menu->tearoff_handle = FUNC8();
    if (FUNC13(p_go, GO_TEAROFF) != NULL)
	FUNC9(menu->tearoff_handle);
    FUNC5(FUNC0(menu->submenu_id), menu->tearoff_handle);
}