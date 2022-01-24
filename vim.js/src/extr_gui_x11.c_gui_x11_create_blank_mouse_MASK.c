#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  XGCValues ;
typedef  int /*<<< orphan*/  XColor ;
struct TYPE_2__ {int /*<<< orphan*/  norm_pixel; int /*<<< orphan*/  dpy; int /*<<< orphan*/  wid; } ;
typedef  int /*<<< orphan*/  Pixmap ;
typedef  int /*<<< orphan*/  GC ;
typedef  int /*<<< orphan*/  Cursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ gui ; 

__attribute__((used)) static Cursor
FUNC5()
{
    Pixmap blank_pixmap = FUNC1(gui.dpy, gui.wid, 1, 1, 1);
    GC gc = FUNC0(gui.dpy, blank_pixmap, (unsigned long)0, (XGCValues*)0);
    FUNC3(gui.dpy, blank_pixmap, gc, 0, 0);
    FUNC4(gui.dpy, gc);
    return FUNC2(gui.dpy, blank_pixmap, blank_pixmap,
	    (XColor*)&gui.norm_pixel, (XColor*)&gui.norm_pixel, 0, 0);
}