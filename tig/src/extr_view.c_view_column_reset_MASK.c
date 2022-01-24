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
struct view_column {scalar_t__ width; struct view_column* next; } ;
struct view {struct view_column* columns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct view*,int) ; 

void
FUNC1(struct view *view)
{
	struct view_column *column;

	FUNC0(view, true);
	for (column = view->columns; column; column = column->next)
		column->width = 0;
}