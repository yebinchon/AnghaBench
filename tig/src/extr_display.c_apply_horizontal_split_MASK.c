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
struct view {scalar_t__ height; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ MIN_VIEW_HEIGHT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  opt_split_view_height ; 

__attribute__((used)) static void
FUNC3(struct view *base, struct view *view)
{
	view->width   = base->width;
	view->height  = FUNC2(opt_split_view_height, base->height);
	view->height  = FUNC0(view->height, MIN_VIEW_HEIGHT);
	view->height  = FUNC1(view->height, base->height - MIN_VIEW_HEIGHT);
	base->height -= view->height;
}