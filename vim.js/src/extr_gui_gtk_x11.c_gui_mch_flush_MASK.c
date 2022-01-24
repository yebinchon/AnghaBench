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
struct TYPE_4__ {TYPE_1__* drawarea; int /*<<< orphan*/ * mainwin; } ;
struct TYPE_3__ {int /*<<< orphan*/ * window; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__ gui ; 

void
FUNC5(void)
{
#ifdef HAVE_GTK_MULTIHEAD
    if (gui.mainwin != NULL && GTK_WIDGET_REALIZED(gui.mainwin))
	gdk_display_sync(gtk_widget_get_display(gui.mainwin));
#else
    FUNC2(); /* historical misnomer: calls XSync(), not XFlush() */
#endif
    /* This happens to actually do what gui_mch_flush() is supposed to do,
     * according to the comment above. */
    if (gui.drawarea != NULL && gui.drawarea->window != NULL)
	FUNC3(gui.drawarea->window, FALSE);
}