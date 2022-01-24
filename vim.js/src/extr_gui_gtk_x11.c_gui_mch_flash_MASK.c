#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int norm_pixel; int back_pixel; scalar_t__ visibility; scalar_t__ border_offset; TYPE_3__* drawarea; } ;
struct TYPE_8__ {int pixel; } ;
struct TYPE_7__ {int pixel; } ;
struct TYPE_10__ {int /*<<< orphan*/  function; TYPE_2__ background; TYPE_1__ foreground; } ;
struct TYPE_9__ {int /*<<< orphan*/ * window; } ;
typedef  TYPE_4__ GdkGCValues ;
typedef  int /*<<< orphan*/  GdkGC ;

/* Variables and functions */
 scalar_t__ Columns ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int GDK_GC_BACKGROUND ; 
 int GDK_GC_FOREGROUND ; 
 int GDK_GC_FUNCTION ; 
 scalar_t__ GDK_VISIBILITY_UNOBSCURED ; 
 int /*<<< orphan*/  GDK_XOR ; 
 scalar_t__ Rows ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 TYPE_5__ gui ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (long,int /*<<< orphan*/ ) ; 

void
FUNC8(int msec)
{
    GdkGCValues	values;
    GdkGC	*invert_gc;

    if (gui.drawarea->window == NULL)
	return;

    values.foreground.pixel = gui.norm_pixel ^ gui.back_pixel;
    values.background.pixel = gui.norm_pixel ^ gui.back_pixel;
    values.function = GDK_XOR;
    invert_gc = FUNC4(gui.drawarea->window,
				       &values,
				       GDK_GC_FOREGROUND |
				       GDK_GC_BACKGROUND |
				       GDK_GC_FUNCTION);
    FUNC5(invert_gc,
			 gui.visibility != GDK_VISIBILITY_UNOBSCURED);
    /*
     * Do a visual beep by changing back and forth in some undetermined way,
     * the foreground and background colors.  This is due to the fact that
     * there can't be really any prediction about the effects of XOR on
     * arbitrary X11 servers. However this seems to be enough for what we
     * intend it to do.
     */
    FUNC2(gui.drawarea->window, invert_gc,
		       TRUE,
		       0, 0,
		       FUNC0((int)Columns) + gui.border_offset,
		       FUNC1((int)Rows) + gui.border_offset);

    FUNC6();
    FUNC7((long)msec, TRUE);	/* wait so many msec */

    FUNC2(gui.drawarea->window, invert_gc,
		       TRUE,
		       0, 0,
		       FUNC0((int)Columns) + gui.border_offset,
		       FUNC1((int)Rows) + gui.border_offset);

    FUNC3(invert_gc);
}