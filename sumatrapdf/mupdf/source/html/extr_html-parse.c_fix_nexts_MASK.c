#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct TYPE_3__* next; struct TYPE_3__* up; struct TYPE_3__* down; } ;
typedef  TYPE_1__ fz_html_box ;

/* Variables and functions */

__attribute__((used)) static void
FUNC0(fz_html_box *box)
{
	while (box)
	{
		if (box->down)
			FUNC0(box->down);
		if (box->next && box->next->up == box)
		{
			box->next = NULL;
			break;
		}
		box = box->next;
	}
}