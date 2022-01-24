#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  (* unrealize ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_9__ {struct TYPE_9__* next; TYPE_1__* data; } ;
struct TYPE_8__ {int /*<<< orphan*/ * bin_window; TYPE_3__* children; } ;
struct TYPE_7__ {int /*<<< orphan*/ * window; int /*<<< orphan*/  widget; } ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  TYPE_1__ GtkFormChild ;
typedef  TYPE_2__ GtkForm ;
typedef  TYPE_3__ GList ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gtk_form_child_map ; 
 int /*<<< orphan*/  gtk_form_child_unmap ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  parent_class ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(GtkWidget *widget)
{
    GList *tmp_list;
    GtkForm *form;

    FUNC5(FUNC1(widget));

    form = FUNC0(widget);

    tmp_list = form->children;

    FUNC7(form->bin_window, NULL);
    FUNC6(form->bin_window);
    form->bin_window = NULL;

    while (tmp_list)
    {
	GtkFormChild *child = tmp_list->data;

	if (child->window != NULL)
	{
	    FUNC8(FUNC2(child->widget),
					  FUNC3(gtk_form_child_map),
					  child);
	    FUNC8(FUNC2(child->widget),
					  FUNC3(gtk_form_child_unmap),
					  child);

	    FUNC7(child->window, NULL);
	    FUNC6(child->window);

	    child->window = NULL;
	}

	tmp_list = tmp_list->next;
    }

    if (FUNC4 (parent_class)->unrealize)
	 (* FUNC4 (parent_class)->unrealize) (widget);
}