#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int gint ;
struct TYPE_19__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_24__ {TYPE_1__ requisition; } ;
struct TYPE_23__ {int /*<<< orphan*/  event_mask; int /*<<< orphan*/  colormap; int /*<<< orphan*/  visual; int /*<<< orphan*/  wclass; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  window_type; } ;
struct TYPE_22__ {int /*<<< orphan*/ * bin_window; } ;
struct TYPE_21__ {TYPE_6__* widget; int /*<<< orphan*/ * window; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_20__ {int /*<<< orphan*/  style; } ;
typedef  TYPE_2__ GtkWidget ;
typedef  TYPE_3__ GtkFormChild ;
typedef  TYPE_4__ GtkForm ;
typedef  TYPE_5__ GdkWindowAttr ;

/* Variables and functions */
 int /*<<< orphan*/  GDK_EXPOSURE_MASK ; 
 int /*<<< orphan*/  GDK_INPUT_OUTPUT ; 
 int GDK_WA_COLORMAP ; 
 int GDK_WA_VISUAL ; 
 int GDK_WA_X ; 
 int GDK_WA_Y ; 
 int /*<<< orphan*/  GDK_WINDOW_CHILD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_STATE_NORMAL ; 
 TYPE_2__* FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  gtk_form_child_map ; 
 int /*<<< orphan*/  gtk_form_child_unmap ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(GtkForm *form, GtkFormChild *child)
{
    if (child->window != NULL)
	return; /* been there, done that */

    if (FUNC3(child->widget))
    {
	GtkWidget	*widget;
	GdkWindowAttr	attributes;
	gint		attributes_mask;

	widget = FUNC2(form);

	attributes.window_type = GDK_WINDOW_CHILD;
	attributes.x = child->x;
	attributes.y = child->y;
	attributes.width = child->widget->requisition.width;
	attributes.height = child->widget->requisition.height;
	attributes.wclass = GDK_INPUT_OUTPUT;
	attributes.visual = FUNC11(widget);
	attributes.colormap = FUNC10(widget);
	attributes.event_mask = GDK_EXPOSURE_MASK;

	attributes_mask = GDK_WA_X | GDK_WA_Y | GDK_WA_VISUAL | GDK_WA_COLORMAP;
	child->window = FUNC5(form->bin_window,
				       &attributes, attributes_mask);
	FUNC6(child->window, widget);

	FUNC9(widget->style,
				 child->window,
				 GTK_STATE_NORMAL);

	FUNC12(child->widget, child->window);
	FUNC7(child->window, TRUE);
	/*
	 * Install signal handlers to map/unmap child->window
	 * alongside with the actual widget.
	 */
	FUNC8(FUNC0(child->widget), "map",
			   FUNC1(&gtk_form_child_map), child);
	FUNC8(FUNC0(child->widget), "unmap",
			   FUNC1(&gtk_form_child_unmap), child);
    }
    else if (!FUNC4(child->widget))
    {
	FUNC12(child->widget, form->bin_window);
    }
}