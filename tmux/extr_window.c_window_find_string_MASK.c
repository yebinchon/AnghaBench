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
typedef  int u_int ;
struct window_pane {int dummy; } ;
struct window {int sx; int sy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 struct window_pane* FUNC1 (struct window*,int,int) ; 

struct window_pane *
FUNC2(struct window *w, const char *s)
{
	u_int	x, y;

	x = w->sx / 2;
	y = w->sy / 2;

	if (FUNC0(s, "top") == 0)
		y = 0;
	else if (FUNC0(s, "bottom") == 0)
		y = w->sy - 1;
	else if (FUNC0(s, "left") == 0)
		x = 0;
	else if (FUNC0(s, "right") == 0)
		x = w->sx - 1;
	else if (FUNC0(s, "top-left") == 0) {
		x = 0;
		y = 0;
	} else if (FUNC0(s, "top-right") == 0) {
		x = w->sx - 1;
		y = 0;
	} else if (FUNC0(s, "bottom-left") == 0) {
		x = 0;
		y = w->sy - 1;
	} else if (FUNC0(s, "bottom-right") == 0) {
		x = w->sx - 1;
		y = w->sy - 1;
	} else
		return (NULL);

	return (FUNC1(w, x, y));
}