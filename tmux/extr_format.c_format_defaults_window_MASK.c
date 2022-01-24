#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct window {int id; int name; int sx; int sy; int flags; int /*<<< orphan*/  activity_time; } ;
struct format_tree {struct window* w; } ;

/* Variables and functions */
 int WINDOW_ZOOMED ; 
 int /*<<< orphan*/  FUNC0 (struct format_tree*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct format_tree*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct format_tree*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  format_cb_window_layout ; 
 int /*<<< orphan*/  format_cb_window_visible_layout ; 
 int FUNC3 (struct window*) ; 

void
FUNC4(struct format_tree *ft, struct window *w)
{
	ft->w = w;

	FUNC2(ft, "window_activity", &w->activity_time);
	FUNC0(ft, "window_id", "@%u", w->id);
	FUNC0(ft, "window_name", "%s", w->name);
	FUNC0(ft, "window_width", "%u", w->sx);
	FUNC0(ft, "window_height", "%u", w->sy);
	FUNC1(ft, "window_layout", format_cb_window_layout);
	FUNC1(ft, "window_visible_layout",
	    format_cb_window_visible_layout);
	FUNC0(ft, "window_panes", "%u", FUNC3(w));
	FUNC0(ft, "window_zoomed_flag", "%d",
	    !!(w->flags & WINDOW_ZOOMED));
}