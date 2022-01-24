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
struct window {int dummy; } ;
struct layout_cell {int dummy; } ;

/* Variables and functions */
 int PANE_STATUS_BOTTOM ; 
 int PANE_STATUS_TOP ; 
 int FUNC0 (struct window*,struct layout_cell*) ; 
 int FUNC1 (struct window*,struct layout_cell*) ; 

__attribute__((used)) static int
FUNC2(struct window *w, struct layout_cell *lc, int status)
{
	if (status == PANE_STATUS_TOP)
		return (FUNC1(w, lc));
	if (status == PANE_STATUS_BOTTOM)
		return (FUNC0(w, lc));
	return (0);
}