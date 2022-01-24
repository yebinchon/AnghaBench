#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* data; struct TYPE_13__* next; } ;
struct TYPE_12__ {TYPE_4__* children; int /*<<< orphan*/  bin_window; } ;
struct TYPE_11__ {int /*<<< orphan*/  widget; } ;
struct TYPE_10__ {int /*<<< orphan*/  window; } ;
typedef  TYPE_1__ GtkWidget ;
typedef  TYPE_2__ GtkFormChild ;
typedef  TYPE_3__ GtkForm ;
typedef  TYPE_4__ GList ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  GTK_MAPPED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(GtkWidget *widget)
{
    GList *tmp_list;
    GtkForm *form;

    FUNC5(FUNC1(widget));

    form = FUNC0(widget);

    FUNC3(widget, GTK_MAPPED);

    FUNC6(widget->window);
    FUNC6(form->bin_window);

    for (tmp_list = form->children; tmp_list; tmp_list = tmp_list->next)
    {
	GtkFormChild *child = tmp_list->data;

	if (FUNC4(child->widget)
		&& !FUNC2(child->widget))
	    FUNC7(child->widget);
    }
}