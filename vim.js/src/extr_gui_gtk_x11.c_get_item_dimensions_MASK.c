#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ is_floating; } ;
struct TYPE_13__ {int height; int width; } ;
struct TYPE_14__ {TYPE_1__ allocation; } ;
typedef  TYPE_2__ GtkWidget ;
typedef  scalar_t__ GtkOrientation ;
typedef  TYPE_3__ BonoboDockItem ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_2__*) ; 
 scalar_t__ BONOBO_TYPE_DOCK_ITEM ; 
 scalar_t__ GTK_ORIENTATION_HORIZONTAL ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 TYPE_2__* FUNC5 (TYPE_2__*) ; 
 scalar_t__ using_gnome ; 

__attribute__((used)) static int
FUNC6(GtkWidget *widget, GtkOrientation orientation)
{
    GtkOrientation item_orientation = GTK_ORIENTATION_HORIZONTAL;

#ifdef FEAT_GUI_GNOME
    if (using_gnome && widget != NULL)
    {
	GtkWidget *parent;
	BonoboDockItem *dockitem;

	parent	 = gtk_widget_get_parent(widget);
	if (G_TYPE_FROM_INSTANCE(parent) == BONOBO_TYPE_DOCK_ITEM)
	{
	    /* Only menu & toolbar are dock items.  Could tabline be?
	     * Seem to be only the 2 defined in GNOME */
	    widget = parent;
	    dockitem = BONOBO_DOCK_ITEM(widget);

	    if (dockitem == NULL || dockitem->is_floating)
		return 0;
	    item_orientation = bonobo_dock_item_get_orientation(dockitem);
	}
    }
#endif
    if (widget != NULL
	    && item_orientation == orientation
	    && FUNC1(widget)
	    && FUNC2(widget))
    {
	if (orientation == GTK_ORIENTATION_HORIZONTAL)
	    return widget->allocation.height;
	else
	    return widget->allocation.width;
    }
    return 0;
}