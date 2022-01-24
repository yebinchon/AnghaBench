#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ol_list; } ;
typedef  TYPE_1__ objlist_t ;
typedef  TYPE_1__ objlist_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(objlist_t *list)
{
	for (objlist_node_t *n = FUNC2(&list->ol_list);
	    n != NULL; n = FUNC2(&list->ol_list)) {
		FUNC0(n, sizeof (*n));
	}
	FUNC1(&list->ol_list);
	FUNC0(list, sizeof (*list));
}